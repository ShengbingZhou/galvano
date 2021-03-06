﻿
namespace Galvano
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series2 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.panel1 = new System.Windows.Forms.Panel();
            this.PanelOps = new System.Windows.Forms.Panel();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.lblDacSwing = new System.Windows.Forms.Label();
            this.BtnCalibration = new System.Windows.Forms.Button();
            this.TbLimit0 = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.lblMaxDacOut = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.TbKd = new System.Windows.Forms.TextBox();
            this.TbKi = new System.Windows.Forms.TextBox();
            this.TbLimit1 = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.TbKp = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.TbMaxDacSwing = new System.Windows.Forms.TextBox();
            this.TbISaturation = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label8 = new System.Windows.Forms.Label();
            this.BtnTargetTest = new System.Windows.Forms.Button();
            this.BtnStartBigStepTest = new System.Windows.Forms.Button();
            this.BtnStartMinorStepTest = new System.Windows.Forms.Button();
            this.BtnStartSmallStepTest = new System.Windows.Forms.Button();
            this.BtnSineWaveTest = new System.Windows.Forms.Button();
            this.BtnStartRandTest = new System.Windows.Forms.Button();
            this.tbLoops = new System.Windows.Forms.TextBox();
            this.TbTarget = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.panel3 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.BtnSave = new System.Windows.Forms.Button();
            this.BtnConnectDongle = new System.Windows.Forms.Button();
            this.PosChart = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.cbRotateDirection = new System.Windows.Forms.CheckBox();
            this.panel1.SuspendLayout();
            this.PanelOps.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PosChart)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.PanelOps);
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1221, 260);
            this.panel1.TabIndex = 9;
            // 
            // PanelOps
            // 
            this.PanelOps.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.PanelOps.Controls.Add(this.groupBox2);
            this.PanelOps.Controls.Add(this.groupBox1);
            this.PanelOps.Dock = System.Windows.Forms.DockStyle.Fill;
            this.PanelOps.Location = new System.Drawing.Point(0, 56);
            this.PanelOps.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.PanelOps.Name = "PanelOps";
            this.PanelOps.Size = new System.Drawing.Size(1221, 204);
            this.PanelOps.TabIndex = 14;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.cbRotateDirection);
            this.groupBox2.Controls.Add(this.lblDacSwing);
            this.groupBox2.Controls.Add(this.BtnCalibration);
            this.groupBox2.Controls.Add(this.TbLimit0);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Controls.Add(this.lblMaxDacOut);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.TbKd);
            this.groupBox2.Controls.Add(this.TbKi);
            this.groupBox2.Controls.Add(this.TbLimit1);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.TbKp);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.TbMaxDacSwing);
            this.groupBox2.Controls.Add(this.TbISaturation);
            this.groupBox2.Location = new System.Drawing.Point(28, 4);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(536, 188);
            this.groupBox2.TabIndex = 14;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Calibrate";
            // 
            // lblDacSwing
            // 
            this.lblDacSwing.AutoSize = true;
            this.lblDacSwing.Location = new System.Drawing.Point(471, 101);
            this.lblDacSwing.Name = "lblDacSwing";
            this.lblDacSwing.Size = new System.Drawing.Size(23, 16);
            this.lblDacSwing.TabIndex = 13;
            this.lblDacSwing.Text = "(V)";
            // 
            // BtnCalibration
            // 
            this.BtnCalibration.Location = new System.Drawing.Point(67, 22);
            this.BtnCalibration.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.BtnCalibration.MinimumSize = new System.Drawing.Size(0, 31);
            this.BtnCalibration.Name = "BtnCalibration";
            this.BtnCalibration.Size = new System.Drawing.Size(181, 31);
            this.BtnCalibration.TabIndex = 7;
            this.BtnCalibration.Text = "Calibrate Motor";
            this.BtnCalibration.UseVisualStyleBackColor = true;
            // 
            // TbLimit0
            // 
            this.TbLimit0.Location = new System.Drawing.Point(134, 65);
            this.TbLimit0.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.TbLimit0.Name = "TbLimit0";
            this.TbLimit0.ReadOnly = true;
            this.TbLimit0.Size = new System.Drawing.Size(112, 22);
            this.TbLimit0.TabIndex = 0;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(277, 130);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(70, 16);
            this.label7.TabIndex = 12;
            this.label7.Text = "I-Saturation";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(274, 69);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(73, 16);
            this.label2.TabIndex = 8;
            this.label2.Text = "Higher Limit";
            // 
            // lblMaxDacOut
            // 
            this.lblMaxDacOut.AutoSize = true;
            this.lblMaxDacOut.Location = new System.Drawing.Point(253, 101);
            this.lblMaxDacOut.Name = "lblMaxDacOut";
            this.lblMaxDacOut.Size = new System.Drawing.Size(92, 16);
            this.lblMaxDacOut.TabIndex = 12;
            this.lblMaxDacOut.Text = "Max DAC Swing";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(103, 101);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(22, 16);
            this.label4.TabIndex = 8;
            this.label4.Text = "Kp";
            // 
            // TbKd
            // 
            this.TbKd.Location = new System.Drawing.Point(134, 157);
            this.TbKd.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.TbKd.Name = "TbKd";
            this.TbKd.Size = new System.Drawing.Size(112, 22);
            this.TbKd.TabIndex = 11;
            // 
            // TbKi
            // 
            this.TbKi.Location = new System.Drawing.Point(134, 127);
            this.TbKi.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.TbKi.Name = "TbKi";
            this.TbKi.Size = new System.Drawing.Size(112, 22);
            this.TbKi.TabIndex = 9;
            // 
            // TbLimit1
            // 
            this.TbLimit1.Location = new System.Drawing.Point(353, 64);
            this.TbLimit1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.TbLimit1.Name = "TbLimit1";
            this.TbLimit1.ReadOnly = true;
            this.TbLimit1.Size = new System.Drawing.Size(112, 22);
            this.TbLimit1.TabIndex = 1;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(109, 131);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(18, 16);
            this.label6.TabIndex = 8;
            this.label6.Text = "Ki";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(104, 161);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(22, 16);
            this.label5.TabIndex = 10;
            this.label5.Text = "Kd";
            // 
            // TbKp
            // 
            this.TbKp.Location = new System.Drawing.Point(134, 97);
            this.TbKp.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.TbKp.Name = "TbKp";
            this.TbKp.Size = new System.Drawing.Size(112, 22);
            this.TbKp.TabIndex = 9;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(57, 70);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(69, 16);
            this.label1.TabIndex = 8;
            this.label1.Text = "Lower Limit";
            // 
            // TbMaxDacSwing
            // 
            this.TbMaxDacSwing.Location = new System.Drawing.Point(353, 97);
            this.TbMaxDacSwing.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.TbMaxDacSwing.Name = "TbMaxDacSwing";
            this.TbMaxDacSwing.Size = new System.Drawing.Size(112, 22);
            this.TbMaxDacSwing.TabIndex = 9;
            this.TbMaxDacSwing.Text = "5000";
            // 
            // TbISaturation
            // 
            this.TbISaturation.Location = new System.Drawing.Point(353, 127);
            this.TbISaturation.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.TbISaturation.Name = "TbISaturation";
            this.TbISaturation.Size = new System.Drawing.Size(112, 22);
            this.TbISaturation.TabIndex = 9;
            this.TbISaturation.Text = "300000";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.BtnTargetTest);
            this.groupBox1.Controls.Add(this.BtnStartBigStepTest);
            this.groupBox1.Controls.Add(this.BtnStartMinorStepTest);
            this.groupBox1.Controls.Add(this.BtnStartSmallStepTest);
            this.groupBox1.Controls.Add(this.BtnSineWaveTest);
            this.groupBox1.Controls.Add(this.BtnStartRandTest);
            this.groupBox1.Controls.Add(this.tbLoops);
            this.groupBox1.Controls.Add(this.TbTarget);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.panel3);
            this.groupBox1.Location = new System.Drawing.Point(589, 4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(600, 188);
            this.groupBox1.TabIndex = 13;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Test";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(468, 64);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(64, 16);
            this.label8.TabIndex = 11;
            this.label8.Text = "Test Loops";
            // 
            // BtnTargetTest
            // 
            this.BtnTargetTest.Location = new System.Drawing.Point(66, 22);
            this.BtnTargetTest.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.BtnTargetTest.MinimumSize = new System.Drawing.Size(0, 31);
            this.BtnTargetTest.Name = "BtnTargetTest";
            this.BtnTargetTest.Size = new System.Drawing.Size(181, 31);
            this.BtnTargetTest.TabIndex = 7;
            this.BtnTargetTest.Text = "Single Target Test";
            this.BtnTargetTest.UseVisualStyleBackColor = true;
            // 
            // BtnStartBigStepTest
            // 
            this.BtnStartBigStepTest.Location = new System.Drawing.Point(66, 61);
            this.BtnStartBigStepTest.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.BtnStartBigStepTest.MinimumSize = new System.Drawing.Size(0, 31);
            this.BtnStartBigStepTest.Name = "BtnStartBigStepTest";
            this.BtnStartBigStepTest.Size = new System.Drawing.Size(181, 31);
            this.BtnStartBigStepTest.TabIndex = 7;
            this.BtnStartBigStepTest.Text = "Start Big Step Test";
            this.BtnStartBigStepTest.UseVisualStyleBackColor = true;
            // 
            // BtnStartMinorStepTest
            // 
            this.BtnStartMinorStepTest.Location = new System.Drawing.Point(66, 139);
            this.BtnStartMinorStepTest.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.BtnStartMinorStepTest.MinimumSize = new System.Drawing.Size(0, 31);
            this.BtnStartMinorStepTest.Name = "BtnStartMinorStepTest";
            this.BtnStartMinorStepTest.Size = new System.Drawing.Size(181, 31);
            this.BtnStartMinorStepTest.TabIndex = 7;
            this.BtnStartMinorStepTest.Text = "Start Minor Step Test";
            this.BtnStartMinorStepTest.UseVisualStyleBackColor = true;
            // 
            // BtnStartSmallStepTest
            // 
            this.BtnStartSmallStepTest.Location = new System.Drawing.Point(66, 100);
            this.BtnStartSmallStepTest.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.BtnStartSmallStepTest.MinimumSize = new System.Drawing.Size(0, 31);
            this.BtnStartSmallStepTest.Name = "BtnStartSmallStepTest";
            this.BtnStartSmallStepTest.Size = new System.Drawing.Size(181, 31);
            this.BtnStartSmallStepTest.TabIndex = 7;
            this.BtnStartSmallStepTest.Text = "Start Small Step Test";
            this.BtnStartSmallStepTest.UseVisualStyleBackColor = true;
            // 
            // BtnSineWaveTest
            // 
            this.BtnSineWaveTest.Location = new System.Drawing.Point(253, 101);
            this.BtnSineWaveTest.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.BtnSineWaveTest.MinimumSize = new System.Drawing.Size(0, 31);
            this.BtnSineWaveTest.Name = "BtnSineWaveTest";
            this.BtnSineWaveTest.Size = new System.Drawing.Size(181, 31);
            this.BtnSineWaveTest.TabIndex = 7;
            this.BtnSineWaveTest.Text = "Start Sine Test";
            this.BtnSineWaveTest.UseVisualStyleBackColor = true;
            // 
            // BtnStartRandTest
            // 
            this.BtnStartRandTest.Location = new System.Drawing.Point(253, 61);
            this.BtnStartRandTest.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.BtnStartRandTest.MinimumSize = new System.Drawing.Size(0, 31);
            this.BtnStartRandTest.Name = "BtnStartRandTest";
            this.BtnStartRandTest.Size = new System.Drawing.Size(181, 31);
            this.BtnStartRandTest.TabIndex = 7;
            this.BtnStartRandTest.Text = "Start Random Test";
            this.BtnStartRandTest.UseVisualStyleBackColor = true;
            // 
            // tbLoops
            // 
            this.tbLoops.Location = new System.Drawing.Point(471, 86);
            this.tbLoops.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.tbLoops.Name = "tbLoops";
            this.tbLoops.Size = new System.Drawing.Size(112, 22);
            this.tbLoops.TabIndex = 9;
            // 
            // TbTarget
            // 
            this.TbTarget.Location = new System.Drawing.Point(310, 26);
            this.TbTarget.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.TbTarget.Name = "TbTarget";
            this.TbTarget.Size = new System.Drawing.Size(112, 22);
            this.TbTarget.TabIndex = 9;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(258, 30);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(41, 16);
            this.label3.TabIndex = 8;
            this.label3.Text = "Target";
            // 
            // panel3
            // 
            this.panel3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel3.Location = new System.Drawing.Point(52, 13);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(400, 169);
            this.panel3.TabIndex = 10;
            // 
            // panel2
            // 
            this.panel2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel2.Controls.Add(this.BtnSave);
            this.panel2.Controls.Add(this.BtnConnectDongle);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1221, 56);
            this.panel2.TabIndex = 13;
            // 
            // BtnSave
            // 
            this.BtnSave.Location = new System.Drawing.Point(282, 11);
            this.BtnSave.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.BtnSave.MinimumSize = new System.Drawing.Size(0, 31);
            this.BtnSave.Name = "BtnSave";
            this.BtnSave.Size = new System.Drawing.Size(181, 31);
            this.BtnSave.TabIndex = 1;
            this.BtnSave.Text = "Save as PNG";
            this.BtnSave.UseVisualStyleBackColor = true;
            // 
            // BtnConnectDongle
            // 
            this.BtnConnectDongle.Location = new System.Drawing.Point(95, 11);
            this.BtnConnectDongle.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.BtnConnectDongle.MinimumSize = new System.Drawing.Size(0, 31);
            this.BtnConnectDongle.Name = "BtnConnectDongle";
            this.BtnConnectDongle.Size = new System.Drawing.Size(181, 31);
            this.BtnConnectDongle.TabIndex = 1;
            this.BtnConnectDongle.Text = "Connect USB Dongle";
            this.BtnConnectDongle.UseVisualStyleBackColor = true;
            // 
            // PosChart
            // 
            chartArea1.Name = "ChartArea1";
            this.PosChart.ChartAreas.Add(chartArea1);
            this.PosChart.Dock = System.Windows.Forms.DockStyle.Fill;
            legend1.Name = "Legend1";
            this.PosChart.Legends.Add(legend1);
            this.PosChart.Location = new System.Drawing.Point(0, 260);
            this.PosChart.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.PosChart.Name = "PosChart";
            series1.ChartArea = "ChartArea1";
            series1.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            series1.IsXValueIndexed = true;
            series1.Legend = "Legend1";
            series1.Name = "Target Position";
            series2.ChartArea = "ChartArea1";
            series2.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            series2.IsXValueIndexed = true;
            series2.Legend = "Legend1";
            series2.Name = "Actual Position";
            this.PosChart.Series.Add(series1);
            this.PosChart.Series.Add(series2);
            this.PosChart.Size = new System.Drawing.Size(1221, 522);
            this.PosChart.TabIndex = 10;
            this.PosChart.Text = "chart1";
            // 
            // cbRotateDirection
            // 
            this.cbRotateDirection.AutoSize = true;
            this.cbRotateDirection.Location = new System.Drawing.Point(254, 28);
            this.cbRotateDirection.Name = "cbRotateDirection";
            this.cbRotateDirection.Size = new System.Drawing.Size(125, 20);
            this.cbRotateDirection.TabIndex = 14;
            this.cbRotateDirection.Text = "Negative Direction";
            this.cbRotateDirection.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1221, 782);
            this.Controls.Add(this.PosChart);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("Microsoft YaHei", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.panel1.ResumeLayout(false);
            this.PanelOps.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.PosChart)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataVisualization.Charting.Chart PosChart;
        private System.Windows.Forms.Button BtnConnectDongle;
        private System.Windows.Forms.Panel PanelOps;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label lblMaxDacOut;
        private System.Windows.Forms.TextBox TbKd;
        private System.Windows.Forms.TextBox TbLimit1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox TbISaturation;
        private System.Windows.Forms.TextBox TbMaxDacSwing;
        private System.Windows.Forms.TextBox TbKp;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox TbTarget;
        private System.Windows.Forms.TextBox TbKi;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button BtnCalibration;
        private System.Windows.Forms.Button BtnTargetTest;
        private System.Windows.Forms.Button BtnStartRandTest;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button BtnSineWaveTest;
        private System.Windows.Forms.Button BtnStartBigStepTest;
        private System.Windows.Forms.TextBox TbLimit0;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button BtnStartSmallStepTest;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button BtnSave;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button BtnStartMinorStepTest;
        private System.Windows.Forms.Label lblDacSwing;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.TextBox tbLoops;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.CheckBox cbRotateDirection;
    }
}

