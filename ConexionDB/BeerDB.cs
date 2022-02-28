using System;
using System.Collections.Generic;
using MySql.Data.MySqlClient;

namespace ConexionDB
{
    public class BeerDB : DB
    {
        public BeerDB(string user, string password) : base (user, password)
        {

        }

        public List<Beer> GetAll()
        {
            Connect();
            List<Beer> beers = new List<Beer>();
            string query = "SELECT Id, Name, BrandId FROM BEER";
            MySqlCommand command = new MySqlCommand(query, _connection);
            MySqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                int id = reader.GetInt32(0);
                string name = reader.GetString(1);
                int brandId = reader.GetInt32(2);

                beers.Add(new Beer(id,name,brandId));

            }

            Close();
            return beers; 
        }
    }
}
