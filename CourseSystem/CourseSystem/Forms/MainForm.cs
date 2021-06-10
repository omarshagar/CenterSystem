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
            this.Hide();
            CourseSystem.LogIn lg=new CourseSystem.LogIn();
            lg.ShowDialog();
            this.Close();
        }

        private void StudentButton_Click(object sender, EventArgs e)
        {
            this.Hide();
            RegisterForm rg = new RegisterForm('s');
            rg.ShowDialog();
            this.Close();
        }

        private void InstructorButton_Click(object sender, EventArgs e)
        {
            this.Hide();
            RegisterForm rg = new RegisterForm('i');
            rg.ShowDialog();
            this.Close();
        }

        private void AdminButton_Load(object sender, EventArgs e)
        {
            
        }
    }
}