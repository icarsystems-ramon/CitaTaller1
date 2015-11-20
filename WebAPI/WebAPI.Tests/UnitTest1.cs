using System;
using NUnit.Framework;
using CitaTaller.ServiceInterface;
using CitaTaller.ServiceModel;
using ServiceStack.Testing;
using ServiceStack;

namespace CitaTaller.Tests
{
    [TestFixture]
    public class UnitTests
    {
        private readonly ServiceStackHost appHost;

        public UnitTests()
        {
            appHost = new BasicAppHost(typeof(MyServices).Assembly)
            {
                ConfigureContainer = container =>
                {
                    //Add your IoC dependencies here
                }
            }
            .Init();
        }

        [TestFixtureTearDown]
        public void TestFixtureTearDown()
        {
            appHost.Dispose();
        }

        
    }
}
