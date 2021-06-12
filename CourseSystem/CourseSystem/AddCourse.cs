using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FekyTask.helperClasses
{
    public class AddCourse
    {
        string CourseName;
        int Cost, sessionDuration, numOfStudents, numOfsessions;
        DateTime startDate, endDate;


        private int checkIfNum(string num)
        {
            int mynumber;
            bool isnumber = int.TryParse(num,out mynumber);
            if (isnumber) return mynumber;
            return -1;
        }
        public bool setCourseName(string course)
        {
            this.CourseName = course;
            return true;
        }
        public bool setCost(string Cost)
        {
            int cond = this.checkIfNum(Cost);
            if(cond == -1)
            {
                return false;
            }
            this.Cost = cond;
            return true;
        }
        public bool setsessionDuration(string sessionDuration)
        {
            int cond = this.checkIfNum(sessionDuration);
            if (cond == -1)
            {
                return false;
            }
            this.sessionDuration = cond;
            return true;
        }
        public bool setnumOfStudents(string numOfStudents)
        {
            int cond = this.checkIfNum(numOfStudents);
            if (cond == -1)
            {
                return false;
            }
            this.numOfStudents = cond;
            return true;
        }
        public bool setnumOfsessions(string numOfsessions)
        {
            int cond = this.checkIfNum(numOfsessions);
            if (cond == -1)
            {
                return false;
            }
            this.numOfsessions = cond;
            return true;
        }
        public void setStartDate(DateTime startDate)
        {
            this.startDate = startDate;
        }
        public void setEndDate(DateTime endDate)
        {
            this.endDate = endDate;
        }
        public string getCourseName()
        {
            return this.CourseName ;
        }
        public int getCost()
        {
            return this.Cost;
        }
        public int getsessionDuration()
        {
            return this.sessionDuration;
        }
        public int getnumOfStudents()
        {
            return this.numOfStudents;
        }
        public int setnumOfsessions()
        {
            return this.numOfsessions;
        }
        
        public DateTime getStartDate()
        {
           return this.startDate;
        }
        public DateTime getEndDate()
        {
            return this.endDate;
        }
        public void addCourse() { 
        }
    }

}
