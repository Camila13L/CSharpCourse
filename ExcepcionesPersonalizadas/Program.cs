using System;

namespace ExcepcionesPersonalizadas
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                Beer beer = new Beer()
                {
                    Name = "London Porter",
                    Brand = "Fuller's"
                };
                Console.WriteLine(beer);
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

        }
        public class invalidBeerException: Exception
        {
            public invalidBeerException(): base(" no existe marca o nombre, datos invalidos")
            {

            }
        }



        public class Beer
        {
            public string Name { get; set; }
            public string Brand { get; set; }

            public override string ToString()
            {
                if (Name == null || Brand == null)
                    throw new invalidBeerException();
                return $"Cerveza {Name}, Brand {Brand} ";
            }
        }
    }
}
