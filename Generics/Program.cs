using System;

namespace Generics // Nos ayuda a reutilizar coifo
{
    class Program
    {
        static void Main(string[] args)
        {
            MyList<int> numbers = new MyList<int>(10);
            numbers.Add(1);
            numbers.Add(10);

            MyList<string> strings = new MyList<string>(10);
            strings.Add("KMY");
            strings.Add("FABIAM");



            MyList<People> people = new MyList<People>(5);
            people.Add(new People() { Name = "Cristian", Country = "La Paz" });
            people.Add(new People() { Name = "Isabela", Country = "CBBA" });

            Console.WriteLine(numbers.GetString());
            Console.WriteLine(strings.GetString());
            Console.WriteLine(people.GetString());


            //Console.WriteLine(numbers.GetElement(12));
            //Console.WriteLine(strings.GetElement(0));
            //Console.WriteLine(strings.GetElement(0));
        }
    }
    public class People
        //para ver que metodos tiene solo ponemos ": object" y luego control y click
    {
        public string Name { get; set; }
        public string Country { get; set; }

        public override string ToString()//sobre cargamos el metodo
        {
            return $"Nombre: {Name}, Pais: {Country}";
        }
    }
    public class MyList<T> 
        //<T> indica el generics definimos como queremos que trabaje la clase
        //quiero que trabaje con int en este caso, pero podria decidir que trabaje con strings
    {
        private T[] _elements;
        private int _index = 0;
        public MyList(int n)
        {
            _elements = new T[n];
        }
        public void Add(T e)
        {
            if(_index < _elements.Length)
            {
                _elements[_index] = e;
                _index++;
            }
        }
        public T GetElement(int i) //Devuelve el tipo T
        {
            if (i <= _index && i>=0)
            {
                return _elements[i];
            }
            return default(T); 
        }

        public string GetString()
        {
            int i = 0;
            string result = "";
            while (i < _index)
            {
                result += _elements[i].ToString() + " | "; 

                i++;  
            }
            return result;
        }


    }
}
