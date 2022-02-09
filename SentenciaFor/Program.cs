using System;

namespace SentenciaFor
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
                "Camila"
            };
            bool run = true;
            //for (int i = 0; i < friends.Length; i++)
            for (int i = 0; i < friends.Length && run; i++ )
            {
                Console.WriteLine("el amigo es: " + friends[i]);
            }
        }
    }
}
