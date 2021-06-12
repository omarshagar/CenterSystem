using FekyTask.helperClasses;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;
using FekyTask.Forms;
namespace FekyTask
{
    public partial class SelectTimeForm : Form
    {
        string ordb = "data source=orcl4;user id=scott;password=tiger;";
        OracleConnection conn;
        int instructor;
        AddCourse course_info;
        List<DataGridView> grids = new List<DataGridView>();
        List<DataTable> tables = new List<DataTable>();
        List<int> hallsNums = new List<int>();
        List<int> hallsCapacity = new List<int>();
        List<DateTime> allDates  = new List<DateTime>();
        HashSet<KeyValuePair<int, KeyValuePair<int, int>>> hs = new HashSet<KeyValuePair<int, KeyValuePair<int, int>>>();

        public SelectTimeForm(int instr_id,AddCourse course_info)
        {
            InitializeComponent();
            
            this.course_info = course_info;
            this.instructor = instr_id;

            this.FormBorderStyle = FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Width = 1500;

            conn = new OracleConnection(ordb);
            conn.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select * from hall where capacity >= :cap ";
            cmd.Parameters.Add("cap", course_info.getnumOfStudents());
            cmd.CommandType = CommandType.Text;
            OracleDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                hallsNums.Add(int.Parse(dr[0].ToString()));
                hallsCapacity.Add(int.Parse(dr[1].ToString()));

            }
            conn.Close();
        }

        private DataTable construt_table(DateTime dat)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("/");
            for(int i=8;i<=22;i++)
            {
                dt.Columns.Add(i + ":00 - " + (int)(i + 1) + ":00");
            }
            for(int i=0;i<hallsNums.Count;i++)
            {
                dt.Rows.Add("Hall " + hallsNums[i] + "  " + "Capacity :" + hallsCapacity[i]);
            }
            
            return dt;
        }
        private void  color_grid( DataGridView dgv, DateTime dt )
        {
            conn = new OracleConnection(ordb);
            conn.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = conn;

            for (int col=1;col<dgv.Columns.Count;col++)
            {
                for(int row=0;row<dgv.Rows.Count;row++)
                {
                    
                    int suc = 1;
                    int tmp=0;
                    int hourr = col + 7;
                    int hall_num = hallsNums[row];

                    cmd.Dispose();
                    
                    cmd = new OracleCommand();
                    cmd.Connection = conn;
                    cmd.CommandText = "CHECK_CONT_IN_SESSIONS";
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("cst", course_info.getStartDate());
                    cmd.Parameters.Add("cen", course_info.getEndDate());
                    cmd.Parameters.Add("SessionDay", dt);
                    cmd.Parameters.Add("starttime", hourr);
                    cmd.Parameters.Add("hallId", hall_num);
                    cmd.Parameters.Add("sucess",OracleDbType.Int32,ParameterDirection.Output);
                    cmd.ExecuteNonQuery();
                    suc &= int.Parse(cmd.Parameters["sucess"].Value.ToString());
                    if(suc==0)
                    {
                        dgv[col, row].Style.BackColor = Color.Red;
                        
                    }
                    else
                    {
                        cmd.Dispose();
                        cmd = new OracleCommand();
                        cmd.Connection = conn;
                        cmd.CommandText = "CHECK_CONT_IN_INSTR";
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("cst", course_info.getStartDate());
                        cmd.Parameters.Add("cen", course_info.getEndDate());
                        cmd.Parameters.Add("SessionDay", dt);
                        cmd.Parameters.Add("starttime", hourr);
                        cmd.Parameters.Add("hallId", hall_num);
                        cmd.Parameters.Add("instId", instructor);
                        cmd.Parameters.Add("sucess", OracleDbType.Int32, ParameterDirection.Output);
                        cmd.ExecuteNonQuery();
                        suc &= (int)(Int32.Parse(cmd.Parameters["sucess"].Value.ToString()));

                        if (suc==0)
                        {
                            dgv[col, row].Style.BackColor = Color.Red;
                           
                        }
                        else
                        {
                           
                            dgv[col, row].Style.BackColor = Color.Green;
                        }
                    }
                }
            }
            conn.Close();
        }
        private DataGridView construt_Grid(DataTable dt)
        {
            DataGridView dgv = new DataGridView();
            dgv.DisplayedColumnCount(true);

            foreach (DataColumn dc in dt.Columns)
            {

                dgv.Columns.Add(dc.ColumnName, dc.ColumnName);

            }

            foreach (DataRow dr in dt.Rows)
            {

                dgv.Rows.Add(dr.ItemArray);

            }
            dgv.AllowUserToAddRows = false;
            dgv.AllowUserToDeleteRows = false;
            dgv.AllowUserToOrderColumns = false;

            dgv.Width = 1500;
            dgv.Height =500;
           
            return dgv;
        }
        private int set_right_num_of_tabs()
        {
            while(tabs.TabCount>0)
            {
                tabs.TabPages.Remove(tabs.TabPages[tabs.TabCount-1]);
            }
            DateTime st = course_info.getStartDate();
            DateTime en = course_info.getEndDate();
            int tmp = (int)(en - st).TotalDays;
            tmp++;
            tmp = Math.Min(tmp, 7);
            tabs.Width = 1200;
            for (int i=0;i<tmp;i++)
            {
                tabs.TabPages.Add(st.Date.ToString("dd/MM/yyyy")+" "+st.DayOfWeek);
                DataTable dt = construt_table(st);
                DataGridView dgv = construt_Grid(dt);
                color_grid(dgv, st);
                tabs.TabPages[i].AutoScroll = true;
                tabs.TabPages[i].Controls.Add(dgv);
                dgv.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.Cell_Click);
               // this.AddBTN.Click += new System.EventHandler(this.AddBTN_Click);
                grids.Add(dgv);
                tables.Add(dt);
                allDates.Add(st);
                st = st.AddDays(1);
            }
            return tmp;
        }
                  
        private void Cell_Click(object sender, DataGridViewCellEventArgs e)
        {
            DataGridView dgv = (DataGridView)sender;
            if (dgv[e.ColumnIndex, e.RowIndex].Style.BackColor == Color.Red||e.ColumnIndex==0) return;
            if (dgv[e.ColumnIndex, e.RowIndex].Style.BackColor == Color.Green)
            {
                

                hs.Add(new KeyValuePair<int, KeyValuePair<int, int>>(tabs.SelectedIndex,new KeyValuePair<int, int>(e.RowIndex,e.ColumnIndex)));
                dgv[e.ColumnIndex, e.RowIndex].Style.BackColor = Color.Blue;
            }
            else
            {
                hs.Remove(new KeyValuePair<int, KeyValuePair<int, int>>(tabs.SelectedIndex, new KeyValuePair<int, int>(e.RowIndex, e.ColumnIndex)));
                dgv[e.ColumnIndex, e.RowIndex].Style.BackColor = Color.Green;
            }
        }

        private void load_tabs()
        {
            set_right_num_of_tabs();
        }
        private void SelectTimeForm_Load(object sender, EventArgs e)
        {
            load_tabs();
        }

        private int save_course()
        {
            int idd;
            conn = new OracleConnection(ordb);
            conn.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = conn;
            cmd.CommandText = "INSERT_COURSE";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("coursen",course_info.getCourseName());
            cmd.Parameters.Add("cost", course_info.getCost());
            cmd.Parameters.Add("duration", course_info.getsessionDuration());
            cmd.Parameters.Add("numofstudents", course_info.getnumOfStudents());
            cmd.Parameters.Add("numOfSessions", hs.Count);
            cmd.Parameters.Add("instructor", instructor);
            cmd.Parameters.Add("st_date", course_info.getStartDate());
            cmd.Parameters.Add("en_date", course_info.getEndDate());
            cmd.Parameters.Add("idd",OracleDbType.Int32,ParameterDirection.Output);
            int x = cmd.ExecuteNonQuery();
            idd = int.Parse(cmd.Parameters["idd"].Value.ToString());
            cmd.Dispose();
            conn.Close();
            return idd;
        }
        private bool save_sessions(int id)
        {
            conn = new OracleConnection(ordb);
            conn.Open();
            OracleCommand cmd;

            foreach( var tt in hs)
            {
                cmd = new OracleCommand();
                cmd.Connection = conn;
                cmd.CommandText = "ADD_SESSIONS_IN_INTERVAL";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("courseid", id);
                cmd.Parameters.Add("sessionDay",allDates[tt.Key]);
                cmd.Parameters.Add("strTime", tt.Value.Value+7);
                cmd.Parameters.Add("hallId", hallsNums[tt.Value.Key]);
                cmd.Parameters.Add("suc", OracleDbType.Int32,ParameterDirection.Output);
                int x = cmd.ExecuteNonQuery();
                cmd.Dispose();
            }
            conn.Close();

            return false;
        }

        private void save_btn_Click(object sender, EventArgs e)
        {
            try
            {
                int idd = save_course();
                save_sessions(idd);
            }
            catch (Exception ex)
            {
                MessageBox.Show("not successfull attemp");
            }
            finally
            {
                MessageBox.Show("Course Successfully added");

                

            }

          
            this.Close();
            


        }
    }
}
