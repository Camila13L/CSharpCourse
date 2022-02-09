using System;

namespace SobreesscrituraDeMetodos
{
    class Program
    {
        static void Main(string[] args)
        {
            //la palabra NEW es la que ayuda a ejecutar el constructor
            B b = new B();
            Console.WriteLine(b.Hi());
            Sale sale = new Sale(10);
            sale.Add(2);
            sale.Add(3);
            Console.WriteLine(sale.GetTotal());

            SaleWithTax saleWithTax = new SaleWithTax(10, 1.16m);
            saleWithTax.Add(2);
            saleWithTax.Add(9);
            Console.WriteLine(saleWithTax.GetTotal());
        }
    }
    public class Sale
    {
        private decimal[] _amounts;
        private int _n;
        private int _end; //saber si ya llegamos al limite de espacios

        //el contructor debe tener el mismo nombre de la clase pero no devuelve nada
        //solamente inicializa los valores
        //n es la cantidad de trabajo
        public Sale(int n)
        {
            _amounts = new decimal[n];
            _n = n;
            _end = 0;
        }
        public void Add(decimal amount)
        {
            if(_end < _n)
            {
                _amounts[_end] = amount;
                _end++; 
            }
        }
        public virtual decimal GetTotal()
        {
            decimal result = 0;
            int i = 0;
            while (i < _amounts.Length)
            {
                result += _amounts[i];
                i++;
            }
            return result;
        }
    }
    public class SaleWithTax : Sale
    {
        //en esta nueva clase se anade automaticamente los metodos del padre :3 SO COOL!. 
        private decimal _tax;
        //Base invoca el contructor del padre
        //Estamos obligados a mandar el contrcor porque sale recibe un contructor. 
        //Al lado de int n, puedo agregar mas elementos si asi lo encesitara
        public SaleWithTax(int n, decimal tax) : base(n)
        {
            _tax = tax;
        }
        //Los metodos sobre escritos no tienen parametros
        public override decimal GetTotal() 
        {
            return base.GetTotal() * _tax; //se pone una m al final para devolover un decimal
        }
    }
    public class A
    {
        //Se usa virtual para sobreescritua de metodos
        public virtual string Hi()
        {
            return "Hola! soy A.";
        }
    }
    public class B : A
    {
        public override string Hi()
        {
            //para combinar los dos metodos
            return base.Hi() + " Hola! soy B";
        }
    } 
    
}
