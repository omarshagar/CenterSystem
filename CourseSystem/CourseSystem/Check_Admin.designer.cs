namespace CourseSystem.UI
{
    partial class Check_Admin
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
            this.passwordtxt1 = new CourseSystem.Model.UserControlModels.Passwordtxt();
            this.userNametxt1 = new CourseSystem.Model.UserControlModels.UserNametxt();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // passwordtxt1
            // 
            this.passwordtxt1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.passwordtxt1.Location = new System.Drawing.Point(25, 106);
            this.passwordtxt1.Name = "passwordtxt1";
            this.passwordtxt1.Password = null;
            this.passwordtxt1.Size = new System.Drawing.Size(305, 32);
            this.passwordtxt1.TabIndex = 0;
            // 
            // userNametxt1
            // 
            this.userNametxt1.BackColor = System.Drawing.SystemColors.ControlLight;
            this.userNametxt1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.userNametxt1.Location = new System.Drawing.Point(25, 53);
            this.userNametxt1.Name = "userNametxt1";
            this.userNametxt1.Size = new System.Drawing.Size(305, 31);
            this.userNametxt1.TabIndex = 1;
            this.userNametxt1.User_Name = null;
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.RoyalBlue;
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.ForeColor = System.Drawing.Color.White;
            this.button1.Location = new System.Drawing.Point(222, 167);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(108, 28);
            this.button1.TabIndex = 2;
            this.button1.Text = "Check";
            this.button1.UseVisualStyleBackColor = false;
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.Color.Red;
            this.button2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button2.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button2.ForeColor = System.Drawing.Color.White;
            this.button2.Location = new System.Drawing.Point(108, 167);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(108, 28);
            this.button2.TabIndex = 3;
            this.button2.Text = "Cancel";
            this.button2.UseVisualStyleBackColor = false;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // Check_Admin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(358, 211);
            this.ControlBox = false;
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.userNametxt1);
            this.Controls.Add(this.passwordtxt1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Name = "Check_Admin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.Check_Admin_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private Model.UserControlModels.Passwordtxt passwordtxt1;
        private Model.UserControlModels.UserNametxt userNametxt1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
    }
}