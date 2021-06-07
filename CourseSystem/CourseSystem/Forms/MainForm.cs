using System;
using System.Windows.Forms;
using System.IO;

namespace CourseSystem.Forms
{
    public partial class MainForm : BaseForm
    {
        public MainForm(string form_key)
        {
            InitializeComponent();

            this.AddNewForm(form_key, this);
        }


        private void OnLoad(object sender, EventArgs e)
        {
            AdminButton.IconPath = ResManager.Icon("admin.png");
            StudentButton.IconPath = ResManager.Icon("student.png");
            InstructorButton.IconPath = ResManager.Icon("instructor.png");
        }

        private void AdminButton_Click(object sender, EventArgs e)
        {
            this.AddNewForm("admin_login", new LoginForm());

            this.ShowFormByKey("admin_login", true);
        }

        private void StudentButton_Click(object sender, EventArgs e)
        {
            this.AddNewForm("student_login", new LoginForm());

            this.ShowFormByKey("student_login", true);
        }

        private void InstructorButton_Click(object sender, EventArgs e)
        {
            this.AddNewForm("instructor_login", new LoginForm());

            this.ShowFormByKey("instructor_login", true);
        }
    }
}