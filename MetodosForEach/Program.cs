using System;
using System.Collections.Generic;

namespace MetodosForEach
{
    class Program
    {
        static void Main(string[] args)
        {
            List<int> numbers = new List<int>()
            {
                4,5,3,19
            };
            show(numbers);
            numbers.Insert(0, 3); // lo pone en una posicion
            show(numbers);

            //verificar existencia
            if (numbers.Contains(19))
                Console.WriteLine("Existe");
            else
                Console.WriteLine("No existe");

            int pos = numbers.IndexOf(19);
            Console.WriteLine(pos);

            //sort
            numbers.Sort(); //mutable
            show(numbers);

            string name = "Hector";
            name = name.ToUpper(); //no mutable
            Console.WriteLine(name);

            //Add Range. agregar una lista a otra lista
            numbers.AddRange(new List<int>()
            {
                200,300,400
            });
            show(numbers);

            var numbers3 = new List<int>()
            {
                1,2,2
            };
            numbers.AddRange(numbers3);
            show(numbers);



        }
        public static void show(List<int> numbers)
        {
            Console.WriteLine("-- numeros --");
            foreach(var n in numbers)
            {
                Console.WriteLine(n); 
            }
        }
    }
}
