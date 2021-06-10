
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
            this.AdminButton.Location = new System.Drawing.Point(65, 177);
            this.AdminButton.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.AdminButton.Name = "AdminButton";
            this.AdminButton.Size = new System.Drawing.Size(217, 175);
            this.AdminButton.TabIndex = 0;
            this.AdminButton.Click += new System.EventHandler(this.AdminButton_Click);
            this.AdminButton.Load += new System.EventHandler(this.AdminButton_Load);
            // 
            // StudentButton
            // 
            this.StudentButton.BackColor = System.Drawing.Color.Transparent;
            this.StudentButton.ForeColor = System.Drawing.Color.Transparent;
            this.StudentButton.Location = new System.Drawing.Point(427, 177);
            this.StudentButton.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.StudentButton.Name = "StudentButton";
            this.StudentButton.Size = new System.Drawing.Size(217, 175);
            this.StudentButton.TabIndex = 1;
            this.StudentButton.Click += new System.EventHandler(this.StudentButton_Click);
            // 
            // InstructorButton
            // 
            this.InstructorButton.BackColor = System.Drawing.Color.Transparent;
            this.InstructorButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.InstructorButton.ForeColor = System.Drawing.Color.Transparent;
            this.InstructorButton.Location = new System.Drawing.Point(771, 177);
            this.InstructorButton.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.InstructorButton.Name = "InstructorButton";
            this.InstructorButton.Size = new System.Drawing.Size(217, 175);
            this.InstructorButton.TabIndex = 2;
            this.InstructorButton.Click += new System.EventHandler(this.InstructorButton_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1067, 554);
            this.Controls.Add(this.InstructorButton);
            this.Controls.Add(this.StudentButton);
            this.Controls.Add(this.AdminButton);
            this.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.Name = "MainForm";
            this.Text = "MainForm";
            this.Load += new System.EventHandler(this.OnLoad);
            this.Controls.SetChildIndex(this.AdminButton, 0);
            this.Controls.SetChildIndex(this.StudentButton, 0);
            this.Controls.SetChildIndex(this.InstructorButton, 0);
            this.ResumeLayout(false);

        }

        #endregion

        private Controls.BIcon AdminButton;
        private Controls.BIcon StudentButton;
        private Controls.BIcon InstructorButton;
    }
}