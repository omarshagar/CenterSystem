namespace CourseSystem
{
    partial class Enrollment_form
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
            this.panel2 = new System.Windows.Forms.Panel();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.Course = new System.Windows.Forms.Label();
            this.cancel = new System.Windows.Forms.Button();
            this.save = new System.Windows.Forms.Button();
            this.start_date = new System.Windows.Forms.Label();
            this.num_of_student = new System.Windows.Forms.Label();
            this.cost = new System.Windows.Forms.Label();
            this.numofsessions = new System.Windows.Forms.Label();
            this.duration_of_one_session = new System.Windows.Forms.Label();
            this.end_date = new System.Windows.Forms.Label();
            this.doctor = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.backgroundWorker2 = new System.ComponentModel.BackgroundWorker();
            this.panel1 = new System.Windows.Forms.Panel();
            this.course_name = new System.Windows.Forms.Label();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.White;
            this.panel2.Controls.Add(this.course_name);
            this.panel2.Controls.Add(this.label7);
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.label5);
            this.panel2.Controls.Add(this.label4);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.Course);
            this.panel2.Controls.Add(this.cancel);
            this.panel2.Controls.Add(this.save);
            this.panel2.Controls.Add(this.start_date);
            this.panel2.Controls.Add(this.num_of_student);
            this.panel2.Controls.Add(this.cost);
            this.panel2.Controls.Add(this.numofsessions);
            this.panel2.Controls.Add(this.duration_of_one_session);
            this.panel2.Controls.Add(this.end_date);
            this.panel2.Controls.Add(this.doctor);
            this.panel2.Controls.Add(this.pictureBox1);
            this.panel2.Location = new System.Drawing.Point(40, 56);
            this.panel2.Margin = new System.Windows.Forms.Padding(2);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(918, 553);
            this.panel2.TabIndex = 1;
            this.panel2.Paint += new System.Windows.Forms.PaintEventHandler(this.panel2_Paint);
            // 
            // label7
            // 
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(549, 197);
            this.label7.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(75, 30);
            this.label7.TabIndex = 48;
            this.label7.Text = "DR:";
            // 
            // label6
            // 
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(497, 349);
            this.label6.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(171, 30);
            this.label6.TabIndex = 47;
            this.label6.Text = "Session Duration";
            this.label6.Click += new System.EventHandler(this.label6_Click);
            // 
            // label5
            // 
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(526, 272);
            this.label5.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(104, 30);
            this.label5.TabIndex = 46;
            this.label5.Text = "End Date";
            // 
            // label4
            // 
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(39, 473);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(111, 44);
            this.label4.TabIndex = 45;
            this.label4.Text = "Number of Sessions";
            // 
            // label3
            // 
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(61, 421);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 30);
            this.label3.TabIndex = 44;
            this.label3.Text = "Price";
            // 
            // label2
            // 
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(10, 326);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(180, 55);
            this.label2.TabIndex = 43;
            this.label2.Text = "Number of Students Enrolled";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(37, 263);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(113, 30);
            this.label1.TabIndex = 42;
            this.label1.Text = "Start Date";
            // 
            // Course
            // 
            this.Course.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Course.Location = new System.Drawing.Point(23, 202);
            this.Course.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.Course.Name = "Course";
            this.Course.Size = new System.Drawing.Size(150, 30);
            this.Course.TabIndex = 41;
            this.Course.Text = "Course Name";
            // 
            // cancel
            // 
            this.cancel.BackColor = System.Drawing.Color.RoyalBlue;
            this.cancel.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cancel.ForeColor = System.Drawing.SystemColors.Control;
            this.cancel.Location = new System.Drawing.Point(772, 479);
            this.cancel.Margin = new System.Windows.Forms.Padding(2);
            this.cancel.Name = "cancel";
            this.cancel.Size = new System.Drawing.Size(110, 38);
            this.cancel.TabIndex = 40;
            this.cancel.Text = "Cancel";
            this.cancel.UseVisualStyleBackColor = false;
            this.cancel.Click += new System.EventHandler(this.cancel_Click);
            // 
            // save
            // 
            this.save.BackColor = System.Drawing.Color.RoyalBlue;
            this.save.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.save.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.save.Location = new System.Drawing.Point(628, 479);
            this.save.Margin = new System.Windows.Forms.Padding(2);
            this.save.Name = "save";
            this.save.Size = new System.Drawing.Size(110, 38);
            this.save.TabIndex = 38;
            this.save.Text = "Save";
            this.save.UseVisualStyleBackColor = false;
            this.save.Click += new System.EventHandler(this.save_Click);
            // 
            // start_date
            // 
            this.start_date.Font = new System.Drawing.Font("Microsoft Tai Le", 12.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.start_date.ForeColor = System.Drawing.Color.RoyalBlue;
            this.start_date.Location = new System.Drawing.Point(183, 263);
            this.start_date.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.start_date.Name = "start_date";
            this.start_date.Size = new System.Drawing.Size(244, 32);
            this.start_date.TabIndex = 37;
            this.start_date.Text = "label1";
            this.start_date.Click += new System.EventHandler(this.start_date_Click);
            // 
            // num_of_student
            // 
            this.num_of_student.Font = new System.Drawing.Font("Microsoft Tai Le", 12.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.num_of_student.ForeColor = System.Drawing.Color.RoyalBlue;
            this.num_of_student.Location = new System.Drawing.Point(194, 349);
            this.num_of_student.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.num_of_student.Name = "num_of_student";
            this.num_of_student.Size = new System.Drawing.Size(75, 32);
            this.num_of_student.TabIndex = 36;
            this.num_of_student.Text = "label1";
            this.num_of_student.Click += new System.EventHandler(this.num_of_student_Click);
            // 
            // cost
            // 
            this.cost.Font = new System.Drawing.Font("Microsoft Tai Le", 12.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cost.ForeColor = System.Drawing.Color.RoyalBlue;
            this.cost.Location = new System.Drawing.Point(194, 421);
            this.cost.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.cost.Name = "cost";
            this.cost.Size = new System.Drawing.Size(75, 32);
            this.cost.TabIndex = 35;
            this.cost.Text = "label1";
            this.cost.Click += new System.EventHandler(this.cost_Click);
            // 
            // numofsessions
            // 
            this.numofsessions.Font = new System.Drawing.Font("Microsoft Tai Le", 12.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.numofsessions.ForeColor = System.Drawing.Color.RoyalBlue;
            this.numofsessions.Location = new System.Drawing.Point(194, 488);
            this.numofsessions.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.numofsessions.Name = "numofsessions";
            this.numofsessions.Size = new System.Drawing.Size(69, 32);
            this.numofsessions.TabIndex = 34;
            this.numofsessions.Text = "label1";
            this.numofsessions.Click += new System.EventHandler(this.numofsessions_Click);
            // 
            // duration_of_one_session
            // 
            this.duration_of_one_session.Font = new System.Drawing.Font("Microsoft Tai Le", 12.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.duration_of_one_session.ForeColor = System.Drawing.Color.RoyalBlue;
            this.duration_of_one_session.Location = new System.Drawing.Point(672, 349);
            this.duration_of_one_session.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.duration_of_one_session.Name = "duration_of_one_session";
            this.duration_of_one_session.Size = new System.Drawing.Size(74, 32);
            this.duration_of_one_session.TabIndex = 32;
            this.duration_of_one_session.Text = "label3";
            this.duration_of_one_session.Click += new System.EventHandler(this.duration_of_one_session_Click);
            // 
            // end_date
            // 
            this.end_date.Font = new System.Drawing.Font("Microsoft Tai Le", 12.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.end_date.ForeColor = System.Drawing.Color.RoyalBlue;
            this.end_date.Location = new System.Drawing.Point(672, 272);
            this.end_date.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.end_date.Name = "end_date";
            this.end_date.Size = new System.Drawing.Size(244, 32);
            this.end_date.TabIndex = 31;
            this.end_date.Text = "label2";
            this.end_date.Click += new System.EventHandler(this.end_date_Click);
            // 
            // doctor
            // 
            this.doctor.Font = new System.Drawing.Font("Microsoft Tai Le", 12.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.doctor.ForeColor = System.Drawing.Color.RoyalBlue;
            this.doctor.Location = new System.Drawing.Point(672, 197);
            this.doctor.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.doctor.Name = "doctor";
            this.doctor.Size = new System.Drawing.Size(244, 32);
            this.doctor.TabIndex = 30;
            this.doctor.Text = "label1";
            this.doctor.Click += new System.EventHandler(this.doctor_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::CourseSystem.Properties.Resources.enroll_smartphone_finance_icon_simple_260nw_1674463246_update;
            this.pictureBox1.Location = new System.Drawing.Point(382, 0);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(2);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(148, 158);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.RoyalBlue;
            this.panel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.panel1.Location = new System.Drawing.Point(-1, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(991, 102);
            this.panel1.TabIndex = 0;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // course_name
            // 
            this.course_name.Font = new System.Drawing.Font("Microsoft Tai Le", 12.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.course_name.ForeColor = System.Drawing.Color.RoyalBlue;
            this.course_name.Location = new System.Drawing.Point(183, 202);
            this.course_name.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.course_name.Name = "course_name";
            this.course_name.Size = new System.Drawing.Size(244, 30);
            this.course_name.TabIndex = 50;
            this.course_name.Text = "label4";
            // 
            // Enrollment_form
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.ClientSize = new System.Drawing.Size(992, 612);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "Enrollment_form";
            this.Text = "Enrollment_form";
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.ComponentModel.BackgroundWorker backgroundWorker2;
        private System.Windows.Forms.Label duration_of_one_session;
        private System.Windows.Forms.Label end_date;
        private System.Windows.Forms.Label doctor;
        private System.Windows.Forms.Label start_date;
        private System.Windows.Forms.Label num_of_student;
        private System.Windows.Forms.Label cost;
        private System.Windows.Forms.Label numofsessions;
        private System.Windows.Forms.Button save;
        private System.Windows.Forms.Button cancel;
        private System.Windows.Forms.Label Course;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label course_name;
    }
}