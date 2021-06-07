using System;
using System.Drawing;
using System.Windows.Forms;

namespace CourseSystem.Controls
{
    public partial class BIcon : UserControl
    {
        
        private string _iconPath = null;

        public string IconPath
        {
            set
            {
                _iconPath = value;

                button.BackgroundImage = Image.FromFile(_iconPath);
                button.BackgroundImageLayout = ImageLayout.Stretch;
                button.ImageAlign = ContentAlignment.MiddleCenter;
                button.FlatStyle = FlatStyle.Standard;
                button.FlatAppearance.BorderSize = 0;
            }            
        }
        public BIcon()
        {
            InitializeComponent();
        }

        public new event EventHandler Click
        {
            add
            {
                base.Click += value;

                foreach (Control control in Controls)
                {
                    control.Click += value;
                }
            }
            remove
            {
                base.Click -= value;

                foreach (Control control in Controls)
                {
                    control.Click -= value;
                }
            }
        }

        private void OnLoad(object sender, EventArgs e)
        {
            BorderStyle = BorderStyle.None;

            // Button
            button.Width = Width;
            button.Height = Height;
        }
    }

}
