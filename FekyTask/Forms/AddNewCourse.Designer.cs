
namespace FekyTask.Forms
{
    partial class AddNewCourse
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
            this.startDate = new System.Windows.Forms.DateTimePicker();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.endDate = new System.Windows.Forms.DateTimePicker();
            this.courseName = new System.Windows.Forms.TextBox();
            this.costBox = new System.Windows.Forms.TextBox();
            this.sessionDuration = new System.Windows.Forms.TextBox();
            this.NumOfStudents = new System.Windows.Forms.TextBox();
            this.numOfSession = new System.Windows.Forms.TextBox();
            this.AddBTN = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // startDate
            // 
            this.startDate.CalendarFont = new System.Drawing.Font("Microsoft Tai Le", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.startDate.Location = new System.Drawing.Point(356, 681);
            this.startDate.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.startDate.Name = "startDate";
            this.startDate.Size = new System.Drawing.Size(397, 22);
            this.startDate.TabIndex = 1;
            this.startDate.Value = new System.DateTime(2021, 6, 12, 0, 0, 0, 0);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(16, 53);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(258, 36);
            this.label1.TabIndex = 2;
            this.label1.Text = "COURSE NAME ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(16, 151);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(100, 36);
            this.label2.TabIndex = 3;
            this.label2.Text = "COST";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(16, 273);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(259, 36);
            this.label3.TabIndex = 4;
            this.label3.Text = "Session Duration";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(16, 402);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(302, 36);
            this.label4.TabIndex = 5;
            this.label4.Text = "Number Of Students";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(16, 550);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(290, 36);
            this.label5.TabIndex = 6;
            this.label5.Text = "Number Of Session";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(16, 681);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(156, 36);
            this.label6.TabIndex = 7;
            this.label6.Text = "Start Date";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(16, 783);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(146, 36);
            this.label7.TabIndex = 8;
            this.label7.Text = "End Date";
            // 
            // endDate
            // 
            this.endDate.CalendarFont = new System.Drawing.Font("Microsoft Tai Le", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.endDate.Location = new System.Drawing.Point(356, 783);
            this.endDate.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.endDate.Name = "endDate";
            this.endDate.Size = new System.Drawing.Size(397, 22);
            this.endDate.TabIndex = 14;
            this.endDate.Value = new System.DateTime(2021, 6, 12, 0, 0, 0, 0);
            // 
            // courseName
            // 
            this.courseName.Font = new System.Drawing.Font("Microsoft YaHei UI", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.courseName.Location = new System.Drawing.Point(356, 47);
            this.courseName.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.courseName.Name = "courseName";
            this.courseName.Size = new System.Drawing.Size(613, 41);
            this.courseName.TabIndex = 15;
            // 
            // costBox
            // 
            this.costBox.Font = new System.Drawing.Font("Microsoft YaHei UI", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.costBox.Location = new System.Drawing.Point(356, 145);
            this.costBox.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.costBox.Name = "costBox";
            this.costBox.Size = new System.Drawing.Size(613, 41);
            this.costBox.TabIndex = 16;
            // 
            // sessionDuration
            // 
            this.sessionDuration.Font = new System.Drawing.Font("Microsoft YaHei UI", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.sessionDuration.Location = new System.Drawing.Point(356, 267);
            this.sessionDuration.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.sessionDuration.Name = "sessionDuration";
            this.sessionDuration.Size = new System.Drawing.Size(613, 41);
            this.sessionDuration.TabIndex = 17;
            // 
            // NumOfStudents
            // 
            this.NumOfStudents.Font = new System.Drawing.Font("Microsoft YaHei UI", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.NumOfStudents.Location = new System.Drawing.Point(356, 396);
            this.NumOfStudents.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.NumOfStudents.Name = "NumOfStudents";
            this.NumOfStudents.Size = new System.Drawing.Size(613, 41);
            this.NumOfStudents.TabIndex = 18;
            // 
            // numOfSession
            // 
            this.numOfSession.Font = new System.Drawing.Font("Microsoft YaHei UI", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.numOfSession.Location = new System.Drawing.Point(356, 544);
            this.numOfSession.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.numOfSession.Name = "numOfSession";
            this.numOfSession.Size = new System.Drawing.Size(613, 41);
            this.numOfSession.TabIndex = 19;
            // 
            // AddBTN
            // 
            this.AddBTN.Location = new System.Drawing.Point(1087, 753);
            this.AddBTN.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.AddBTN.Name = "AddBTN";
            this.AddBTN.Size = new System.Drawing.Size(219, 54);
            this.AddBTN.TabIndex = 20;
            this.AddBTN.Text = "Add";
            this.AddBTN.UseVisualStyleBackColor = true;
            this.AddBTN.Click += new System.EventHandler(this.AddBTN_Click);
            // 
            // AddNewCourse
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1433, 854);
            this.Controls.Add(this.AddBTN);
            this.Controls.Add(this.numOfSession);
            this.Controls.Add(this.NumOfStudents);
            this.Controls.Add(this.sessionDuration);
            this.Controls.Add(this.costBox);
            this.Controls.Add(this.courseName);
            this.Controls.Add(this.endDate);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.startDate);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "AddNewCourse";
            this.Text = "AddNewCourse";
            this.Load += new System.EventHandler(this.AddNewCourse_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.DateTimePicker startDate;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DateTimePicker endDate;
        private System.Windows.Forms.TextBox courseName;
        private System.Windows.Forms.TextBox costBox;
        private System.Windows.Forms.TextBox sessionDuration;
        private System.Windows.Forms.TextBox NumOfStudents;
        private System.Windows.Forms.TextBox numOfSession;
        private System.Windows.Forms.Button AddBTN;
    }
}