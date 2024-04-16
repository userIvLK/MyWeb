
using System.Net.Http.Json;
using MyWeb.Models;


namespace MyWeb
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var httpClient = new HttpClient())
            {
                httpClient.BaseAddress = new Uri("https://localhost:7057/My?name=abc");
                var response = httpClient.GetAsync(httpClient.BaseAddress.AbsoluteUri).Result;
                var result = response.Content.ReadAsStringAsync().Result;
                Console.WriteLine(result);
            }
            using (var httpClient = new HttpClient())
            {
                httpClient.BaseAddress = new Uri("https://localhost:7057/My");
                OrderItem o1 = new() { Id = Guid.NewGuid(), Price = new Random().Next(1, 100), Quantity = 1, Name = "A" };
                OrderItem o2 = new() { Id = Guid.NewGuid(), Price = new Random().Next(1, 100), Quantity = 1, Name = "B" };
                OrderItem o3 = new() { Id = Guid.NewGuid(), Price = new Random().Next(1, 100), Quantity = 1, Name = "c" };
                List<OrderItem> orderList = new() { o1, o2, o3 };
                Order myOrder = new() { Id = Guid.NewGuid(), Customer = "Ivan", Items = orderList, OrderDate = DateTime.Now };
                var response = httpClient.PostAsJsonAsync(httpClient.BaseAddress.AbsoluteUri, myOrder).Result;
                var result = response.Content.ReadFromJsonAsync<OrderItem>().Result;
                if(result != null)
                {
                    Console.Write($"Name: {result.Name}, Price: {result.Price}"); 
                }
            }
        }
    }
}