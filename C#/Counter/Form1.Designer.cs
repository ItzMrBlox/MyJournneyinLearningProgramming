namespace Counter
{
    partial class Counter
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
            this.button1Pos = new System.Windows.Forms.Button();
            this.button1Neg = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.button5Neg = new System.Windows.Forms.Button();
            this.button5Pos = new System.Windows.Forms.Button();
            this.button10Pos = new System.Windows.Forms.Button();
            this.button10Neg = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // button1Pos
            // 
            this.button1Pos.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.button1Pos.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1Pos.Location = new System.Drawing.Point(13, 239);
            this.button1Pos.Margin = new System.Windows.Forms.Padding(0);
            this.button1Pos.Name = "button1Pos";
            this.button1Pos.Size = new System.Drawing.Size(129, 73);
            this.button1Pos.TabIndex = 0;
            this.button1Pos.Text = "+1";
            this.button1Pos.UseVisualStyleBackColor = true;
            this.button1Pos.Click += new System.EventHandler(this.button1Pos_Click);
            // 
            // button1Neg
            // 
            this.button1Neg.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.button1Neg.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1Neg.Location = new System.Drawing.Point(13, 322);
            this.button1Neg.Margin = new System.Windows.Forms.Padding(0);
            this.button1Neg.Name = "button1Neg";
            this.button1Neg.Size = new System.Drawing.Size(129, 73);
            this.button1Neg.TabIndex = 1;
            this.button1Neg.Text = "-1";
            this.button1Neg.UseVisualStyleBackColor = true;
            this.button1Neg.Click += new System.EventHandler(this.button1Neg_Click);
            // 
            // textBox1
            // 
            this.textBox1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.textBox1.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.textBox1.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.textBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 130F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBox1.Location = new System.Drawing.Point(13, 13);
            this.textBox1.Multiline = true;
            this.textBox1.Name = "textBox1";
            this.textBox1.ReadOnly = true;
            this.textBox1.Size = new System.Drawing.Size(459, 179);
            this.textBox1.TabIndex = 2;
            this.textBox1.Text = "0";
            this.textBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // button5Neg
            // 
            this.button5Neg.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.button5Neg.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button5Neg.Location = new System.Drawing.Point(183, 322);
            this.button5Neg.Margin = new System.Windows.Forms.Padding(0);
            this.button5Neg.Name = "button5Neg";
            this.button5Neg.Size = new System.Drawing.Size(129, 73);
            this.button5Neg.TabIndex = 4;
            this.button5Neg.Text = "-5";
            this.button5Neg.UseVisualStyleBackColor = true;
            this.button5Neg.Click += new System.EventHandler(this.button5Neg_Click);
            // 
            // button5Pos
            // 
            this.button5Pos.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.button5Pos.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button5Pos.Location = new System.Drawing.Point(183, 239);
            this.button5Pos.Margin = new System.Windows.Forms.Padding(0);
            this.button5Pos.Name = "button5Pos";
            this.button5Pos.Size = new System.Drawing.Size(129, 73);
            this.button5Pos.TabIndex = 3;
            this.button5Pos.Text = "+5";
            this.button5Pos.UseVisualStyleBackColor = true;
            this.button5Pos.Click += new System.EventHandler(this.button5Pos_Click);
            // 
            // button10Pos
            // 
            this.button10Pos.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.button10Pos.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button10Pos.Location = new System.Drawing.Point(343, 239);
            this.button10Pos.Margin = new System.Windows.Forms.Padding(0);
            this.button10Pos.Name = "button10Pos";
            this.button10Pos.Size = new System.Drawing.Size(129, 73);
            this.button10Pos.TabIndex = 5;
            this.button10Pos.Text = "+10";
            this.button10Pos.UseVisualStyleBackColor = true;
            this.button10Pos.Click += new System.EventHandler(this.button10Pos_Click);
            // 
            // button10Neg
            // 
            this.button10Neg.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.button10Neg.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button10Neg.Location = new System.Drawing.Point(343, 322);
            this.button10Neg.Margin = new System.Windows.Forms.Padding(0);
            this.button10Neg.Name = "button10Neg";
            this.button10Neg.Size = new System.Drawing.Size(129, 73);
            this.button10Neg.TabIndex = 6;
            this.button10Neg.Text = "-10";
            this.button10Neg.UseVisualStyleBackColor = true;
            this.button10Neg.Click += new System.EventHandler(this.button10Neg_Click);
            // 
            // Counter
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.ClientSize = new System.Drawing.Size(484, 404);
            this.Controls.Add(this.button10Neg);
            this.Controls.Add(this.button10Pos);
            this.Controls.Add(this.button5Neg);
            this.Controls.Add(this.button5Pos);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.button1Pos);
            this.Controls.Add(this.button1Neg);
            this.Name = "Counter";
            this.Text = "Counter";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1Pos;
        private System.Windows.Forms.Button button1Neg;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Button button5Neg;
        private System.Windows.Forms.Button button5Pos;
        private System.Windows.Forms.Button button10Pos;
        private System.Windows.Forms.Button button10Neg;
    }
}

