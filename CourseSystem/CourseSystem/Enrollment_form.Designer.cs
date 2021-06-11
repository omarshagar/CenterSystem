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
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.cancel = new System.Windows.Forms.Button();
            this.save = new System.Windows.Forms.Button();
            this.start_date = new System.Windows.Forms.Label();
            this.num_of_student = new System.Windows.Forms.Label();
            this.cost = new System.Windows.Forms.Label();
            this.numofsessions = new System.Windows.Forms.Label();
            this.course_name = new System.Windows.Forms.Label();
            this.duration_of_one_session = new System.Windows.Forms.Label();
            this.end_date = new System.Windows.Forms.Label();
            this.doctor = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.backgroundWorker2 = new System.ComponentModel.BackgroundWorker();
            this.Course = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.RoyalBlue;
            this.panel1.Location = new System.Drawing.Point(-1, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1321, 126);
            this.panel1.TabIndex = 0;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.White;
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
            this.panel2.Controls.Add(this.course_name);
            this.panel2.Controls.Add(this.duration_of_one_session);
            this.panel2.Controls.Add(this.end_date);
            this.panel2.Controls.Add(this.doctor);
            this.panel2.Controls.Add(this.pictureBox1);
            this.panel2.Location = new System.Drawing.Point(54, 69);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1224, 681);
            this.panel2.TabIndex = 1;
            this.panel2.Paint += new System.Windows.Forms.PaintEventHandler(this.panel2_Paint);
            // 
            // cancel
            // 
            this.cancel.Location = new System.Drawing.Point(1030, 589);
            this.cancel.Name = "cancel";
            this.cancel.Size = new System.Drawing.Size(147, 47);
            this.cancel.TabIndex = 40;
            this.cancel.Text = "Cancel";
            this.cancel.UseVisualStyleBackColor = true;
            this.cancel.Click += new System.EventHandler(this.cancel_Click);
            // 
            // save
            // 
            this.save.Location = new System.Drawing.Point(838, 589);
            this.save.Name = "save";
            this.save.Size = new System.Drawing.Size(147, 47);
            this.save.TabIndex = 38;
            this.save.Text = "Save";
            this.save.UseVisualStyleBackColor = true;
            this.save.Click += new System.EventHandler(this.save_Click);
            // 
            // start_date
            // 
            this.start_date.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.start_date.Location = new System.Drawing.Point(236, 324);
            this.start_date.Name = "start_date";
            this.start_date.Size = new System.Drawing.Size(325, 39);
            this.start_date.TabIndex = 37;
            this.start_date.Text = "label1";
            this.start_date.Click += new System.EventHandler(this.start_date_Click);
            // 
            // num_of_student
            // 
            this.num_of_student.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.num_of_student.Location = new System.Drawing.Point(236, 429);
            this.num_of_student.Name = "num_of_student";
            this.num_of_student.Size = new System.Drawing.Size(325, 39);
            this.num_of_student.TabIndex = 36;
            this.num_of_student.Text = "label1";
            this.num_of_student.Click += new System.EventHandler(this.num_of_student_Click);
            // 
            // cost
            // 
            this.cost.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cost.Location = new System.Drawing.Point(236, 526);
            this.cost.Name = "cost";
            this.cost.Size = new System.Drawing.Size(325, 39);
            this.cost.TabIndex = 35;
            this.cost.Text = "label1";
            this.cost.Click += new System.EventHandler(this.cost_Click);
            // 
            // numofsessions
            // 
            this.numofsessions.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.numofsessions.Location = new System.Drawing.Point(236, 603);
            this.numofsessions.Name = "numofsessions";
            this.numofsessions.Size = new System.Drawing.Size(325, 39);
            this.numofsessions.TabIndex = 34;
            this.numofsessions.Text = "label1";
            this.numofsessions.Click += new System.EventHandler(this.numofsessions_Click);
            // 
            // course_name
            // 
            this.course_name.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.course_name.Location = new System.Drawing.Point(236, 250);
            this.course_name.Name = "course_name";
            this.course_name.Size = new System.Drawing.Size(325, 39);
            this.course_name.TabIndex = 33;
            this.course_name.Text = "label4";
            this.course_name.Click += new System.EventHandler(this.course_name_Click);
            // 
            // duration_of_one_session
            // 
            this.duration_of_one_session.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.duration_of_one_session.Location = new System.Drawing.Point(896, 429);
            this.duration_of_one_session.Name = "duration_of_one_session";
            this.duration_of_one_session.Size = new System.Drawing.Size(325, 39);
            this.duration_of_one_session.TabIndex = 32;
            this.duration_of_one_session.Text = "label3";
            this.duration_of_one_session.Click += new System.EventHandler(this.duration_of_one_session_Click);
            // 
            // end_date
            // 
            this.end_date.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.end_date.Location = new System.Drawing.Point(896, 335);
            this.end_date.Name = "end_date";
            this.end_date.Size = new System.Drawing.Size(325, 39);
            this.end_date.TabIndex = 31;
            this.end_date.Text = "label2";
            this.end_date.Click += new System.EventHandler(this.end_date_Click);
            // 
            // doctor
            // 
            this.doctor.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.doctor.Location = new System.Drawing.Point(896, 242);
            this.doctor.Name = "doctor";
            this.doctor.Size = new System.Drawing.Size(325, 39);
            this.doctor.TabIndex = 30;
            this.doctor.Text = "label1";
            this.doctor.Click += new System.EventHandler(this.doctor_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::CourseSystem.Properties.Resources.enroll_smartphone_finance_icon_simple_260nw_1674463246_update;
            this.pictureBox1.Location = new System.Drawing.Point(509, 0);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(197, 194);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // Course
            // 
            this.Course.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Course.Location = new System.Drawing.Point(5, 250);
            this.Course.Name = "Course";
            this.Course.Size = new System.Drawing.Size(115, 37);
            this.Course.TabIndex = 41;
            this.Course.Text = "Course:";
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(5, 324);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(145, 37);
            this.label1.TabIndex = 42;
            this.label1.Text = "start_date:";
            // 
            // label2
            // 
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(5, 431);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(232, 37);
            this.label2.TabIndex = 43;
            this.label2.Text = "Num_of_students:";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // label3
            // 
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(3, 526);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(117, 37);
            this.label3.TabIndex = 44;
            this.label3.Text = "Cost:";
            // 
            // label4
            // 
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(3, 603);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(229, 37);
            this.label4.TabIndex = 45;
            this.label4.Text = "Num_of_sessins:";
            // 
            // label5
            // 
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(726, 335);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(139, 37);
            this.label5.TabIndex = 46;
            this.label5.Text = "End_date:";
            // 
            // label6
            // 
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(565, 427);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(333, 37);
            this.label6.TabIndex = 47;
            this.label6.Text = "Duration_of_one_session:";
            this.label6.Click += new System.EventHandler(this.label6_Click);
            // 
            // label7
            // 
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(726, 242);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(100, 37);
            this.label7.TabIndex = 48;
            this.label7.Text = "DR:";
            // 
            // Enrollment_form
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.ClientSize = new System.Drawing.Size(1323, 753);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
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
        private System.Windows.Forms.Label course_name;
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
    }
}