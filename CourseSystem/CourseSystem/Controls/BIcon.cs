using System.IO;
using System.Drawing;
using System.Windows.Forms;

namespace CourseSystem.Controls
{
    public partial class BIcon : UserControl
    {
 
        public BIcon()
        {
            InitializeComponent();
        }

        public void SetIcon(string IconPath){

            button.BackgroundImage = Image.FromFile(IconPath);
            
            button.BackgroundImageLayout = ImageLayout.Stretch;

            button.ImageAlign = ContentAlignment.MiddleCenter;
            
            button.FlatStyle = FlatStyle.Standard;

            button.FlatAppearance.BorderSize = 0;

            // UC
            BorderStyle = BorderStyle.None;
        }
    }

}
