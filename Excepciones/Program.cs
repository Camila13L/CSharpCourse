using System;
using System.IO;
namespace Excepciones
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                //Poner un @ al principio para evitar que la \ se lea como salto de linea
                string content = File.ReadAllText(@"C:\Users\HP\source\repos\Variables\Excepciones\pato.txt");
                Console.WriteLine(content);
               // string content2 = File.ReadAllText(@"C:\Users\HP\source\repos\Variables\Excepciones\pato2.txt");
                //Console.WriteLine(content2);
                //para voluntariamente agregar una excepcion
                throw new Exception("ocurrio algo raro");

            }
            // generalizar con la palabra "Exception"
            catch (FileNotFoundException ex)
            {
                Console.WriteLine("El archivo no fue encontrado");
            }
            catch (Exception ex)//sugerencia de siempre ponerlo al mismo
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                Console.WriteLine("Cerramos todo, ejecuta pase lo que pase");
                
            }
            //Console.WriteLine("seguimos");


        }
    }
}
