using System;

namespace Propiedades
{
    class Program
    {
        static void Main(string[] args)
        {
            Sale mySale = new Sale(100, DateTime.Now);
           // mySale.Total = 1;
            //mySale.Date = DateTime.Now; NO S EPEUDE EDITAR
            Console.WriteLine(mySale.Total);
            Console.WriteLine(mySale.Date);
        }
    }
    class Sale
    {
        private int total;
        private DateTime date;

        //las propiedades se ven con mayusculas al inicio 
        //son accesorios
        //l estamos convientiendo en un objeto
        //tiene sus propios metodos
        //tiene el nombre de cada una de las variables
        //tienen su tipo

        public string Date
        {
            get
            {
                return date.ToLongDateString(); 
            }
        }
        public int Total
        {
            get
            {
                return total;
            }
            set //nos deja editar
            {
                //se anade automaticamente el value, porque le estoy mandadndo el total
                if (value < 0)
                    value = 0;
                total = value; 
            }
        }
        public Sale(int total, DateTime date)
        {
            this.total = total;
            this.date = date;
        }

    }
}
