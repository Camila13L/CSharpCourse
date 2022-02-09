using System;

namespace OOP
{
    class Program
    {
        static void Main(string[] args)
        {
            Sale sale1 = new Sale(100, DateTime.Now);
            Sale sale2 = new Sale(200, DateTime.Now);

            sale1.Show();
            Console.WriteLine(sale1.GetInfo());
            sale2.Show();
            Console.WriteLine(sale2.GetInfo());
        }
    }

    class Sale
    {
        int total;
        DateTime date;

        public Sale(int total, DateTime date)
        {
            this.total = total;
            this.date = date; 
        }

        public string GetInfo()
        {
            return total + " " + date.ToLongDateString();  
        }

        //este metodo se accede cuando creo el objeto 
        //publico fuero de la clase
        //privado dentro de la clase
        public void Show()
        {
            Console.WriteLine("Hola! Soy la venta");
        }
    }
}
