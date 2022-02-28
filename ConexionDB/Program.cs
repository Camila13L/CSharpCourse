using System;
using System.Collections.Generic;

namespace ConexionDB
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                BeerDB beerDB = new BeerDB("root", "ZMarvel9613");
                List<Beer> beers = beerDB.GetAll();
                foreach(var b in beers)
                {
                    Console.WriteLine($"Numero: {b.Id}, Nombre: {b.Name}, Marca: {b.BrandId}");
                }
               
                
                Console.WriteLine("Succesful Connection");
            }
            catch(Exception ex)
            {
                Console.WriteLine("Not Succesful! due to " + ex.ToString());
            }

        }
    }
}
