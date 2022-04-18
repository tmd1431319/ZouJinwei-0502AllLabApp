using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ZouJinwei_0502AllLabApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Enter first Number:");
            double n1 = Convert.ToDouble(Console.ReadLine());
            Console.Write("Enter second Number:");
            double n2 = Convert.ToDouble(Console.ReadLine());
            Console.Write("Enter operator:");
            string op = Console.ReadLine();
            double result = 0;
            bool valid = true;
            switch(op)
            {
                case "+":
                    result = n1 + n2;
                    break;
                case "-":
                    result = n1 - n2;
                    break;
                case "*":
                    result = n1 * n2;
                    break;
                case "/":
                    result = n1 / n2;
                    break;
                default:
                    valid = false;
                    break;
            }
            if (valid) Console.WriteLine("Result is: " + result);
            else Console.WriteLine("Invalid Operator!");
        }
    }
}
