using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ucenje
{
    internal class E08WhilePetlja
    {

        public static void Izvedi()
        {
            Console.WriteLine("while petlja");

            //while radi s bool tipom podatka

            // beskonačna petlja 

            while (true)
            {
                Console.WriteLine("Ispis iz beskonačne petlje nakon čega je break");
                break;
            }


            Console.WriteLine("*****************************");

            //u while se ne mora ući

            int i = 10;

            {
                Console.WriteLine(i++);
            }

            Console.WriteLine("*****************************");


            i=0
            while (1 < 10) ;
            {
                Console.WriteLine(1++);
            }
            





        }
    }
}
