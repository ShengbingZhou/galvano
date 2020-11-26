using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Imaging;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;
using TotalPhase;

namespace Galvano
{
    public partial class Form1 : Form
    {
        UInt32 majorTestLoops = 5;
        UInt32 minorTestLoops = 30;
        Timer timer = new Timer();
        Random rand = new Random();

        UInt16[] bigToggleData;
        UInt16[] smallToggleData;
        UInt16[] sineData;
        UInt16[] limit = new UInt16[2];

        bool randomTestEnabled = false;
        bool bigToggleTestEnabled = false;
        bool smallToggleTestEnabled = false;
        bool targetTestEnabled = false;
        bool sineTestEnabled = false;
        public int aardvarkHandle = 0;

        public Form1()
        {
            InitializeComponent();

            limit[0] = 0; limit[1] = 65535;
            TbLimit0.Text = limit[0].ToString() + " (-10V)";
            TbLimit1.Text = limit[1].ToString() + " (+10V)";

            TbKp.Text = "950";
            TbKi.Text = "15";
            TbKd.Text = "48000";
            TbISaturation.Text = "5000";
            TbMaxDacSwing.Text = "2500";

            timer.Interval = 10;
            timer.Tick += RunTimer_Tick;
            PosChart.ChartAreas[0].AxisY.Maximum = 65536;
            PosChart.Series[0].XAxisType = AxisType.Secondary;
            PosChart.Series[0].BorderWidth = 2;
            PosChart.Series[1].BorderWidth = 2;
            BtnConnectDongle.Click += BtnConnectDongle_Click;
            BtnCalibration.Click += BtnCalibration_Click;
            TbTarget.Text = "45000";
            BtnTargetTest.Text = "Start Target Test";
            BtnTargetTest.Click += BtnTargetTest_Click;
            BtnStartRandTest.Text = "Start Random Test";
            BtnStartRandTest.Click += BtnStartRandomTest_Click;
            BtnStartBigToggleTest.Text = "Start Big Toggle Test";
            BtnStartBigToggleTest.Click += BtnStartBigToggleTest_Click;
            BtnStartSmallToggleTest.Text = "Start Small Toggle Test";
            BtnStartSmallToggleTest.Click += BtnStartSmallToggleTest_Click;
            BtnSineWaveTest.Text = "Start Sine Test";
            BtnSineWaveTest.Click += BtnSineWaveTest_Click;
            PanelOps.Enabled = false;
            BtnSave.Click += BtnSave_Click;
        }

        public void CaptureApplication()
        {
            var proc = Process.GetCurrentProcess();
            var rect = new User32.Rect();
            User32.GetWindowRect(proc.MainWindowHandle, ref rect);

            int width = rect.right - rect.left;
            int height = rect.bottom - rect.top;

            var bmp = new Bitmap(width, height, PixelFormat.Format32bppArgb);
            using (Graphics graphics = Graphics.FromImage(bmp))
            {
                graphics.CopyFromScreen(rect.left, rect.top, 0, 0, new Size(width, height), CopyPixelOperation.SourceCopy);
            }

            bmp.Save(String.Format("kp({0}) ki({1}) kd({2}) saturation({3}) maxswing({4}) {5}.png",TbKp.Text, TbKi.Text, TbKd.Text, TbISaturation.Text, TbMaxDacSwing.Text, DateTime.Now.ToString("yyyyMMddHHmmss")), ImageFormat.Png);
        }

        private class User32
        {
            [StructLayout(LayoutKind.Sequential)]
            public struct Rect
            {
                public int left;
                public int top;
                public int right;
                public int bottom;
            }

            [DllImport("user32.dll")]
            public static extern IntPtr GetWindowRect(IntPtr hWnd, ref Rect rect);
        }

        private void BtnSave_Click(object sender, EventArgs e)
        {
            CaptureApplication();
        }

        void SetReg(Byte addr, UInt16 value)
        {
            Byte[] data_in = new Byte[4];
            AardvarkApi.aa_spi_write(aardvarkHandle, 4, new byte[4] { 0x03, addr, (Byte)(value >> 8), (Byte)(value & 0xff) }, 4, data_in);
        }

        UInt16 GetReg(Byte addr)
        {
            Byte[] data_in = new Byte[4];
            AardvarkApi.aa_spi_write(aardvarkHandle, 4, new byte[4] { 0x04, addr, (Byte)(0 >> 8), (Byte)(0 & 0xff) }, 4, data_in);
            return (UInt16)((data_in[2] << 8) + data_in[3]);
        }

        void SetPIDParam()
        {
            SetReg(3, (UInt16)Decimal.Parse(TbKp.Text)); // kp
            SetReg(4, (UInt16)Decimal.Parse(TbKi.Text)); // ki
            SetReg(5, (UInt16)Decimal.Parse(TbKd.Text)); // kd
            SetReg(8, (UInt16)Decimal.Parse(TbMaxDacSwing.Text)); //Max DAC Swing
            SetReg(9, (UInt16)((UInt32)Decimal.Parse(TbISaturation.Text) & 0xffff)); // I-Saturation
            SetReg(10, (UInt16)((UInt32)Decimal.Parse(TbISaturation.Text) >> 16));   // I-Saturation
        }

        private void BtnConnectDongle_Click(object sender, EventArgs e)
        {
            ConnectDongle();
            if (aardvarkHandle <= 0)
            {
                PanelOps.Enabled = false;
            }
            else
            {
                PanelOps.Enabled = true;
            }
        }

        void ConnectDongle()
        {
            var aardvarkPorts = new ushort[16];
            var aardvarkUniqueIds = new uint[16];
            try
            {
                int aardvarkDonglesCount = AardvarkApi.aa_find_devices_ext(16, aardvarkPorts, 16, aardvarkUniqueIds);
                if (aardvarkDonglesCount > 0)
                {
                    aardvarkHandle = AardvarkApi.aa_open(aardvarkPorts[0]);
                    if (aardvarkHandle > 0)
                    {
                        AardvarkApi.aa_configure(aardvarkHandle, AardvarkConfig.AA_CONFIG_SPI_GPIO);
                        AardvarkApi.aa_target_power(aardvarkHandle, AardvarkApi.AA_TARGET_POWER_BOTH);
                        AardvarkApi.aa_spi_configure(aardvarkHandle, AardvarkSpiPolarity.AA_SPI_POL_RISING_FALLING, AardvarkSpiPhase.AA_SPI_PHASE_SAMPLE_SETUP, AardvarkSpiBitorder.AA_SPI_BITORDER_MSB);
                        AardvarkApi.aa_i2c_bitrate(aardvarkHandle, 1000);
                    }
                }
                if (aardvarkHandle <= 0)
                {
                    MessageBox.Show("Unable to connect dongle.", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
            }
        }

        private void BtnCalibration_Click(object sender, EventArgs e)
        {
            SetReg(3, 10); // kp
            SetReg(4, 4);  // ki
            SetReg(5, 0);  // kd
            SetReg(8, 1500); //Max DAC Swing
            SetReg(9, (UInt16)((UInt32)Decimal.Parse(TbISaturation.Text) & 0xffff)); // I-Saturation
            SetReg(10, (UInt16)((UInt32)Decimal.Parse(TbISaturation.Text) >> 16));   // I-Saturation

            SetReg(6, 0);       //Target
            SetReg(2, 0x00003); //bit1: pid resetn, bit0: sys resetn
            System.Threading.Thread.Sleep(100);
            limit[0] = GetReg(7); // current position
            TbLimit0.Text = limit[0].ToString() + " (" + ((limit[0] - 32768) * (10.0 / 32768)).ToString("F4") + "V)";
            SetReg(2, 0x00000); //bit1: pid resetn, bit0: sys resetn

            SetReg(6, 65535);   //Target
            SetReg(2, 0x00003); //bit1: pid resetn, bit0: sys resetn
            System.Threading.Thread.Sleep(100);
            limit[1] = GetReg(7); // current position
            TbLimit1.Text = limit[1].ToString() + " (" + ((limit[1] - 32768) * (10.0 / 32768)).ToString("F4") + "V)";
            SetReg(2, 0x00000); //bit1: pid resetn, bit0: sys resetn

            PosChart.ChartAreas[0].AxisY.Minimum = limit[0];
            PosChart.ChartAreas[0].AxisY.Maximum = limit[1];
        }

        private void BtnTargetTest_Click(object sender, EventArgs e)
        {
            if (BtnTargetTest.Text == "Start Target Test")
            {
                BtnTargetTest.Text = "Stop Target Test";
                BtnTargetTest.ForeColor = Color.Red;
                PosChart.Series[0].Points.Clear();
                PosChart.Series[1].Points.Clear();
                TbTarget.Text = ((ushort)((limit[0] + limit[1]) / 2)).ToString();

                targetTestEnabled = true;
                SetPIDParam();
                timer.Enabled = true;
            }
            else if (BtnTargetTest.Text == "Stop Target Test")
            {
                BtnTargetTest.Text = "Start Target Test";
                BtnTargetTest.ForeColor = Color.Black;
                timer.Enabled = false;
                targetTestEnabled = false;
            }
        }

        private void BtnStartRandomTest_Click(object sender, EventArgs e)
        {
            if (BtnStartRandTest.Text == "Start Random Test")
            {
                BtnStartRandTest.Text = "Stop Random Test";
                BtnStartRandTest.ForeColor = Color.Red;
                PosChart.Series[0].Points.Clear();
                PosChart.Series[1].Points.Clear();

                randomTestEnabled = true;
                SetPIDParam();
                timer.Enabled = true;
            }
            else if (BtnStartRandTest.Text == "Stop Random Test")
            {
                BtnStartRandTest.Text = "Start Random Test";
                BtnStartRandTest.ForeColor = Color.Black;
                timer.Enabled = false;
                randomTestEnabled = false;
            }
        }

        private void BtnStartBigToggleTest_Click(object sender, EventArgs e)
        {
            bigToggleData = new UInt16[majorTestLoops * minorTestLoops];
            UInt16 amp = (UInt16)((limit[1] - limit[0]) * 9/ 20); // 45% of full range
            UInt16 mid = (UInt16)((limit[0] + limit[1]) / 2);
            for (int i = 0; i < majorTestLoops; i++)
            {
                for (int j = 0; j < minorTestLoops; j++)
                    bigToggleData[i * minorTestLoops + j] = ((i & 1) == 0) ? (UInt16)(mid - amp) : (UInt16)(mid + amp); // 90% range
            }

            if (BtnStartBigToggleTest.Text == "Start Big Toggle Test")
            {
                BtnStartBigToggleTest.Text = "Stop Big Toggle Test";
                BtnStartBigToggleTest.ForeColor = Color.Red;
                PosChart.Series[0].Points.Clear();
                PosChart.Series[1].Points.Clear();

                bigToggleTestEnabled = true;
                SetPIDParam();
                timer.Enabled = true;
            }
            else if (BtnStartBigToggleTest.Text == "Stop Big Toggle Test")
            {
                BtnStartBigToggleTest.Text = "Start Big Toggle Test";
                BtnStartBigToggleTest.ForeColor = Color.Black;
                timer.Enabled = false;
                bigToggleTestEnabled = false;
            }
        }

        private void BtnStartSmallToggleTest_Click(object sender, EventArgs e)
        {
            smallToggleData = new UInt16[majorTestLoops * minorTestLoops];
            UInt16 amp = (UInt16)((limit[1] - limit[0]) / 20); // 5% of full range
            UInt16 mid = (UInt16)((limit[0] + limit[1]) / 2);
            for (int i = 0; i < majorTestLoops; i++)
            {
                for (int j = 0; j < minorTestLoops; j++)
                    smallToggleData[i * minorTestLoops + j] = ((i & 1) == 0) ? (UInt16)(mid - amp) : (UInt16)(mid + amp); // 10% of full range
            }

            if (BtnStartSmallToggleTest.Text == "Start Small Toggle Test")
            {
                BtnStartSmallToggleTest.Text = "Stop Small Toggle Test";
                BtnStartSmallToggleTest.ForeColor = Color.Red;
                PosChart.Series[0].Points.Clear();
                PosChart.Series[1].Points.Clear();

                smallToggleTestEnabled = true;
                SetPIDParam();
                timer.Enabled = true;
            }
            else if (BtnStartSmallToggleTest.Text == "Stop Small Toggle Test")
            {
                BtnStartSmallToggleTest.Text = "Start Small Toggle Test";
                BtnStartSmallToggleTest.ForeColor = Color.Black;
                timer.Enabled = false;
                smallToggleTestEnabled = false;
            }
        }

        private void BtnSineWaveTest_Click(object sender, EventArgs e)
        {
            sineData = new UInt16[majorTestLoops * minorTestLoops];
            UInt16 amp = (UInt16)((limit[1] - limit[0]) * 9 / 20); // 45% of full range
            UInt16 mid = (UInt16)((limit[0] + limit[1]) / 2);
            for (int i = 0; i < majorTestLoops * minorTestLoops; i++)
            {
                sineData[i] = (ushort)((mid + amp * Math.Sin((2 * Math.PI * i) / 8))); // 90% of full range
            }

            if (BtnSineWaveTest.Text == "Start Sine Test")
            {
                BtnSineWaveTest.Text = "Stop Sine Test";
                BtnSineWaveTest.ForeColor = Color.Red;
                PosChart.Series[0].Points.Clear();
                PosChart.Series[1].Points.Clear();

                sineTestEnabled = true;
                SetPIDParam();
                timer.Enabled = true;
            }
            else if (BtnSineWaveTest.Text == "Stop Sine Test")
            {
                BtnSineWaveTest.Text = "Start Sine Test";
                BtnSineWaveTest.ForeColor = Color.Black;
                timer.Enabled = false;
                sineTestEnabled = false;
            }
        }

        private void RunTimer_Tick(object sender, EventArgs e)
        {
            if (PosChart.Series[0].Points.Count >= majorTestLoops * minorTestLoops)
            {
                if (targetTestEnabled)
                    BtnTargetTest_Click(null, null);
                if (randomTestEnabled)
                    BtnStartRandomTest_Click(null, null);
                if (bigToggleTestEnabled)
                    BtnStartBigToggleTest_Click(null, null);
                if (smallToggleTestEnabled)
                    BtnStartSmallToggleTest_Click(null, null);
                if (sineTestEnabled)
                    BtnSineWaveTest_Click(null, null);

                SetReg(2, 0x00000); //bit1: pid resetn, bit0: sys resetn
            }
            else
            {
                UInt16 target = 0;
                if (targetTestEnabled)
                {
                    target = (UInt16)Decimal.Parse(TbTarget.Text);
                }
                if (randomTestEnabled)
                {
                    UInt16 amp = (UInt16)((limit[1] - limit[0]) * 9 / 20); // 45% of full range
                    UInt16 mid = (UInt16)((limit[0] + limit[1]) / 2);
                    target = (ushort)rand.Next(mid - amp, mid + amp);
                }
                if (bigToggleTestEnabled)
                {               
                    target = bigToggleData[PosChart.Series[0].Points.Count];
                }
                if (smallToggleTestEnabled)
                {
                    target = smallToggleData[PosChart.Series[0].Points.Count];
                }
                if (sineTestEnabled)
                {
                    target = sineData[PosChart.Series[0].Points.Count];
                }
                SetReg(6, target);  //target
                SetReg(2, 0x00003); //bit1: pid resetn, bit0: sys resetn
                if (!sineTestEnabled)
                {
                    for (int i = 0; i < minorTestLoops; i++)
                    {
                        //System.Threading.Thread.Sleep(1);
                        PosChart.Series[0].Points.AddY(target);
                        UInt16 position = GetReg(7); // current position
                        PosChart.Series[1].Points.AddY(position);
                    }
                }
                else
                {
                    //System.Threading.Thread.Sleep(1);
                    PosChart.Series[0].Points.AddY(target);
                    UInt16 position = GetReg(7); // current position
                    PosChart.Series[1].Points.AddY(position);
                }
            }
        }
    }
}
