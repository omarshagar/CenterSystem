using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CourseSystem.Forms
{
    public partial class BaseForm : Form
    {
        public BaseForm()
        {
            InitializeComponent();
            CenterToScreen();
        }

        private void OnPaintBackground(object sender, PaintEventArgs eventArgs)
        {
            // Parse Graphics [Arg]
            Graphics graphics = eventArgs.Graphics;

            // options
            Rectangle rect = new Rectangle(0, 0, Width, Height);

            Color color1 = Color.FromArgb(189, 122, 255);
            Color color2 = Color.FromArgb(51, 113, 255);

            float angle = 45.0f;

            // init-brush
            Brush brush = new LinearGradientBrush(rect, color1, color2, angle);

            // Paint         
            graphics.FillRectangle(brush, rect);
        }
    }
}
