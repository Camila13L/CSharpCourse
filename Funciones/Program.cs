using System;

namespace Funciones
{
    class Program
    {
        static void Main(string[] args)
        {
            int a = 600;
            int b = 2;

            Show();
            Sum(a,b);
            int c = Mul(a, b);
            Console.WriteLine(c); 
        }
        static int Mul(int a, int b)
        {
            return a * b; 
        }
        static void Sum(int a, int b)
        {
            int c = a + b;
            Console.WriteLine(c);
        }
        static void Show()
        {
            Console.WriteLine("Hola soy un texo que se imprime desde funcion");
        }
    }
}
