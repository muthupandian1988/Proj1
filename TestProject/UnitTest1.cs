using Microsoft.Extensions.Logging;
using Proj1.Controllers;
namespace TestProject
{
    public class Tests
    {
        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void Test1()
        {
            Assert.Pass();
        }
        [Test]
        public void Test2()
        {
            Assert.Pass();
        }
        [Test]
        public void Test3()
        {
            //Proj1.Controllers.WeatherForecastController c = new WeatherForecastController();
            //var arr = c.Get();
            //Assert.IsNotNull(arr);
            Assert.Pass();
        }
    }
}