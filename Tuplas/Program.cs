﻿using System;

namespace Tuplas
{
    class Program
    {
        static void Main(string[] args)
        {
            //Practicamente es una lista de valores/ valores
            //Generalmente pueden ser de distinto tipo
            //Lista de elementos de variables sin necesidad de crear una clase.

            //Especificar una Tupla: 
            // (tipo de dato[nombre variable])[nombre de Tupla] = (valor int, "valor string");
            (int id, string name) product = (1, "cerveza stout");
            Console.WriteLine($"{product.id} {product.name}");


            //Son modificables

            product.name = "cerveza porter";
            Console.WriteLine($"{product.id} {product.name}");

            //Otra forma de crearlo
            var person = (1, "Hector");
            Console.WriteLine($"{person.Item1} {person.Item2}");

            //Crear arreglos de Tuplas
            //Todas las Tuplas deben tener la misma estructura
            var people = new[]
            {
                (1, "Kamila"),
                (9, "Juan"), 
                (11, "Pepino")
            };
            foreach(var p in people)
            {
                Console.WriteLine($"{p.Item1} {p.Item2}"); 
            }

            //Otra formade crear coleccionesde Tuplas
            (int id, string name)[] people2 = new[]
            {
                (1, "Kamila"),
                (9, "Juan"),
                (11, "Pepino")
            };

            foreach (var p2 in people2)
            {
                Console.WriteLine($"{p2.name} {p2.id}");
            }


        }
    }
}
