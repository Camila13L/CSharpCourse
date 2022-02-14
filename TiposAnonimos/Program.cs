using System;

namespace TiposAnonimos
{
    class Program
    {
        static void Main(string[] args)
        {
            //Creamos un objeto sin crear una clase
            var camila = new 
            {
                Name = "Camila",
                Country = "Bolivia"
            };
            
            Console.WriteLine($"{camila.Name} {camila.Country}");

            //Desventaja NO SE PUEDE CA,MBIAR EL VALOR DE LAS PALABRAS.
            ////Read Only
            //Son objetos no modificales

            //Arreglos anomimos
            //Todos los objetos de la coleccion deben tener la misma estructura
            var beers = new[]
            {
                new {Name = "Red", Brand = "Delirium"},
                new {Name = "London Porter", Brand = "Fullers"}
            };

            foreach (var b in beers)
            {
                Console.WriteLine($" cerveza {b.Name} {b.Brand}");
            }
        }
    }
}
