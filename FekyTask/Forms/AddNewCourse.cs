using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using FekyTask.helperClasses;


namespace FekyTask.Forms
{
    public partial class AddNewCourse : Form
    {
        private int instID;
        private Dictionary<string, Func<string,bool>> CourseAddingMethods;
        private AddCourse CourseInfo;
        public AddNewCourse(int id = 1)
        {
            InitializeComponent();

            instID = id;
            CourseInfo = new AddCourse();
            CourseAddingMethods = new Dictionary<string, Func<string, bool>>();
            exportIntoClass();
        }

        private void AddNewCourse_Load(object sender, EventArgs e)
        {
            foreach (Control control in this.Controls)
            {
                if (control.GetType() == typeof(Label))
                {
                    Label label = (Label)control;
                    label.BackColor = Color.FromArgb(39, 39, 70);
                    label.ForeColor = Color.White;

                }
                if(control.GetType() == typeof(TextBox))
                {
                    TextBox box = (TextBox)control;
                    box.BorderStyle = BorderStyle.FixedSingle;
                    box.BackColor = Color.White;

                }
            }
            this.BackColor = Color.FromArgb(39, 39, 70);
        }
        private void exportIntoClass()
        {
            CourseAddingMethods.Add("courseName", CourseInfo.setCourseName);
            CourseAddingMethods.Add("costBox", CourseInfo.setCost);
            CourseAddingMethods.Add("sessionDuration", CourseInfo.setsessionDuration);
            CourseAddingMethods.Add("NumOfStudents", CourseInfo.setnumOfStudents);
            CourseAddingMethods.Add("numOfSession", CourseInfo.setnumOfsessions);
            
        }
        private void addCourseToClass()
        {
            this.CourseInfo.setStartDate(startDate.Value);
            this.CourseInfo.setEndDate(endDate.Value);

            foreach (Control control in this.Controls)
            {
                if(control.GetType() == typeof(TextBox))
                {
                    TextBox textBox = (TextBox)control;
                    if (!CourseAddingMethods[(string)textBox.Name](textBox.Text))
                    {
                        MessageBox.Show("Please enter the values in the right format");
                        return;
                    }
                }
            }

            if (CourseInfo.getStartDate().CompareTo(DateTime.Now) < 0)
            {
                MessageBox.Show("You Cant start course in past");
                return;
            }

            if (CourseInfo.getEndDate().CompareTo(CourseInfo.getStartDate())<0)
            {
                MessageBox.Show("Please enter correct dates");
                return;
            }

            SelectTimeForm sf = new SelectTimeForm(this.instID,this.CourseInfo);
            sf.ShowDialog();
        }
        private void AddBTN_Click(object sender, EventArgs e)
        {
            addCourseToClass();
            
        }
    }
}
