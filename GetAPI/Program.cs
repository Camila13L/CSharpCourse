using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;

namespace GetAPI
{
    class Program
    {
        HttpClient client = new HttpClient();
        static async Task Main(string[] args)
        {
            Program program = new Program();
            await program.GetTodoItems(); 
        }
        private async Task GetTodoItems()
        {
            string response = await client.GetStringAsync("https://jsonplaceholder.typicode.com/todos");
            Console.WriteLine(response);
            List<Todo> todo = JsonConvert.DeserializeObject<List<Todo>>(response);
            foreach (var t in todo)
            {
                Console.WriteLine(t.title);
            }
        }
    }

    class Todo
    {
        public int userId { get; set; }
        public int id { get; set; }
        public string  title { get; set; }
        public bool completed { get; set; }
    }
}
