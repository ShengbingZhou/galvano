using System;
using System.Windows.Forms;
using System.IO.Ports;
using System.Drawing;
using System.Linq;
using System.Collections.Generic;

namespace Galvano
{
    public partial class FormMain : Form
    {
        SerialPort sp;
        int[] Baudrate = new int[] { 4800, 9600, 14400, 19200, 28800, 38400, 56000, 57600, 115200, 128000, 153600, 230400, 256000, 460800, 921600 };
        delegate void HandleNewDataDelegate(string text);
        HandleNewDataDelegate interfaceUpdateHandle;

        public FormMain()
        {
            InitializeComponent();

            Application.ThreadException += (s, e) =>
            {
                LogError(e.Exception.Message);
            };

            rtbConsole.Font = new Font("Consolas", 8);
            rtbConsole.ReadOnly = true;

            rtbXPADC.Font = new Font("Consolas", 8);
            rtbXPADC.ReadOnly = true;
            rtbXIADC.Font = new Font("Consolas", 8);
            rtbXIADC.ReadOnly = true;
            rtbXDAC.Font = new Font("Consolas", 8);
            rtbXDAC.ReadOnly = true;

            rtbYPADC.Font = new Font("Consolas", 8);
            rtbYPADC.ReadOnly = true;
            rtbYIADC.Font = new Font("Consolas", 8);
            rtbYIADC.ReadOnly = true;
            rtbYDAC.Font = new Font("Consolas", 8);
            rtbYDAC.ReadOnly = true;

            cbUarts.DataSource = SerialPort.GetPortNames();
            cbUarts.DropDownStyle = ComboBoxStyle.DropDownList;
            cbBaudrate.DataSource = Baudrate;
            cbBaudrate.Text = "115200";
            cbBaudrate.DropDownStyle = ComboBoxStyle.DropDownList;
            interfaceUpdateHandle = (text) =>
            {
                // show text
                LogInfo(text);
                
                // update UI
                Application.DoEvents();
            };
            btnRefresh.Click += (s, e) =>
            {                
                cbUarts.DataSource = SerialPort.GetPortNames();
            };
            btnConnect.Click += (s, e) =>
            {
                if (btnConnect.Text == "Close")
                {
                    sp.DataReceived -= sp_DataReceived;
                    sp.Close();
                    sp = null;
                    cbUarts.Enabled = cbBaudrate.Enabled = true;
                    btnRefresh.Enabled = true;
                    btnConnect.Text = "Connect";
                }
                else
                {
                    if (cbUarts.Items.Count == 0)
                    {
                        cbUarts.Enabled = cbBaudrate.Enabled = true;
                        btnRefresh.Enabled = true;
                        btnConnect.Text = "Connect";
                        sp = null;
                        LogError("No port selected.");
                    }
                    else
                    {
                        var port = cbUarts.SelectedItem.ToString();
                        int baud = (int)cbBaudrate.SelectedValue;
                        sp = new SerialPort(port, baud, Parity.None, 8, StopBits.One);
                        sp.ReadBufferSize = 0x8;
                        sp.Open();
                        sp.DiscardInBuffer();
                        sp.DataReceived += sp_DataReceived;
                        LogOk(port + " is opened.");
                        cbUarts.Enabled = cbBaudrate.Enabled = false;
                        btnRefresh.Enabled = false;
                        btnConnect.Text = "Close";
                    }
                }            
            };
            btnClear.Click += (s, e) =>
            {
                rtbConsole.Clear();
            };
            btnWrite.Click += (s, e) =>
            {
                if (sp == null)
                {
                    throw new Exception("No port opened.");
                }
                sp.Write(new byte[] { Convert.ToByte(tbAddress.Text, 16), 0x00, Convert.ToByte(tbData.Text, 16) }, 0, 3);                
            };
            btnRead.Click += (s, e) =>
            {
                if (sp == null)
                {
                    throw new Exception("No port opened.");
                }
                sp.Write(new byte[] { Convert.ToByte(tbAddress.Text, 16), 0x01, Convert.ToByte(tbData.Text, 16) }, 0, 3);
            };
        }

        List<byte> rxBytes = new List<byte>();
        void sp_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            var readBuffer = new byte[sp.ReadBufferSize];
            sp.Read(readBuffer, 0, readBuffer.Length);
            rxBytes.AddRange(readBuffer);

            if (rxBytes.Count > 0)
            {
                List<byte> msgBytes = new List<byte>();
                for (int i = 0; i < (rxBytes.Count - 1); i++)
                {
                    if (rxBytes[i] == 0xa5 && rxBytes[i + 1] == 0x5a)
                    {
                        if ((rxBytes.Count - i) >= 8)
                        {
                            if (msgBytes.Count > 0)
                                this.BeginInvoke(interfaceUpdateHandle, BitConverter.ToString(msgBytes.ToArray()));
                            msgBytes.Clear();
                            msgBytes.AddRange(rxBytes.GetRange(i, 8));
                            this.BeginInvoke(interfaceUpdateHandle, BitConverter.ToString(msgBytes.ToArray()));
                            rxBytes.RemoveRange(0, i + 8);
                            return;
                        }
                        else
                        {
                            if (msgBytes.Count > 0)
                                this.BeginInvoke(interfaceUpdateHandle, BitConverter.ToString(msgBytes.ToArray()));
                            rxBytes.RemoveRange(0, i);
                            return;
                        }
                    }
                    else
                    {
                        msgBytes.Add(rxBytes[i]);
                    }
                }
                if (rxBytes.Count > 0x100)
                {
                    this.BeginInvoke(interfaceUpdateHandle, BitConverter.ToString(rxBytes.ToArray()));
                    rxBytes.Clear();
                }
            }
        }

        private void LogInfo(string t)
        {
            bool found = false;
            byte[] data = t.Split('-').Select(b => Convert.ToByte(b, 16)).ToArray();
            if (data.Length >= 8)
            {
                if (data[0] == 0xa5 && data[1] == 0x5a)
                {
                    if (data[2] == 0x00) // xpadc
                    {
                        var code = (data[3] + (data[4] << 8));
                        var voltage = ((code * 10240.0 * 2 / 65536) - 10240).ToString("0.000");
                        rtbXPADC.ScrollToCaret();
                        rtbXPADC.ForeColor = Color.Black;
                        rtbXPADC.AppendText(string.Format("{0}, {1} - (0x{2:X4}, {3}mV)\r\n", DateTime.Now.ToString("hh:mm:ss:fff"), t, code, voltage));
                        found = true;
                    }
                    else if (data[2] == 0x01) // xiadc
                    {
                        var code = (data[3] + (data[4] << 8));
                        var voltage = ((code * 320000.0 * 2 / 65536) - 320000).ToString("0");
                        rtbXIADC.ScrollToCaret();
                        rtbXIADC.ForeColor = Color.Black;
                        rtbXIADC.AppendText(string.Format("{0}, {1} - (0x{2:X4}, {3}uV)\r\n", DateTime.Now.ToString("hh:mm:ss:fff"), t, code, voltage));
                        found = true;
                    }
                    else if (data[2] == 0x02) // xdac
                    {
                        var code = (data[3] + (data[4] << 8));
                        var voltage = ((code * 10000.0 * 2 / 65536) - 10000).ToString("0.000");
                        rtbXDAC.ScrollToCaret();
                        rtbXDAC.ForeColor = Color.Black;
                        rtbXDAC.AppendText(string.Format("{0}, {1} - (0x{2:X4}, {3}mV)\r\n", DateTime.Now.ToString("hh:mm:ss:fff"), t, code, voltage));                        
                        found = true;
                    }
                    else if (data[2] == 0x03) // xpadc
                    {
                        var code = (data[3] + (data[4] << 8));
                        var voltage = ((code * 10240.0 * 2 / 65536) - 10240).ToString("0.000");
                        rtbYPADC.ScrollToCaret();
                        rtbYPADC.ForeColor = Color.Black;
                        rtbYPADC.AppendText(string.Format("{0}, {1} - (0x{2:X4}, {3}mV)\r\n", DateTime.Now.ToString("hh:mm:ss:fff"), t, code, voltage));
                        found = true;
                    }
                    else if (data[2] == 0x04) // xiadc
                    {
                        var code = (data[3] + (data[4] << 8));
                        var voltage = ((code * 320000.0 * 2 / 65536) - 320000).ToString("0");
                        rtbYIADC.ScrollToCaret();
                        rtbYIADC.ForeColor = Color.Black;
                        rtbYIADC.AppendText(string.Format("{0}, {1} - (0x{2:X4}, {3}uV)\r\n", DateTime.Now.ToString("hh:mm:ss:fff"), t, code, voltage));
                        found = true;
                    }
                    else if (data[2] == 0x05) // xdac
                    {
                        var code = (data[3] + (data[4] << 8));
                        var voltage = ((code * 10000.0 * 2 / 65536) - 10000).ToString("0.000");
                        rtbYDAC.ScrollToCaret();
                        rtbYDAC.ForeColor = Color.Black;
                        rtbYDAC.AppendText(string.Format("{0}, {1} - (0x{2:X4}, {3}mV)\r\n", DateTime.Now.ToString("hh:mm:ss:fff"), t, code, voltage));
                        found = true;
                    }
                }
            }
            if (!found)
            {
                rtbConsole.ScrollToCaret();
                rtbConsole.ForeColor = Color.Black;
                rtbConsole.AppendText(DateTime.Now.ToString("hh:mm:ss:fff") + " - " + t);
                rtbConsole.AppendText("\r\n");
            }
            
            // limit lines
            if (rtbConsole.Lines.Length > 1000)
                rtbConsole.Clear();
            if (rtbXPADC.Lines.Length > 1000)
                rtbXPADC.Clear();
            if (rtbXIADC.Lines.Length > 1000)
                rtbXIADC.Clear();
            if (rtbXDAC.Lines.Length > 1000)
                rtbXDAC.Clear();
            if (rtbYPADC.Lines.Length > 1000)
                rtbYPADC.Clear();
            if (rtbYIADC.Lines.Length > 1000)
                rtbYIADC.Clear();
            if (rtbYDAC.Lines.Length > 1000)
                rtbYDAC.Clear();
        }

        private void LogOk(string t)
        {
            rtbConsole.ScrollToCaret();
            rtbConsole.ForeColor = Color.Green;
            rtbConsole.AppendText(DateTime.Now.ToString("hh:mm:ss:fff") + " - " + t);
            rtbConsole.AppendText("\r\n");
        }

        private void LogWarn(string t)
        {
            rtbConsole.ScrollToCaret();
            rtbConsole.ForeColor = Color.Orange;
            rtbConsole.AppendText(DateTime.Now.ToString("hh:mm:ss:fff") + " - " + t);
            rtbConsole.AppendText("\r\n");
        }

        private void LogError(string t)
        {
            rtbConsole.ScrollToCaret();
            rtbConsole.ForeColor = Color.Red;
            rtbConsole.AppendText(DateTime.Now.ToString("hh:mm:ss:fff") + " - " + t);
            rtbConsole.AppendText("\r\n");
        }
    }
}
