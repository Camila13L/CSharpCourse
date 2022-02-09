using System;

namespace Interface
//Contrato que la clase  debe respetar y cumplir. Tienen anexos (propiedades y metodos). 
//Los anexos tiene propiedades y metodos que deben cumplir el contrato o interface. 
//Base en patrones de diseño
{
    class Program
    {
        static void Main(string[] args)
        {
            Shark[] sharks = new Shark[] //Shark es una clase y no una interfaz
            {
                new Shark("Tiburoncin",56),
                new Shark("Jaws", 65)
            };

            //Se puede crear un arreglo de sirenas sin necesariamente crear un arreglo 
            //de objetos de sirenas
            //Crar arreglos directamente de la interface
            //Las interfaces no sirven para crear objetos, sino para darles cate

            IFish[] fishs = new IFish[]//solamente es una capsula donde voy a meter los objetos que deben cumplir
            //con las categorias que dicta la interface sobre la que creo esta coleccion de objetos
            {
                //ambos pertencen a IFish
                new Siren(100),
                new Shark("Tuburoncito", 100)
            };

            ShowFish(sharks);
            ShowAnimals(sharks);//se peude mandar lo mismo porque tambien implmenta el nombre
            ShowFish(fishs); //busca el metodo swim
        }
        //Cualquier objeto que sea un pez entra en este metodo
        public static void ShowFish(IFish[] fish)
        {
            Console.WriteLine("- Mostranos los peces -");
            int i = 0;
            while(i < fish.Length)
            {
                Console.WriteLine(fish[i].Swim());
                i++;
            }
        }
        public static void ShowAnimals(IAnimal[] animals)
        {
            Console.WriteLine("- Mostranos los animales -");
            int i = 0;
            while (i < animals.Length)
            {
                Console.WriteLine(animals[i].Name);
                i++;
            }
        }
    }
    public class Siren : IFish
    {
        public int Speed { get; set; }
        //Creamos un constructor que reciba la velocidad
        public Siren(int Speed)
        {
            this.Speed = Speed;
        }
        public string Swim()
        {
            //Console.WriteLine("- Mostrando las Sirenas --");
            return $"La sirena nada a {Speed} km/h";
        }
    }
    public class Shark : IAnimal, IFish
    {
        //Se agregan los accesors de las interfaces

        public string Name { get; set; }
        public int Speed { get; set; }

        //El constructor se ejecuta cuando ponemos la plabra NEW

        public Shark(string Name, int Speed)
        {
            this.Name = Name;
            this.Speed = Speed; 
        }
        public string Swim()
        {
            return $"{Name} nada {Speed} km/h";
        }

    }
    //Le da una categoria que no sea unica
    public interface IAnimal
    {
        public string Name { get; set; }
    }
    public interface IFish
    {
        public int Speed { get; set; }
        public string Swim(); //Solo lo llamo al metodo
        //solamente es como una clausula que tienes que cumplir si 
        //si quieres utilizar la interface pezcado. 
    }
}
