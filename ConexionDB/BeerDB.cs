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

        public Beer Get(int id)
        {
            Connect();
            Beer beer = null;
            string query = "SELECT Id, Name, BrandId FROM Beer WHERE id = @id";
            MySqlCommand command = new MySqlCommand(query, _connection);
            command.Parameters.AddWithValue("@id", id);
            MySqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                string name = reader.GetString(1);
                int brandId = reader.GetInt32(2);

                beer = new Beer(id, name, brandId);

            }

            Close();
            return beer;
        }

        public void Add(Beer beer)
        {
            Connect();
            string query = "INSERT INTO Beer(Name, BrandID) Values (@name, @brandId);";
            MySqlCommand command = new MySqlCommand(query, _connection);
            command.Parameters.AddWithValue("@Name", beer.Name);
            command.Parameters.AddWithValue("@BrandId",beer.BrandId);
            command.ExecuteNonQuery();
            Console.WriteLine("Estoy en Add de BeerDB");
            Close();

        }

        public void Edit(Beer beer)
        {
            Connect();
            string query = "UPDATE beer SET name=@name, brandId=@brandId WHERE id=@id";
            MySqlCommand command = new MySqlCommand(query, _connection);
            command.Parameters.AddWithValue("@name", beer.Name);
            command.Parameters.AddWithValue("@brandId", beer.BrandId);
            command.Parameters.AddWithValue("@id",beer.Id);
            command.ExecuteNonQuery();

            Close();

        }

        public void Delete(int id)
        {
            Connect();
            string query = "DELETE FROM Beer WHERE id=@id";
            MySqlCommand commnad = new MySqlCommand(query, _connection);
            commnad.Parameters.AddWithValue("@id", id);
            commnad.ExecuteNonQuery();

            Close();
        }
    }
}
