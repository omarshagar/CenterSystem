using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FekyTask.Forms
{
    public partial class Information : Form
    {
        public Information()
        {
            InitializeComponent();
            loadThems();
        }


        public void loadThems()
        {
            foreach(Control control in this.Controls)
            {
                if(control.GetType() == typeof(Label))
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
    }
}
