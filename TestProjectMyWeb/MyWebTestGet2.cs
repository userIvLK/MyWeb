namespace TestProjectMyWeb
{
    public class MyWebTestGet2
    {
        [Fact]
        public void TestGet2()
        {
            using (var httpClient = new HttpClient())
            {
                string expected = "Hello  Ш";

                httpClient.BaseAddress = new Uri("https://localhost:7057/My");
                string name = " Ш";
                var response = httpClient.GetAsync($"?name={name}").Result;
                var result = response.Content.ReadAsStringAsync().Result;

                Assert.Equal(expected, result);
            }
        }
    }
}