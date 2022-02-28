using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Channels;
using MySql.Data.MySqlClient;
namespace ConexionDB
{
    public abstract class DB
    {
        private string _connectionstring;

        protected MySqlConnection _connection;

        public DB(string user, string password)
        {
            _connectionstring = "server = 127.0.0.1; User Id = " + user + "; " +
                    "Persist Security Info = True; database = CsharpDB; Password = " + password;
        }

        public void Connect()
        {
            _connection = new MySqlConnection(_connectionstring);
            _connection.Open();
        }

        public void Close()
        {
            if(_connection != null && _connection.State == System.Data.ConnectionState.Open)
            _connection.Close();
        }
    }
}
