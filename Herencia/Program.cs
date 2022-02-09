using System;

namespace Herencia
{
    class Program
    {
        static void Main(string[] args)
        {
            Doctor doctor1 = new Doctor("Juan", 40, "Cardiologo");
            Console.WriteLine(doctor1.GetInfo());
            Console.WriteLine(doctor1.GetData());
            Dev dev1 = new Dev("Camila", 23, "C#");
            Console.WriteLine(dev1.GetInfo());
            Console.WriteLine(dev1.GetData());
        }

        class People
        {
            //cuando algo es privado va con un guion bajo
            private string _name;
            private int _age;
            public People(string name, int age)
            {
                _name = name;
                _age = age;
            }
            //protected string GetInfo()
            //solamente para usar en las clases a las que se hereda pero no en el MAIN
            //protected string GetInfo() //solamente se peude utilizar en la clase
            public string GetInfo()
            {
                return _name + " " + _age;
            }
        }

        //Solo se puede heredar de una clase

        //Se hereda con : // la clase de la que heredas.
        class Doctor : People
        {
            private string _speciality;
            //constructor de esta nueva clase
            //se usa la plabra base para heredar lños atributos 
            //no tienes que poner this. si los atributos que mandas no se llaman igual. 
            public Doctor(string name, int age, string speciality) : base(name, age)
            {
                _speciality = speciality;
            }

            public string GetData()
            {
                return GetInfo() + " " + _speciality;
            }
        }

        class Dev : People
        {
            private string _language;
            public Dev(string name, int age, string laguage) : base(name, age)
            {
                _language = laguage;
            }
            public string GetData()
            {
                return GetInfo() + " " + _language; 
            }
        }
    }
}
