namespace Galvano
{
    partial class FormMain
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
            this.btnConnect = new System.Windows.Forms.Button();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.cbUarts = new System.Windows.Forms.ComboBox();
            this.btnRefresh = new System.Windows.Forms.Button();
            this.cbBaudrate = new System.Windows.Forms.ComboBox();
            this.btnClear = new System.Windows.Forms.Button();
            this.tbAddress = new System.Windows.Forms.TextBox();
            this.flowLayoutPanel2 = new System.Windows.Forms.FlowLayoutPanel();
            this.lblAddress = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.tbData = new System.Windows.Forms.TextBox();
            this.btnWrite = new System.Windows.Forms.Button();
            this.btnRead = new System.Windows.Forms.Button();
            this.tpX = new System.Windows.Forms.TabPage();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.rtbXDAC = new System.Windows.Forms.RichTextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.rtbXIADC = new System.Windows.Forms.RichTextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.rtbXPADC = new System.Windows.Forms.RichTextBox();
            this.tpGeneral = new System.Windows.Forms.TabPage();
            this.rtbConsole = new System.Windows.Forms.RichTextBox();
            this.xp = new System.Windows.Forms.TabControl();
            this.tabY = new System.Windows.Forms.TabPage();
            this.tableLayoutPanel2 = new System.Windows.Forms.TableLayoutPanel();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.rtbYDAC = new System.Windows.Forms.RichTextBox();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.rtbYIADC = new System.Windows.Forms.RichTextBox();
            this.groupBox6 = new System.Windows.Forms.GroupBox();
            this.rtbYPADC = new System.Windows.Forms.RichTextBox();
            this.flowLayoutPanel1.SuspendLayout();
            this.flowLayoutPanel2.SuspendLayout();
            this.tpX.SuspendLayout();
            this.tableLayoutPanel1.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.tpGeneral.SuspendLayout();
            this.xp.SuspendLayout();
            this.tabY.SuspendLayout();
            this.tableLayoutPanel2.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.groupBox6.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnConnect
            // 
            this.btnConnect.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.btnConnect.Location = new System.Drawing.Point(439, 3);
            this.btnConnect.Name = "btnConnect";
            this.btnConnect.Size = new System.Drawing.Size(78, 24);
            this.btnConnect.TabIndex = 0;
            this.btnConnect.Text = "Connect";
            this.btnConnect.UseVisualStyleBackColor = true;
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.AutoSize = true;
            this.flowLayoutPanel1.Controls.Add(this.cbUarts);
            this.flowLayoutPanel1.Controls.Add(this.btnRefresh);
            this.flowLayoutPanel1.Controls.Add(this.cbBaudrate);
            this.flowLayoutPanel1.Controls.Add(this.btnConnect);
            this.flowLayoutPanel1.Controls.Add(this.btnClear);
            this.flowLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.flowLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(1495, 30);
            this.flowLayoutPanel1.TabIndex = 1;
            // 
            // cbUarts
            // 
            this.cbUarts.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.cbUarts.FormattingEnabled = true;
            this.cbUarts.Location = new System.Drawing.Point(3, 4);
            this.cbUarts.Name = "cbUarts";
            this.cbUarts.Size = new System.Drawing.Size(178, 23);
            this.cbUarts.TabIndex = 1;
            // 
            // btnRefresh
            // 
            this.btnRefresh.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.btnRefresh.Location = new System.Drawing.Point(187, 3);
            this.btnRefresh.Name = "btnRefresh";
            this.btnRefresh.Size = new System.Drawing.Size(62, 24);
            this.btnRefresh.TabIndex = 3;
            this.btnRefresh.Text = "Refresh";
            this.btnRefresh.UseVisualStyleBackColor = true;
            // 
            // cbBaudrate
            // 
            this.cbBaudrate.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.cbBaudrate.FormattingEnabled = true;
            this.cbBaudrate.Location = new System.Drawing.Point(255, 4);
            this.cbBaudrate.Name = "cbBaudrate";
            this.cbBaudrate.Size = new System.Drawing.Size(178, 23);
            this.cbBaudrate.TabIndex = 2;
            // 
            // btnClear
            // 
            this.btnClear.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.btnClear.Location = new System.Drawing.Point(523, 3);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(78, 24);
            this.btnClear.TabIndex = 0;
            this.btnClear.Text = "Clear";
            this.btnClear.UseVisualStyleBackColor = true;
            // 
            // tbAddress
            // 
            this.tbAddress.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.tbAddress.Location = new System.Drawing.Point(120, 3);
            this.tbAddress.Margin = new System.Windows.Forms.Padding(0, 3, 3, 3);
            this.tbAddress.Name = "tbAddress";
            this.tbAddress.Size = new System.Drawing.Size(39, 23);
            this.tbAddress.TabIndex = 3;
            this.tbAddress.Text = "00";
            this.tbAddress.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // flowLayoutPanel2
            // 
            this.flowLayoutPanel2.AutoSize = true;
            this.flowLayoutPanel2.Controls.Add(this.lblAddress);
            this.flowLayoutPanel2.Controls.Add(this.tbAddress);
            this.flowLayoutPanel2.Controls.Add(this.label1);
            this.flowLayoutPanel2.Controls.Add(this.tbData);
            this.flowLayoutPanel2.Controls.Add(this.btnWrite);
            this.flowLayoutPanel2.Controls.Add(this.btnRead);
            this.flowLayoutPanel2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.flowLayoutPanel2.Location = new System.Drawing.Point(0, 712);
            this.flowLayoutPanel2.Name = "flowLayoutPanel2";
            this.flowLayoutPanel2.Size = new System.Drawing.Size(1495, 30);
            this.flowLayoutPanel2.TabIndex = 4;
            // 
            // lblAddress
            // 
            this.lblAddress.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.lblAddress.AutoSize = true;
            this.lblAddress.Location = new System.Drawing.Point(3, 7);
            this.lblAddress.Margin = new System.Windows.Forms.Padding(3, 0, 0, 0);
            this.lblAddress.Name = "lblAddress";
            this.lblAddress.Size = new System.Drawing.Size(117, 15);
            this.lblAddress.TabIndex = 5;
            this.lblAddress.Text = "Register Address: 0x";
            this.lblAddress.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label1
            // 
            this.label1.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(172, 7);
            this.label1.Margin = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(52, 15);
            this.label1.TabIndex = 5;
            this.label1.Text = "Data: 0x";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // tbData
            // 
            this.tbData.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.tbData.Location = new System.Drawing.Point(224, 3);
            this.tbData.Margin = new System.Windows.Forms.Padding(0, 3, 3, 3);
            this.tbData.Name = "tbData";
            this.tbData.Size = new System.Drawing.Size(39, 23);
            this.tbData.TabIndex = 3;
            this.tbData.Text = "00";
            this.tbData.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // btnWrite
            // 
            this.btnWrite.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.btnWrite.Location = new System.Drawing.Point(286, 3);
            this.btnWrite.Margin = new System.Windows.Forms.Padding(20, 3, 3, 3);
            this.btnWrite.Name = "btnWrite";
            this.btnWrite.Size = new System.Drawing.Size(78, 24);
            this.btnWrite.TabIndex = 4;
            this.btnWrite.Text = "Write";
            this.btnWrite.UseVisualStyleBackColor = true;
            // 
            // btnRead
            // 
            this.btnRead.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.btnRead.Location = new System.Drawing.Point(370, 3);
            this.btnRead.Name = "btnRead";
            this.btnRead.Size = new System.Drawing.Size(78, 24);
            this.btnRead.TabIndex = 4;
            this.btnRead.Text = "Read";
            this.btnRead.UseVisualStyleBackColor = true;
            // 
            // tpX
            // 
            this.tpX.Controls.Add(this.tableLayoutPanel1);
            this.tpX.Location = new System.Drawing.Point(4, 24);
            this.tpX.Name = "tpX";
            this.tpX.Size = new System.Drawing.Size(1487, 654);
            this.tpX.TabIndex = 1;
            this.tpX.Text = "X";
            this.tpX.UseVisualStyleBackColor = true;
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 3;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 33.33333F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 33.33333F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 33.33333F));
            this.tableLayoutPanel1.Controls.Add(this.groupBox3, 2, 0);
            this.tableLayoutPanel1.Controls.Add(this.groupBox2, 1, 0);
            this.tableLayoutPanel1.Controls.Add(this.groupBox1, 0, 0);
            this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 1;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(1487, 654);
            this.tableLayoutPanel1.TabIndex = 2;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.rtbXDAC);
            this.groupBox3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox3.Location = new System.Drawing.Point(993, 3);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(491, 648);
            this.groupBox3.TabIndex = 6;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "XDAC (+/-10V, LSB=0.305mV)";
            // 
            // rtbXDAC
            // 
            this.rtbXDAC.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtbXDAC.Location = new System.Drawing.Point(3, 19);
            this.rtbXDAC.Name = "rtbXDAC";
            this.rtbXDAC.Size = new System.Drawing.Size(485, 626);
            this.rtbXDAC.TabIndex = 1;
            this.rtbXDAC.Text = "";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.rtbXIADC);
            this.groupBox2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox2.Location = new System.Drawing.Point(498, 3);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(489, 648);
            this.groupBox2.TabIndex = 5;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "XIADC (+/-320mV, LSB = ~10uV)";
            // 
            // rtbXIADC
            // 
            this.rtbXIADC.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtbXIADC.Location = new System.Drawing.Point(3, 19);
            this.rtbXIADC.Name = "rtbXIADC";
            this.rtbXIADC.Size = new System.Drawing.Size(483, 626);
            this.rtbXIADC.TabIndex = 1;
            this.rtbXIADC.Text = "";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.rtbXPADC);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox1.Location = new System.Drawing.Point(3, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(489, 648);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "XPADC (+/-10.24V, LSB = 0.313mV)";
            // 
            // rtbXPADC
            // 
            this.rtbXPADC.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtbXPADC.Location = new System.Drawing.Point(3, 19);
            this.rtbXPADC.Name = "rtbXPADC";
            this.rtbXPADC.Size = new System.Drawing.Size(483, 626);
            this.rtbXPADC.TabIndex = 1;
            this.rtbXPADC.Text = "";
            // 
            // tpGeneral
            // 
            this.tpGeneral.Controls.Add(this.rtbConsole);
            this.tpGeneral.Location = new System.Drawing.Point(4, 24);
            this.tpGeneral.Name = "tpGeneral";
            this.tpGeneral.Padding = new System.Windows.Forms.Padding(3);
            this.tpGeneral.Size = new System.Drawing.Size(1487, 654);
            this.tpGeneral.TabIndex = 0;
            this.tpGeneral.Text = "Console";
            this.tpGeneral.UseVisualStyleBackColor = true;
            // 
            // rtbConsole
            // 
            this.rtbConsole.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtbConsole.Location = new System.Drawing.Point(3, 3);
            this.rtbConsole.Name = "rtbConsole";
            this.rtbConsole.Size = new System.Drawing.Size(1481, 648);
            this.rtbConsole.TabIndex = 0;
            this.rtbConsole.Text = "";
            // 
            // xp
            // 
            this.xp.Controls.Add(this.tpGeneral);
            this.xp.Controls.Add(this.tpX);
            this.xp.Controls.Add(this.tabY);
            this.xp.Dock = System.Windows.Forms.DockStyle.Fill;
            this.xp.Location = new System.Drawing.Point(0, 30);
            this.xp.Name = "xp";
            this.xp.SelectedIndex = 0;
            this.xp.Size = new System.Drawing.Size(1495, 682);
            this.xp.TabIndex = 2;
            // 
            // tabY
            // 
            this.tabY.Controls.Add(this.tableLayoutPanel2);
            this.tabY.Location = new System.Drawing.Point(4, 24);
            this.tabY.Name = "tabY";
            this.tabY.Size = new System.Drawing.Size(1487, 654);
            this.tabY.TabIndex = 2;
            this.tabY.Text = "Y";
            this.tabY.UseVisualStyleBackColor = true;
            // 
            // tableLayoutPanel2
            // 
            this.tableLayoutPanel2.ColumnCount = 3;
            this.tableLayoutPanel2.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 33.33333F));
            this.tableLayoutPanel2.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 33.33333F));
            this.tableLayoutPanel2.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 33.33333F));
            this.tableLayoutPanel2.Controls.Add(this.groupBox4, 2, 0);
            this.tableLayoutPanel2.Controls.Add(this.groupBox5, 1, 0);
            this.tableLayoutPanel2.Controls.Add(this.groupBox6, 0, 0);
            this.tableLayoutPanel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel2.Location = new System.Drawing.Point(0, 0);
            this.tableLayoutPanel2.Name = "tableLayoutPanel2";
            this.tableLayoutPanel2.RowCount = 1;
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanel2.Size = new System.Drawing.Size(1487, 654);
            this.tableLayoutPanel2.TabIndex = 4;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.rtbYDAC);
            this.groupBox4.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox4.Location = new System.Drawing.Point(993, 3);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(491, 648);
            this.groupBox4.TabIndex = 6;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "YDAC (+/-10V, LSB=0.305mV)";
            // 
            // rtbYDAC
            // 
            this.rtbYDAC.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtbYDAC.Location = new System.Drawing.Point(3, 19);
            this.rtbYDAC.Name = "rtbYDAC";
            this.rtbYDAC.Size = new System.Drawing.Size(485, 626);
            this.rtbYDAC.TabIndex = 1;
            this.rtbYDAC.Text = "";
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.rtbYIADC);
            this.groupBox5.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox5.Location = new System.Drawing.Point(498, 3);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(489, 648);
            this.groupBox5.TabIndex = 5;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "YIADC (+/-320mV, LSB = ~10uV)";
            // 
            // rtbYIADC
            // 
            this.rtbYIADC.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtbYIADC.Location = new System.Drawing.Point(3, 19);
            this.rtbYIADC.Name = "rtbYIADC";
            this.rtbYIADC.Size = new System.Drawing.Size(483, 626);
            this.rtbYIADC.TabIndex = 1;
            this.rtbYIADC.Text = "";
            // 
            // groupBox6
            // 
            this.groupBox6.Controls.Add(this.rtbYPADC);
            this.groupBox6.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox6.Location = new System.Drawing.Point(3, 3);
            this.groupBox6.Name = "groupBox6";
            this.groupBox6.Size = new System.Drawing.Size(489, 648);
            this.groupBox6.TabIndex = 4;
            this.groupBox6.TabStop = false;
            this.groupBox6.Text = "YPADC (+/-10.24V, LSB = 0.313mV)";
            // 
            // rtbYPADC
            // 
            this.rtbYPADC.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtbYPADC.Location = new System.Drawing.Point(3, 19);
            this.rtbYPADC.Name = "rtbYPADC";
            this.rtbYPADC.Size = new System.Drawing.Size(483, 626);
            this.rtbYPADC.TabIndex = 1;
            this.rtbYPADC.Text = "";
            // 
            // FormMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1495, 742);
            this.Controls.Add(this.xp);
            this.Controls.Add(this.flowLayoutPanel2);
            this.Controls.Add(this.flowLayoutPanel1);
            this.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "FormMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Galvo Debug";
            this.flowLayoutPanel1.ResumeLayout(false);
            this.flowLayoutPanel2.ResumeLayout(false);
            this.flowLayoutPanel2.PerformLayout();
            this.tpX.ResumeLayout(false);
            this.tableLayoutPanel1.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.tpGeneral.ResumeLayout(false);
            this.xp.ResumeLayout(false);
            this.tabY.ResumeLayout(false);
            this.tableLayoutPanel2.ResumeLayout(false);
            this.groupBox4.ResumeLayout(false);
            this.groupBox5.ResumeLayout(false);
            this.groupBox6.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnConnect;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.TextBox tbAddress;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel2;
        private System.Windows.Forms.Button btnWrite;
        private System.Windows.Forms.ComboBox cbUarts;
        private System.Windows.Forms.ComboBox cbBaudrate;
        private System.Windows.Forms.Button btnRefresh;
        private System.Windows.Forms.Button btnClear;
        private System.Windows.Forms.Label lblAddress;
        private System.Windows.Forms.Button btnRead;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox tbData;
        private System.Windows.Forms.TabPage tpX;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.RichTextBox rtbXPADC;
        private System.Windows.Forms.TabPage tpGeneral;
        private System.Windows.Forms.RichTextBox rtbConsole;
        private System.Windows.Forms.TabControl xp;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.RichTextBox rtbXDAC;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.RichTextBox rtbXIADC;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TabPage tabY;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel2;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.RichTextBox rtbYDAC;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.RichTextBox rtbYIADC;
        private System.Windows.Forms.GroupBox groupBox6;
        private System.Windows.Forms.RichTextBox rtbYPADC;
    }
}

