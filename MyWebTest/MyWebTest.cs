using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Net.Http;

namespace MyWebTest
{
    [TestClass]
    public class MyWebTest
    {
        [TestMethod]
        public void TestMethod1()
        {
            using (var httpClient = new HttpClient())
            {
                httpClient.BaseAddress = new Uri("https://localhost:7057/My");
                var response = httpClient.GetAsync("?name=abc").Result;
                var result = response.Content.ReadAsStringAsync().Result;
                result = "Hello abc";
            }
        }
    }
}
