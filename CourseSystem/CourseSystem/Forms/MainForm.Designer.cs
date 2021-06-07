
namespace CourseSystem.Forms
{
    partial class MainForm
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
            this.AdminButton = new CourseSystem.Controls.BIcon();
            this.StudentButton = new CourseSystem.Controls.BIcon();
            this.InstructorButton = new CourseSystem.Controls.BIcon();
            this.SuspendLayout();
            // 
            // AdminButton
            // 
            this.AdminButton.BackColor = System.Drawing.Color.Transparent;
            this.AdminButton.ForeColor = System.Drawing.Color.Transparent;
            this.AdminButton.Location = new System.Drawing.Point(58, 144);
            this.AdminButton.Name = "AdminButton";
            this.AdminButton.Size = new System.Drawing.Size(163, 142);
            this.AdminButton.TabIndex = 0;
            this.AdminButton.Load += new System.EventHandler(this.StudentButton_Load);
            // 
            // StudentButton
            // 
            this.StudentButton.BackColor = System.Drawing.Color.Transparent;
            this.StudentButton.ForeColor = System.Drawing.Color.Transparent;
            this.StudentButton.Location = new System.Drawing.Point(320, 144);
            this.StudentButton.Name = "StudentButton";
            this.StudentButton.Size = new System.Drawing.Size(163, 142);
            this.StudentButton.TabIndex = 1;
            // 
            // InstructorButton
            // 
            this.InstructorButton.BackColor = System.Drawing.Color.Transparent;
            this.InstructorButton.ForeColor = System.Drawing.Color.Transparent;
            this.InstructorButton.Location = new System.Drawing.Point(578, 144);
            this.InstructorButton.Name = "InstructorButton";
            this.InstructorButton.Size = new System.Drawing.Size(163, 142);
            this.InstructorButton.TabIndex = 2;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.InstructorButton);
            this.Controls.Add(this.StudentButton);
            this.Controls.Add(this.AdminButton);
            this.Location = new System.Drawing.Point(0, 0);
            this.Name = "MainForm";
            this.Text = "MainForm";
            this.ResumeLayout(false);

        }

        #endregion

        private Controls.BIcon AdminButton;
        private Controls.BIcon StudentButton;
        private Controls.BIcon InstructorButton;
    }
}