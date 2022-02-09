using System;
using System.Collections.Generic; //Agrgamos esta libreria
namespace Listas //Objeto que tiene una coleccion enorme de metodos para
                 //trabajar coleccion de datos
                 //No tiene un limite de elementos


{
    class Program
    {
        static void Main(string[] args)
        {
            List<int> number = new List<int>();
            number.Add(5);
            number.Add(9);

            Console.WriteLine(number.Count);

            List<int> numbers2 = new List<int>()
            {
                1,6,7,8,54
            };

            Console.WriteLine(numbers2.Count);

            numbers2.Clear(); //PAra limpiar el arreglo 
            Console.WriteLine(numbers2.Count);

            List<string> countries = new List<string>()
            {
                "Bolivia","España", "Venezuela"
            };
            Console.WriteLine(countries.Count); 
        }

    }
}
