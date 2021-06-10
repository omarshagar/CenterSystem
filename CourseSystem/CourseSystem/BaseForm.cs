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

        static Dictionary<string, BaseForm> FormsRepo = new Dictionary<string, BaseForm>();

        private string _currentFormKey = null;
        private string _previousFormKey = null;

        private bool _showBackButton = false;

        public string CurrentFormKey { 
            
            get
            {
                return this._currentFormKey;
            }

            set
            {
                this._currentFormKey = value;

            }
        }


        public string PreviousFormKey
        {

            get
            {
                return _previousFormKey;
            }

            set
            {
                _previousFormKey = value;

            }
        }

        public bool ShowBackButton
        {
            set
            {
                _showBackButton = value;

                if (_previousFormKey == null || !_showBackButton)
                {
                    BackButton.Hide();
                }

                else
                {
                    BackButton.IconPath  = ResManager.Icon("back.png");
                    BackButton.Show();
                }
            }
        }

        public BaseForm()
        {
            InitializeComponent();

            ShowBackButton = false;
        }

        public void ShowFormByKey(string form_key, bool has_back_button = false)
        {
            if (!FormsRepo.ContainsKey(form_key)) {

                throw new KeyNotFoundException("Form Key Doesn't Exist: " + form_key);
            }

            // current-form
            this.Hide();

            // next-form
            FormsRepo[form_key].PreviousFormKey = CurrentFormKey;
            FormsRepo[form_key].Show();

            // back-button
            FormsRepo[form_key].ShowBackButton = has_back_button;
          
        }

        public void AddNewForm(string form_key, BaseForm form)
        {
            if (FormsRepo.ContainsKey(form_key))
            {
                return;
            }

            FormsRepo.Add(form_key, form);
            FormsRepo[form_key].CenterToScreen();
            FormsRepo[form_key].CurrentFormKey = form_key;
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

        private void BackButton_Click(object sender, EventArgs e)
        {
            ShowFormByKey(_previousFormKey);
        }
    }
}
