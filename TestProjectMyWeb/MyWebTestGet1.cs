namespace TestProjectMyWeb
{
    public class MyWebTestGet1
    {
        [Fact]
        public void TestGet1()
        {
            using (var httpClient = new HttpClient())
            {
                string expected = "Hello abc";

                httpClient.BaseAddress = new Uri("https://localhost:7057/My");
                string name = "abc";
                var response = httpClient.GetAsync($"?name={name}").Result;
                var result = response.Content.ReadAsStringAsync().Result;

                Assert.Equal(expected, result);
            }
        }
    }
}