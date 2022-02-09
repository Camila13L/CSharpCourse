using System;
//Nueva biblioteca
// para convertir de objeto a cadena y de cadena a objeto
using System.Text.Json;

namespace JSon 
{
    class Program
    {
        static void Main(string[] args)
        {
            Beer myBeer = new Beer()
            {
                Name = "Pikantus",
                Brand = "Erdinger"
            };

            // string json = "{\"Name\": \"Pikantus\", \"Brand\": \"Erdinger\"}";
            string json = JsonSerializer.Serialize(myBeer);  // de objeto a cadena

            Beer beer = JsonSerializer.Deserialize<Beer>(json);
       
            Beer[] beers = new Beer[] {
                new Beer(){
                    Name =  "Pikantus",
                    Brand = "Erdiger"
                },
                new Beer()
                {
                    Name = "Corona",
                    Brand = "Pacena"
                }
            };


            /*  string json2 = "[" +
                  "{\"Name\": \"Pikantus\", \"Brand\": \"Erdinger\"}," +
                  "{\"Name\": \"Corona\", \"Brand\": \"Pacena\"}" +
                  "]";
            */
            string json2 = JsonSerializer.Serialize(beers);
            Beer[] beers2 = JsonSerializer.Deserialize<Beer[]>(json2);

        }
        public class Beer

        {
            public string Name { get; set; }
            public string Brand { get; set; }
        }
    }
}
