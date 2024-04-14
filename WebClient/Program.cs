﻿
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
                    OrderItem o1 = new() { Id = Guid.NewGuid(), Price = 90, Quantity = 1, Name = "A" };
                    OrderItem o2 = new() { Id = Guid.NewGuid(), Price = 10, Quantity = 1, Name = "B" };
                    OrderItem o3 = new() { Id = Guid.NewGuid(), Price = 20, Quantity = 1, Name = "c" };
                     using HttpResponseMessage response = await httpClient.PostAsJsonAsync(httpClient.BaseAddress.AbsoluteUri, MyOrder);
                    var result = await response.Content.ReadAsStringAsync();
                    Console.WriteLine(result);

                }
            }
        }
    }
}