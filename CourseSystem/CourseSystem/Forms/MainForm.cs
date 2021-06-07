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
        }

        private void StudentButton_Load(object sender, EventArgs e)
        {
            AdminButton.SetIcon(ResManager.Icon("admin.png"));
            StudentButton.SetIcon(ResManager.Icon("student.png"));
            InstructorButton.SetIcon(ResManager.Icon("instructor.png"));
        }
    }
}