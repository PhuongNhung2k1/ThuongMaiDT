using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proj3_C7
{
    public class Student
    {
        public int id{ get; set; }
        public string name{ get; set; }
        public string address{ get; set; }
        public Student(int i, string n, string a)
        {
            id = i;
            name = n;
            address = a;
        }
    }
}