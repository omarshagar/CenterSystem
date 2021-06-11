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
    public partial class Information : Form
    {
        private int instID;
        private InstructorInfo instruct;
        public Information(int id = 1)
        {
            InitializeComponent();
            instID = id;
            instruct = new InstructorInfo(instID);
            setData();
            setNextSession();
        }

        private void Information_Load(object sender, EventArgs e)
        {
            foreach (Control control in this.Controls)
            {
                if (control.GetType() == typeof(Label))
                {
                    Label label = (Label)control;
                    label.Visible = true;
                    if (label.Name.Substring(0, 5) != "label")
                    {
                        label.BorderStyle = BorderStyle.FixedSingle;
                        label.BackColor = Color.FromArgb(39, 39, 50);
                    }
                }
            }
            this.BackColor = Color.FromArgb(39, 39, 70);
        }
        private void setData()
        {
            instruct.getData();
            FullName.Text = instruct.fullName;
            PhoneNumber.Text = instruct.MOBILE_NUMBER;
            Email.Text = instruct.EMAIL;
            BalanceLable.Text = instruct.BALANCE.ToString();

            
        }
        private void setNextSession()
        {
            instruct.getNextSession();
            DateLabel.Text = instruct.nextSessionDate.ToString("yyyy-MM-dd");
            HourLabel.Text = instruct.hour.ToString();
        }
    }
}
