using System;
using System.Windows.Forms;
using System.IO;

namespace CourseSystem.Forms
{
    public partial class MainForm : BaseForm
    {
        public MainForm()
        {
            InitializeComponent();

            //this.AddNewForm(form_key, this);
        }


        private void OnLoad(object sender, EventArgs e)
        {
            AdminButton.IconPath = ResManager.Icon("admin.png");
            StudentButton.IconPath = ResManager.Icon("student.png");
            InstructorButton.IconPath = ResManager.Icon("instructor.png");
        }

        private void AdminButton_Click(object sender, EventArgs e)
        {
            
        }

        private void StudentButton_Click(object sender, EventArgs e)
        {
            RegisterForm rg = new RegisterForm('s');
            rg.ShowDialog();
        }

        private void InstructorButton_Click(object sender, EventArgs e)
        {
            RegisterForm rg = new RegisterForm('i');
            rg.ShowDialog();
        }
    }
}