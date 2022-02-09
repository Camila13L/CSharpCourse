using System;

namespace WhiledoWhile
{
    class Program
    {
        static void Main(string[] args)
        {
            int i = 0;
            while (i < 10)
            {
                Console.WriteLine("Iteracion de i " + i);
                i++;
            }

            int j = 0;
            while (j < 100)
            {
                if (j > 10)
                    break;

                Console.WriteLine("Iteracion de j " + j);
                j++;
            }

            string[] friends = new string[7] {
                "pancho",
                "Paco",
                "Anna",
                "Ruben",
                "Karla",
                "Luis",
                "Camila"
            };
            int index = 0;
            while(index < friends.Length)
            {
                Console.WriteLine(friends[index]);
                index++;
            }
            bool run = false;
            do {
                Show();
            } while (run);
        }
        static void Show()
        {
            Console.WriteLine("entro una vez y ya ");
        }

    }
}
