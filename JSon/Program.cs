using System;
//Nueva biblioteca

 // para convertir de objeto a cadena y de cadena a objeto
namespace JSon // formato para traducir un formato a una cadena o caracteres 
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
            //En Json {} es el objeto
            //Sirve para traducir un objeto y pasarlo a otro lenguaje de programacion 
            //otro servidor. 
            //Coneccion entre lenguajes
            //Con el \ se dice que tenemos caacteres
            //Debe seguir la siguiente estructura
            string json = "{\"Name\": \"Pikantus\", \"Brand\": \"Erdinger\"}";
            //Los : es el = 

            // representa una coleccion de objetos
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

            //Entre cada propiedad o atributo hay uan coma. 
            string json2 = "["+
                "{\"Name\": \"Pikantus\", \"Brand\": \"Erdinger\"}," +
                "{\"Name\": \"Corona\", \"Brand\": \"Pacena\"}"+
                "]"; 

        }
        public class Beer

        {
            public string Name { get; set; }
            public string Brand { get; set; }
        }
    }
}
