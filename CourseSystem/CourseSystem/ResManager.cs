using System;
using System.IO;
using System.Reflection;

namespace CourseSystem
{
    public class ResManager
    {

        public static string ResPath = @"..\..\Resources";

        public static string Icon(string filename)
        {
            string iconPath = Path.Combine(ResPath, filename);

            if (!File.Exists(iconPath))
            {
                throw new FileNotFoundException("File Doesn't Exist");
            }

            return iconPath;
        }
    }


}