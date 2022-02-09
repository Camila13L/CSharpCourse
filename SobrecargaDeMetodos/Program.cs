using System;

namespace SobrecargaDeMetodos
{
    class Program
    {
        static void Main(string[] args)
        {
            Math math = new Math();
            Console.WriteLine(math.Sum(1,2));
            Console.WriteLine(math.Sum("5", "5"));

            int[] array = new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
            Console.WriteLine(math.Sum(array));
        }
    }
    public class Math
    {
        //la sobre carga solamente se fia en lo que recibe y no en lo que devuelve.
        //por eso todos deben devolver la que devuelve la primera
        public int Sum(int a, int b)
        {
            return a + b; 
        }
        public int Sum(string a, string b)
        {
            return int.Parse(a) + int.Parse(b); 
        }
        public int Sum(int[] numbers)
        {
            int result = 0;

            for (int i = 0; i < numbers.Length; i++ )
            {
                result+= numbers[i];
            }
            return result;
        }
    }
}
