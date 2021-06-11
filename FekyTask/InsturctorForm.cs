using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FekyTask
{
    
    public partial class InsturctorForm : Form
    {
        private Form activeForm;
        private int instID;
        public InsturctorForm(int id = 1)
        {
            InitializeComponent();

            instID = id;
        }
        private void activateButton(Button button)
        {
            button.BackColor = ColorTranslator.FromHtml("#0066CC");

        }

        private void disableButton()
        {
            foreach(Control prevoisBTN in menuPanle.Controls)
            {
                if(prevoisBTN.GetType() == typeof(Button))
                {
                    prevoisBTN.BackColor = Color.FromArgb(39, 39, 58);
                }
            }
        }
        private void openChildForm(Form childForm, Button button)
        {
            if(activeForm != null)
            {
                activeForm.Close();
            }
            disableButton();
            activateButton(button);
            activeForm = childForm;
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            this.mainPanle.Controls.Add(childForm);
            this.mainPanle.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
        }

        

        private void instInfoBTN_Click(object sender, EventArgs e)
        {
            openChildForm(new Forms.Information(instID), (Button)sender);
        }

        private void viewCourseBTN_Click(object sender, EventArgs e)
        {
            openChildForm(new Forms.CourseInfo(instID), (Button)sender);
        }

        private void addCourseBYN_Click(object sender, EventArgs e)
        {
            openChildForm(new Forms.AddNewCourse(instID), (Button)sender);
        }
    }
}
