using System;
using System.Collections.Generic;
using System.Linq;
namespace LINQ
//PERMITE TRABAJAR CON COLECCIONES
//COMO SI FUERA SQL
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Beer> beers = new List<Beer>()
            {
                new Beer()
                {
                    Name = "Corona", Country="Mexico"
                },
                new Beer()
                {
                    Name = "Delirium", Country = "Belgica"
                },
                new Beer()
                {
                    Name = "Endinger", Country = "Alemania"
                }
            };

            foreach (var beer in beers)
                Console.Write($"{beer} \n");

            Console.WriteLine("----------------------");

            //SELECT
            // from [nombre de la nueva conleccion] in [nombre del objeto]
            //Para seleccionar todos los campos var beerName = from b in beers
            //select b → llega a ser in EInumerable
            var beersNAme = from b in beers
                            select new
                            {
                                Name = b.Name, 
                                Letters = b.Name.Length,
                                Fixed = 1
                            };

            foreach (var beer in beersNAme)
                Console.WriteLine($"Nombre: {beer.Name}, {beer.Letters}, {beer.Fixed} \n");

            //CON LINQ SE SELECIONA LO ANTERIOR Y SE CREA UNA NUEVA LISTA    
            var beerNameReal = from b in beersNAme
                               select new
                               {
                                   Name = b.Name
                               };

            Console.WriteLine("----------------------\n");
            foreach (var beer in beerNameReal)
                Console.WriteLine($"{beer.Name} \n");

            Console.WriteLine("----------------------\n");

            //Filtrando informacion
            //Seleccionando toda la coleccion
            var beersMExico = from b in beers
                              where b.Country == "Mexico"
                              || b.Country =="Alemania"
                              select b;
            foreach (var beer in beersMExico)
                Console.WriteLine($"{beer} \n");

            Console.WriteLine("----------------------\n");

            //Ordenar datos por el campo de pais
            //En la variable orderedBeers se guarda la nueva lista
            var orderedBeers = from b in beers
                               orderby b.Country descending
                               select b; 
            foreach(var beer in orderedBeers)
                Console.WriteLine($"{beer} \n");

        }

    }

    public class Beer
    {
        public string Name { get; set; }
        public string Country { get; set; }

        //le da prioridad al formato
        public override string ToString()
        {
            return $"Nombre:{Name}, Pais:{Country} \n ";
        }
    }
}
