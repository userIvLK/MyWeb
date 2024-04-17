using System.Net.Http.Json;
using System.Reflection;
using MyWeb.Models;


namespace MyWeb
{

    class Program
    {
        private static void GetPropertyValues(Object obj)
        {
            Type t = obj.GetType();
            Console.WriteLine("Type is: {0}", t.Name);
            PropertyInfo[] props = t.GetProperties();

            Console.WriteLine("Properties (N = {0}):",
                              props.Length);
            foreach (var prop in props)
                if (prop.GetIndexParameters().Length == 0)
                    Console.WriteLine("   {0} ({1}): {2}", prop.Name,
                                      prop.PropertyType.Name,
                                      prop.GetValue(obj));
                else
                    Console.WriteLine("   {0} ({1}): <Indexed>", prop.Name,
                                      prop.PropertyType.Name);
        }

        static void Main(string[] args)
        {
            using (var httpClient = new HttpClient())
            {
                httpClient.BaseAddress = new Uri("https://localhost:7057/My");
                var response = httpClient.GetAsync("?name=abc").Result;
                var result = response.Content.ReadAsStringAsync().Result;
                Console.WriteLine(result);
           
                OrderItem o1 = new() { Id = Guid.NewGuid(), Price = new Random().Next(1, 100), Quantity = 1, Name = "A" };
                OrderItem o2 = new() { Id = Guid.NewGuid(), Price = new Random().Next(1, 100), Quantity = 1, Name = "B" };
                OrderItem o3 = new() { Id = Guid.NewGuid(), Price = new Random().Next(1, 100), Quantity = 1, Name = "c" };
                List<OrderItem> orderList = new() { o1, o2, o3 };
                Order myOrder = new() { Id = Guid.NewGuid(), Customer = "Ivan", Items = orderList, OrderDate = DateTime.Now };
                var response2 = httpClient.PostAsJsonAsync(httpClient.BaseAddress.AbsoluteUri, myOrder).Result;
                var result2 = response2.Content.ReadFromJsonAsync<OrderItem>().Result;
                if(result2 != null)
                {
                    GetPropertyValues(result2); 
                }
            }
        }
    }
}