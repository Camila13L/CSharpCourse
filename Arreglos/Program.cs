﻿using System;

namespace Arreglos
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] friends = new string[7] {
                "pancho",
                "Paco",
                "Anna",
                "Ruben",
                "Karla",
                "Luis",
                null
            };

            friends[0] = "Camila";
            Console.WriteLine(friends[0]);
            Console.WriteLine(friends[1]);
            Console.WriteLine(friends[2]);
            Console.WriteLine(friends[3]);
            Console.WriteLine(friends[4]);
            Console.WriteLine(friends[5]);
            Console.WriteLine(friends[6]);

            friends[6] = "Carlos";
            Console.WriteLine(friends[6]);

        }
    }
}
