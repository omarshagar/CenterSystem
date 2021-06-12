namespace FekyTask
{
    partial class InsturctorForm
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
            this.menuPanle = new System.Windows.Forms.Panel();
            this.addCourseBYN = new System.Windows.Forms.Button();
            this.viewCourseBTN = new System.Windows.Forms.Button();
            this.instInfoBTN = new System.Windows.Forms.Button();
            this.logoPanle = new System.Windows.Forms.Panel();
            this.instLable = new System.Windows.Forms.Label();
            this.mainPanle = new System.Windows.Forms.Panel();
            this.button1 = new System.Windows.Forms.Button();
            this.menuPanle.SuspendLayout();
            this.logoPanle.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuPanle
            // 
            this.menuPanle.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(39)))), ((int)(((byte)(39)))), ((int)(((byte)(58)))));
            this.menuPanle.Controls.Add(this.button1);
            this.menuPanle.Controls.Add(this.addCourseBYN);
            this.menuPanle.Controls.Add(this.viewCourseBTN);
            this.menuPanle.Controls.Add(this.instInfoBTN);
            this.menuPanle.Controls.Add(this.logoPanle);
            this.menuPanle.Dock = System.Windows.Forms.DockStyle.Left;
            this.menuPanle.Location = new System.Drawing.Point(0, 0);
            this.menuPanle.Name = "menuPanle";
            this.menuPanle.Size = new System.Drawing.Size(220, 682);
            this.menuPanle.TabIndex = 0;
            // 
            // addCourseBYN
            // 
            this.addCourseBYN.Dock = System.Windows.Forms.DockStyle.Top;
            this.addCourseBYN.FlatAppearance.BorderSize = 0;
            this.addCourseBYN.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.addCourseBYN.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.addCourseBYN.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.addCourseBYN.Location = new System.Drawing.Point(0, 239);
            this.addCourseBYN.Name = "addCourseBYN";
            this.addCourseBYN.Size = new System.Drawing.Size(220, 50);
            this.addCourseBYN.TabIndex = 3;
            this.addCourseBYN.Text = "Add Course";
            this.addCourseBYN.UseVisualStyleBackColor = true;
            this.addCourseBYN.Click += new System.EventHandler(this.addCourseBYN_Click);
            // 
            // viewCourseBTN
            // 
            this.viewCourseBTN.Dock = System.Windows.Forms.DockStyle.Top;
            this.viewCourseBTN.FlatAppearance.BorderSize = 0;
            this.viewCourseBTN.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.viewCourseBTN.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.viewCourseBTN.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.viewCourseBTN.Location = new System.Drawing.Point(0, 189);
            this.viewCourseBTN.Name = "viewCourseBTN";
            this.viewCourseBTN.Size = new System.Drawing.Size(220, 50);
            this.viewCourseBTN.TabIndex = 2;
            this.viewCourseBTN.Text = "View Course";
            this.viewCourseBTN.UseVisualStyleBackColor = true;
            this.viewCourseBTN.Click += new System.EventHandler(this.viewCourseBTN_Click);
            // 
            // instInfoBTN
            // 
            this.instInfoBTN.Dock = System.Windows.Forms.DockStyle.Top;
            this.instInfoBTN.FlatAppearance.BorderSize = 0;
            this.instInfoBTN.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.instInfoBTN.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.instInfoBTN.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.instInfoBTN.Location = new System.Drawing.Point(0, 139);
            this.instInfoBTN.Name = "instInfoBTN";
            this.instInfoBTN.Size = new System.Drawing.Size(220, 50);
            this.instInfoBTN.TabIndex = 1;
            this.instInfoBTN.Text = "Information";
            this.instInfoBTN.UseVisualStyleBackColor = true;
            this.instInfoBTN.Click += new System.EventHandler(this.instInfoBTN_Click);
            // 
            // logoPanle
            // 
            this.logoPanle.Controls.Add(this.instLable);
            this.logoPanle.Dock = System.Windows.Forms.DockStyle.Top;
            this.logoPanle.Location = new System.Drawing.Point(0, 0);
            this.logoPanle.Name = "logoPanle";
            this.logoPanle.Size = new System.Drawing.Size(220, 139);
            this.logoPanle.TabIndex = 0;
            // 
            // instLable
            // 
            this.instLable.AutoSize = true;
            this.instLable.Font = new System.Drawing.Font("Microsoft Sans Serif", 25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.instLable.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.instLable.Location = new System.Drawing.Point(12, 28);
            this.instLable.Name = "instLable";
            this.instLable.Size = new System.Drawing.Size(158, 39);
            this.instLable.TabIndex = 0;
            this.instLable.Text = "Instructor";
            // 
            // mainPanle
            // 
            this.mainPanle.Dock = System.Windows.Forms.DockStyle.Fill;
            this.mainPanle.Location = new System.Drawing.Point(220, 0);
            this.mainPanle.Name = "mainPanle";
            this.mainPanle.Size = new System.Drawing.Size(983, 682);
            this.mainPanle.TabIndex = 2;
            // 
            // button1
            // 
            this.button1.Dock = System.Windows.Forms.DockStyle.Top;
            this.button1.FlatAppearance.BorderSize = 0;
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.button1.Location = new System.Drawing.Point(0, 289);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(220, 50);
            this.button1.TabIndex = 4;
            this.button1.Text = "Log Out";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // InsturctorForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1203, 682);
            this.Controls.Add(this.mainPanle);
            this.Controls.Add(this.menuPanle);
            this.Name = "InsturctorForm";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.InsturctorForm_Load);
            this.menuPanle.ResumeLayout(false);
            this.logoPanle.ResumeLayout(false);
            this.logoPanle.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel menuPanle;
        private System.Windows.Forms.Panel logoPanle;
        private System.Windows.Forms.Label instLable;
        private System.Windows.Forms.Button instInfoBTN;
        private System.Windows.Forms.Button addCourseBYN;
        private System.Windows.Forms.Button viewCourseBTN;
        private System.Windows.Forms.Panel mainPanle;
        private System.Windows.Forms.Button button1;
    }
}

