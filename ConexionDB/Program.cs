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

                bool again = true;
                int op = 0;
                do
                {
                    ShowMenu();
                    Console.WriteLine("Elige una opción: ");
                    op = int.Parse(Console.ReadLine());


                    switch (op)
                    {
                        case 1:
                            Show(beerDB);
                            break;

                        case 2:
                            Add(beerDB);
                            break;

                        case 3:
                            Edit(beerDB);
                            break;

                        case 4:
                            Delete(beerDB);
                            break; 

                        case 5:
                            again = false;
                            break;
                    }

                } while (again);

                Console.WriteLine("Succesful Connection");
            }
            catch(Exception ex)
            {
                Console.WriteLine("Not Succesful! due to " + ex.ToString());
            }

        }

        public static void ShowMenu()
        {
            Console.WriteLine("\n-------MENU--------");
            Console.WriteLine("1. Mostrar");
            Console.WriteLine("2. Agregar");
            Console.WriteLine("3. Editar");
            Console.WriteLine("4. Eliminar");
            Console.WriteLine("5. Salir");
        }

        public static void Show(BeerDB beerDB)
        {
            Console.Clear();
            Console.WriteLine("---- CERVEZAS DE LA DB ------");
            List<Beer> beers = beerDB.GetAll();
            foreach (var b in beers)
            {
                Console.WriteLine($"Id: {b.Id} Nombre: {b.Name}");
            }
        }

        public static void Add(BeerDB beerDB)
        {
            Console.Clear();
            Console.WriteLine("Agregar nueva cerveza: ");
            Console.WriteLine("Escribe el nombre: ");
            string name = Console.ReadLine();
            Console.WriteLine("Escribe el Id de la Marca");
            int brandId = int.Parse(Console.ReadLine());

            Beer beer = new Beer(name, brandId);

            beerDB.Add(beer);

        }

        public static void Edit(BeerDB beerBD)
        {
            Console.Clear();
            Show(beerBD);
            Console.WriteLine("Editar Cerveza: ");
            Console.WriteLine("Escribe el Id de tu cerveza a editar: ");
            int id = int.Parse(Console.ReadLine());

            Beer beer = beerBD.Get(id);


            if(beer != null)
            {
                Console.WriteLine("Escribe el nombre: ");
                string name = Console.ReadLine();
                Console.WriteLine("Escribe el ID de la marca: ");
                int brandId = int.Parse(Console.ReadLine());

                beer.Name = name;
                beer.BrandId = brandId;

                beerBD.Edit(beer);
            }
            else
            {
                Console.WriteLine("La cerveza no existe");
            }

        }
        public static void Delete(BeerDB beerDB)
        {

            Console.Clear();
            Show(beerDB);
            Console.WriteLine("Eliminar Cerveza ");
            Console.WriteLine("Escribe el Id de tu cerveza a Eliminar: ");
            int id = int.Parse(Console.ReadLine());

            Beer beer = beerDB.Get(id);


            if (beer != null)
            {
                beerDB.Delete(id)
;            }
            else
            {
                Console.WriteLine("La cerveza no existe");
            }
        }
    }

}
