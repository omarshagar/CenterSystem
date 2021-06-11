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
            this.numofsessions = new Guna.UI.WinForms.GunaLineTextBox();
            this.labe_of_sessions = new Guna.UI.WinForms.GunaLabel();
            this.gunaCircleButton2 = new Guna.UI.WinForms.GunaCircleButton();
            this.gunaCircleButton1 = new Guna.UI.WinForms.GunaCircleButton();
            this.cost = new Guna.UI.WinForms.GunaLineTextBox();
            this.duration_of_one_session = new Guna.UI.WinForms.GunaLineTextBox();
            this.num_of_student = new Guna.UI.WinForms.GunaLineTextBox();
            this.end_date = new Guna.UI.WinForms.GunaLineTextBox();
            this.start_date = new Guna.UI.WinForms.GunaLineTextBox();
            this.gunaLabel7 = new Guna.UI.WinForms.GunaLabel();
            this.gunaLabel6 = new Guna.UI.WinForms.GunaLabel();
            this.gunaLabel5 = new Guna.UI.WinForms.GunaLabel();
            this.gunaLabel4 = new Guna.UI.WinForms.GunaLabel();
            this.gunaLabel3 = new Guna.UI.WinForms.GunaLabel();
            this.doctor = new Guna.UI.WinForms.GunaLineTextBox();
            this.gunaLabel2 = new Guna.UI.WinForms.GunaLabel();
            this.gunaLabel1 = new Guna.UI.WinForms.GunaLabel();
            this.course_name = new Guna.UI.WinForms.GunaLineTextBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.backgroundWorker2 = new System.ComponentModel.BackgroundWorker();
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
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.White;
            this.panel2.Controls.Add(this.numofsessions);
            this.panel2.Controls.Add(this.labe_of_sessions);
            this.panel2.Controls.Add(this.gunaCircleButton2);
            this.panel2.Controls.Add(this.gunaCircleButton1);
            this.panel2.Controls.Add(this.cost);
            this.panel2.Controls.Add(this.duration_of_one_session);
            this.panel2.Controls.Add(this.num_of_student);
            this.panel2.Controls.Add(this.end_date);
            this.panel2.Controls.Add(this.start_date);
            this.panel2.Controls.Add(this.gunaLabel7);
            this.panel2.Controls.Add(this.gunaLabel6);
            this.panel2.Controls.Add(this.gunaLabel5);
            this.panel2.Controls.Add(this.gunaLabel4);
            this.panel2.Controls.Add(this.gunaLabel3);
            this.panel2.Controls.Add(this.doctor);
            this.panel2.Controls.Add(this.gunaLabel2);
            this.panel2.Controls.Add(this.gunaLabel1);
            this.panel2.Controls.Add(this.course_name);
            this.panel2.Controls.Add(this.pictureBox1);
            this.panel2.Location = new System.Drawing.Point(54, 69);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1224, 681);
            this.panel2.TabIndex = 1;
            this.panel2.Paint += new System.Windows.Forms.PaintEventHandler(this.panel2_Paint);
            // 
            // numofsessions
            // 
            this.numofsessions.BackColor = System.Drawing.Color.White;
            this.numofsessions.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.numofsessions.Enabled = false;
            this.numofsessions.FocusedLineColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.numofsessions.Font = new System.Drawing.Font("Segoe UI", 15F, System.Drawing.FontStyle.Bold);
            this.numofsessions.LineColor = System.Drawing.Color.DodgerBlue;
            this.numofsessions.Location = new System.Drawing.Point(201, 596);
            this.numofsessions.Name = "numofsessions";
            this.numofsessions.PasswordChar = '\0';
            this.numofsessions.SelectedText = "";
            this.numofsessions.Size = new System.Drawing.Size(363, 44);
            this.numofsessions.TabIndex = 29;
            // 
            // labe_of_sessions
            // 
            this.labe_of_sessions.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold);
            this.labe_of_sessions.Location = new System.Drawing.Point(3, 603);
            this.labe_of_sessions.Name = "labe_of_sessions";
            this.labe_of_sessions.Size = new System.Drawing.Size(173, 23);
            this.labe_of_sessions.TabIndex = 28;
            this.labe_of_sessions.Text = "Num_of_sessins:";
            // 
            // gunaCircleButton2
            // 
            this.gunaCircleButton2.AnimationHoverSpeed = 0.07F;
            this.gunaCircleButton2.AnimationSpeed = 0.03F;
            this.gunaCircleButton2.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.gunaCircleButton2.BorderColor = System.Drawing.Color.Black;
            this.gunaCircleButton2.BorderSize = 5;
            this.gunaCircleButton2.Cursor = System.Windows.Forms.Cursors.Hand;
            this.gunaCircleButton2.DialogResult = System.Windows.Forms.DialogResult.None;
            this.gunaCircleButton2.FocusedColor = System.Drawing.Color.Empty;
            this.gunaCircleButton2.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold);
            this.gunaCircleButton2.ForeColor = System.Drawing.Color.White;
            this.gunaCircleButton2.Image = null;
            this.gunaCircleButton2.ImageSize = new System.Drawing.Size(52, 52);
            this.gunaCircleButton2.Location = new System.Drawing.Point(980, 570);
            this.gunaCircleButton2.Name = "gunaCircleButton2";
            this.gunaCircleButton2.OnHoverBaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(151)))), ((int)(((byte)(143)))), ((int)(((byte)(255)))));
            this.gunaCircleButton2.OnHoverBorderColor = System.Drawing.Color.Black;
            this.gunaCircleButton2.OnHoverForeColor = System.Drawing.Color.White;
            this.gunaCircleButton2.OnHoverImage = null;
            this.gunaCircleButton2.OnPressedColor = System.Drawing.Color.Black;
            this.gunaCircleButton2.Size = new System.Drawing.Size(202, 66);
            this.gunaCircleButton2.TabIndex = 27;
            this.gunaCircleButton2.Text = "Cancel";
            this.gunaCircleButton2.Click += new System.EventHandler(this.gunaCircleButton2_Click);
            // 
            // gunaCircleButton1
            // 
            this.gunaCircleButton1.AnimationHoverSpeed = 0.07F;
            this.gunaCircleButton1.AnimationSpeed = 0.03F;
            this.gunaCircleButton1.BaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.gunaCircleButton1.BorderColor = System.Drawing.Color.Black;
            this.gunaCircleButton1.BorderSize = 5;
            this.gunaCircleButton1.Cursor = System.Windows.Forms.Cursors.Default;
            this.gunaCircleButton1.DialogResult = System.Windows.Forms.DialogResult.None;
            this.gunaCircleButton1.FocusedColor = System.Drawing.Color.Empty;
            this.gunaCircleButton1.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold);
            this.gunaCircleButton1.ForeColor = System.Drawing.Color.White;
            this.gunaCircleButton1.Image = null;
            this.gunaCircleButton1.ImageSize = new System.Drawing.Size(52, 52);
            this.gunaCircleButton1.Location = new System.Drawing.Point(747, 570);
            this.gunaCircleButton1.Name = "gunaCircleButton1";
            this.gunaCircleButton1.OnHoverBaseColor = System.Drawing.Color.FromArgb(((int)(((byte)(151)))), ((int)(((byte)(143)))), ((int)(((byte)(255)))));
            this.gunaCircleButton1.OnHoverBorderColor = System.Drawing.Color.Black;
            this.gunaCircleButton1.OnHoverForeColor = System.Drawing.Color.White;
            this.gunaCircleButton1.OnHoverImage = null;
            this.gunaCircleButton1.OnPressedColor = System.Drawing.Color.Black;
            this.gunaCircleButton1.Size = new System.Drawing.Size(195, 66);
            this.gunaCircleButton1.TabIndex = 23;
            this.gunaCircleButton1.Text = "Save";
            this.gunaCircleButton1.Click += new System.EventHandler(this.gunaCircleButton1_Click);
            // 
            // cost
            // 
            this.cost.BackColor = System.Drawing.Color.White;
            this.cost.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.cost.Enabled = false;
            this.cost.FocusedLineColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.cost.Font = new System.Drawing.Font("Segoe UI", 15F, System.Drawing.FontStyle.Bold);
            this.cost.LineColor = System.Drawing.Color.DodgerBlue;
            this.cost.Location = new System.Drawing.Point(201, 524);
            this.cost.Name = "cost";
            this.cost.PasswordChar = '\0';
            this.cost.SelectedText = "";
            this.cost.Size = new System.Drawing.Size(363, 44);
            this.cost.TabIndex = 21;
            // 
            // duration_of_one_session
            // 
            this.duration_of_one_session.BackColor = System.Drawing.Color.White;
            this.duration_of_one_session.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.duration_of_one_session.Enabled = false;
            this.duration_of_one_session.FocusedLineColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.duration_of_one_session.Font = new System.Drawing.Font("Segoe UI", 15F, System.Drawing.FontStyle.Bold);
            this.duration_of_one_session.LineColor = System.Drawing.Color.DodgerBlue;
            this.duration_of_one_session.Location = new System.Drawing.Point(845, 429);
            this.duration_of_one_session.Name = "duration_of_one_session";
            this.duration_of_one_session.PasswordChar = '\0';
            this.duration_of_one_session.SelectedText = "";
            this.duration_of_one_session.Size = new System.Drawing.Size(363, 44);
            this.duration_of_one_session.TabIndex = 20;
            // 
            // num_of_student
            // 
            this.num_of_student.BackColor = System.Drawing.Color.White;
            this.num_of_student.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.num_of_student.Enabled = false;
            this.num_of_student.FocusedLineColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.num_of_student.Font = new System.Drawing.Font("Segoe UI", 15F, System.Drawing.FontStyle.Bold);
            this.num_of_student.LineColor = System.Drawing.Color.DodgerBlue;
            this.num_of_student.Location = new System.Drawing.Point(201, 429);
            this.num_of_student.Name = "num_of_student";
            this.num_of_student.PasswordChar = '\0';
            this.num_of_student.SelectedText = "";
            this.num_of_student.Size = new System.Drawing.Size(363, 44);
            this.num_of_student.TabIndex = 19;
            // 
            // end_date
            // 
            this.end_date.BackColor = System.Drawing.Color.White;
            this.end_date.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.end_date.Enabled = false;
            this.end_date.FocusedLineColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.end_date.Font = new System.Drawing.Font("Segoe UI", 15F, System.Drawing.FontStyle.Bold);
            this.end_date.LineColor = System.Drawing.Color.DodgerBlue;
            this.end_date.Location = new System.Drawing.Point(845, 331);
            this.end_date.Name = "end_date";
            this.end_date.PasswordChar = '\0';
            this.end_date.SelectedText = "";
            this.end_date.Size = new System.Drawing.Size(363, 44);
            this.end_date.TabIndex = 18;
            // 
            // start_date
            // 
            this.start_date.BackColor = System.Drawing.Color.White;
            this.start_date.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.start_date.Enabled = false;
            this.start_date.FocusedLineColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.start_date.Font = new System.Drawing.Font("Segoe UI", 15F, System.Drawing.FontStyle.Bold);
            this.start_date.LineColor = System.Drawing.Color.DodgerBlue;
            this.start_date.Location = new System.Drawing.Point(201, 333);
            this.start_date.Name = "start_date";
            this.start_date.PasswordChar = '\0';
            this.start_date.SelectedText = "";
            this.start_date.Size = new System.Drawing.Size(363, 44);
            this.start_date.TabIndex = 17;
            // 
            // gunaLabel7
            // 
            this.gunaLabel7.AutoSize = true;
            this.gunaLabel7.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold);
            this.gunaLabel7.Location = new System.Drawing.Point(742, 333);
            this.gunaLabel7.Name = "gunaLabel7";
            this.gunaLabel7.Size = new System.Drawing.Size(102, 28);
            this.gunaLabel7.TabIndex = 16;
            this.gunaLabel7.Text = "End_date:";
            // 
            // gunaLabel6
            // 
            this.gunaLabel6.AutoSize = true;
            this.gunaLabel6.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold);
            this.gunaLabel6.Location = new System.Drawing.Point(3, 333);
            this.gunaLabel6.Name = "gunaLabel6";
            this.gunaLabel6.Size = new System.Drawing.Size(114, 28);
            this.gunaLabel6.TabIndex = 15;
            this.gunaLabel6.Text = "Start_date:";
            // 
            // gunaLabel5
            // 
            this.gunaLabel5.AutoSize = true;
            this.gunaLabel5.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold);
            this.gunaLabel5.Location = new System.Drawing.Point(3, 431);
            this.gunaLabel5.Name = "gunaLabel5";
            this.gunaLabel5.Size = new System.Drawing.Size(180, 28);
            this.gunaLabel5.TabIndex = 14;
            this.gunaLabel5.Text = "Num_of_students:";
            // 
            // gunaLabel4
            // 
            this.gunaLabel4.AutoSize = true;
            this.gunaLabel4.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold);
            this.gunaLabel4.Location = new System.Drawing.Point(592, 429);
            this.gunaLabel4.Name = "gunaLabel4";
            this.gunaLabel4.Size = new System.Drawing.Size(248, 28);
            this.gunaLabel4.TabIndex = 13;
            this.gunaLabel4.Text = "Duration_of_one_session:";
            // 
            // gunaLabel3
            // 
            this.gunaLabel3.AutoSize = true;
            this.gunaLabel3.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold);
            this.gunaLabel3.Location = new System.Drawing.Point(3, 526);
            this.gunaLabel3.Name = "gunaLabel3";
            this.gunaLabel3.Size = new System.Drawing.Size(58, 28);
            this.gunaLabel3.TabIndex = 12;
            this.gunaLabel3.Text = "Cost:";
            // 
            // doctor
            // 
            this.doctor.BackColor = System.Drawing.Color.White;
            this.doctor.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.doctor.Enabled = false;
            this.doctor.FocusedLineColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.doctor.Font = new System.Drawing.Font("Segoe UI", 15F, System.Drawing.FontStyle.Bold);
            this.doctor.LineColor = System.Drawing.Color.DodgerBlue;
            this.doctor.Location = new System.Drawing.Point(845, 249);
            this.doctor.Name = "doctor";
            this.doctor.PasswordChar = '\0';
            this.doctor.SelectedText = "";
            this.doctor.Size = new System.Drawing.Size(363, 44);
            this.doctor.TabIndex = 11;
            this.doctor.TextChanged += new System.EventHandler(this.gunaLineTextBox1_TextChanged_1);
            // 
            // gunaLabel2
            // 
            this.gunaLabel2.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold);
            this.gunaLabel2.Location = new System.Drawing.Point(3, 248);
            this.gunaLabel2.Name = "gunaLabel2";
            this.gunaLabel2.Size = new System.Drawing.Size(89, 31);
            this.gunaLabel2.TabIndex = 10;
            this.gunaLabel2.Text = "Course:";
            // 
            // gunaLabel1
            // 
            this.gunaLabel1.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold);
            this.gunaLabel1.Location = new System.Drawing.Point(764, 247);
            this.gunaLabel1.Name = "gunaLabel1";
            this.gunaLabel1.Size = new System.Drawing.Size(54, 32);
            this.gunaLabel1.TabIndex = 9;
            this.gunaLabel1.Text = "DR:";
            this.gunaLabel1.Click += new System.EventHandler(this.gunaLabel1_Click);
            // 
            // course_name
            // 
            this.course_name.BackColor = System.Drawing.Color.White;
            this.course_name.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.course_name.Enabled = false;
            this.course_name.FocusedLineColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.course_name.Font = new System.Drawing.Font("Segoe UI", 15F, System.Drawing.FontStyle.Bold);
            this.course_name.LineColor = System.Drawing.Color.DodgerBlue;
            this.course_name.Location = new System.Drawing.Point(201, 248);
            this.course_name.Name = "course_name";
            this.course_name.PasswordChar = '\0';
            this.course_name.SelectedText = "";
            this.course_name.Size = new System.Drawing.Size(363, 44);
            this.course_name.TabIndex = 1;
            this.course_name.TextChanged += new System.EventHandler(this.gunaLineTextBox1_TextChanged);
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
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.PictureBox pictureBox1;
        private Guna.UI.WinForms.GunaLineTextBox course_name;
        private Guna.UI.WinForms.GunaLabel gunaLabel1;
        private Guna.UI.WinForms.GunaLabel gunaLabel3;
        private Guna.UI.WinForms.GunaLineTextBox doctor;
        private Guna.UI.WinForms.GunaLabel gunaLabel2;
        private Guna.UI.WinForms.GunaLineTextBox cost;
        private Guna.UI.WinForms.GunaLineTextBox duration_of_one_session;
        private Guna.UI.WinForms.GunaLineTextBox num_of_student;
        private Guna.UI.WinForms.GunaLineTextBox end_date;
        private Guna.UI.WinForms.GunaLineTextBox start_date;
        private Guna.UI.WinForms.GunaLabel gunaLabel7;
        private Guna.UI.WinForms.GunaLabel gunaLabel6;
        private Guna.UI.WinForms.GunaLabel gunaLabel5;
        private Guna.UI.WinForms.GunaLabel gunaLabel4;
        private Guna.UI.WinForms.GunaCircleButton gunaCircleButton1;
        private Guna.UI.WinForms.GunaCircleButton gunaCircleButton2;
        private Guna.UI.WinForms.GunaLineTextBox numofsessions;
        private Guna.UI.WinForms.GunaLabel labe_of_sessions;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.ComponentModel.BackgroundWorker backgroundWorker2;
    }
}