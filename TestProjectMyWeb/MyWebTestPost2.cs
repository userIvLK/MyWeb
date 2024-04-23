using MyWeb.Models;
using System.Net.Http.Json;

namespace TestProjectMyWeb
{
    public class MyWebTestPost2
    {
        [Fact]
        public void TestPost2()
        {
            using (var httpClient = new HttpClient())
            {
                string expected = "A";

                httpClient.BaseAddress = new Uri("https://localhost:7057/My");
                OrderItem o1 = new() { Id = Guid.NewGuid(), Price = 7, Quantity = 1, Name = "A" };
                OrderItem o2 = new() { Id = Guid.NewGuid(), Price = 7, Quantity = 1, Name = "B" };
                OrderItem o3 = new() { Id = Guid.NewGuid(), Price = 9, Quantity = 1, Name = "c" };
                List<OrderItem> orderList = new() { o1, o2, o3 };
                Order myOrder = new() { Id = Guid.NewGuid(), Customer = "Ivan", Items = orderList, OrderDate = DateTime.Now };
                var response = httpClient.PostAsJsonAsync(httpClient.BaseAddress.AbsoluteUri, myOrder).Result;
                var result = response.Content.ReadFromJsonAsync<OrderItem>().Result;
                
                Assert.Equal(expected, result.Name);
            }
        }
    }
}