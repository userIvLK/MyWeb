
using System.Net.Http.Json;
using MyWeb.Models;


namespace MyWeb
{
    class Program
    {
        static async Task Main(string[] args)
        {
            for(int i = 0; i < 1000; ++i)
            {
                using (var httpClient = new HttpClient())
                {
                    httpClient.BaseAddress = new Uri("https://localhost:7057/My");
                    OrderItem o1 = new() { Id = Guid.NewGuid(), Price = new Random().Next(1, 100), Quantity = 1, Name = "A" };
                    OrderItem o2 = new() { Id = Guid.NewGuid(), Price = new Random().Next(1, 100), Quantity = 1, Name = "B" };
                    OrderItem o3 = new() { Id = Guid.NewGuid(), Price = new Random().Next(1, 100), Quantity = 1, Name = "c" };
                    List<OrderItem> orderList = new() { o1, o2, o3 };
                    Order myOrder = new() { Id = Guid.NewGuid(), Customer = "Ivan", Items = orderList, OrderDate = DateTime.Now};
                    using HttpResponseMessage response = await httpClient.PostAsJsonAsync(httpClient.BaseAddress.AbsoluteUri, myOrder);
                    var result = await response.Content.ReadAsStringAsync();
                    Console.WriteLine(result);

                }
            }
        }
    }
}