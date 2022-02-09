using System;

namespace Static //Nos permite que algo sea perteneciente al tipo
    //Para usar propiedades y atributos e un objeto hay que crearlo
    //Pero, con static no hay necesidad de crear el objeto
{
    class Program
    {
        static void Main(string[] args)
        {
            //La clase se llama People
            //El objeto se llama peopple1
            //Los objetos tiene propiedades y funciuones
            // con estatic le anade propiedades a la clase que a la vez contiene
            //objetos con sus propias funciones.
            //Pero, no puede acceder a las propiedades de la Clase
            //La clase es una estructura de datos que tiene una estructura de informacion. 
            People people1 = new People()
            {
                Name = "Camila",
                Age = 23
            };//notar que es como una pequeña base de dato dentro el objeto

            People fabiam = new People()
            {
                Name = "Fabiam",
                Age = 25
            };

            Console.WriteLine(People.Count); //estamos utilizando algo propio de la clase
            //Count es una propiedad 

            //Para utilizar metodos estaticos se invocan con la clase y no con el objeto
            Console.WriteLine(People.GetCount());

        }
        //Static se peude agregar a la clase misma
        //Si la clase es esatic todos los metos y clases deben serlo
        public static class A
        {
            public static void Some()
            {
                Console.WriteLine("algo");
            }
        }
            //lo que se agregan son las propiedades
        public class People
        {
            public static int Count = 0; 
            //con static agregamos una propiedad que pertenezca a la classe y no al objeto como tal
            public string Name { get; set; }
            public int Age { get; set; }
            public People()
            {
                //Cada que se invoca Count qaumenra una vez
                //Es un contador de la veces que se utiliza la clase people
                //Se anade en el contructor
                Count++; 
            }

            //Static tambien se puede utilizar con emtodos
            public static string GetCount()
            {
                return $"Esta clase se ha utilizado {Count} veces";
            }
        }
    }
}
