using System;
using System.Collections.Generic;

namespace ForEach
{
    class Program
    {
        static void Main(string[] args)
        {
            //Va a ser del tipo que especificas a la derecha
            //var solamente se utiliza dnetro de metodos. 
            //no peudo utilizarlo como propiedades de la clasee. 
            var numbers = new List<int>() 
            {
                23,3,5,10,22,12
            };
            //foreach(var number in new string("algo"))

            foreach (var number in numbers)
            {
                Console.WriteLine(number); 
            }
            List<People> students = new List<People>()
            {
                new People(){ Name = "Hector", Country = "Mexico"},
                new People(){ Name = "Camila", Country = "Bolivia"},
                new People(){ Name = "Fernando", Country = "Brasil"},
            };
            Show(students);
            students.RemoveAt(0);
            Show(students);
        }
        static void Show(List<People> students)
        {
            Console.WriteLine("-- Se ha ejecutado este metodo --");
            foreach( var people in students)
            {
                Console.WriteLine($"Nombre: {people.Name}, Pais: {people.Country}"); 
            }
        }
    }
    class People
    {
        public string Name { get; set; }
        public string Country { get; set; }
    }
}
