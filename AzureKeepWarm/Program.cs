using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace AzureKeepWarm
{
    class Program
    {
        static void Main(string[] args)
        
            {
                var runner = new Runner();
            var runner2 = new Runner2();
            var siteUrl = ConfigurationManager.AppSettings["SiteUrl"];
                var waitTime = int.Parse(ConfigurationManager.AppSettings["WaitTime"]);

            //Task.WaitAll(runner.HitSite(siteUrl,waitTime));
            Task.WaitAll(runner2.HitSite("http://citatallerapi.azurewebsites.net/api/dmsconfig?format=json", 30));
            }

            private class Runner
            {
                private HttpClient client = new HttpClient(new HttpClientHandler());
 
                public async Task HitSite(string siteUrl, int waitTime)
                {
                    while (true)
                    {
                    try
                        {
                            var request = await client.GetAsync(new Uri(siteUrl));
                            Console.WriteLine("{0}: {1}", DateTime.Now, request.StatusCode);
                            Trace.TraceInformation("{0}: {1}", DateTime.Now, request.StatusCode);
                         }
                    catch (Exception ex)
                        {
                            Console.WriteLine(ex.ToString());
                            Trace.TraceError(ex.ToString());
                        }
                    await Task.Delay(waitTime * 1000);
                    }
                }
            }
        private class Runner2
        {
            private HttpClient client = new HttpClient(new HttpClientHandler() { Credentials = new NetworkCredential("$citatallerapi", "nncsct6gvfHvkxWzPHaQayqtvtxkLLfDJt6FSe8CmNBdRiJy9rSG7uEvd7H8") });

            public async Task HitSite(string siteUrl, int waitTime)
            {
                while (true)
                {
                    try
                    {
                        var request = await client.GetAsync(new Uri(siteUrl));
                        Console.WriteLine("{0}: {1}", DateTime.Now, request.StatusCode);
                        Trace.TraceInformation("{0}: {1}", DateTime.Now, request.StatusCode);
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.ToString());
                        Trace.TraceError(ex.ToString());
                    }
                    await Task.Delay(waitTime * 1000);
                }
            }
        }
    }
}
