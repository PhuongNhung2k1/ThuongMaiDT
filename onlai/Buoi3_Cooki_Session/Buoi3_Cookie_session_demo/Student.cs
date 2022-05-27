using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Buoi3_Cookie_session_demo
{
    public class Student
    {
        public string name { get; set; }
        public int age { get; set; }
       public Student(string n, int a)
        {
            name = n;
            age = a;
        }
    }
}