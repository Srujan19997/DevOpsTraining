#r "Newtonsoft.Json"

using System.Net;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Primitives;
using Newtonsoft.Json;

public static async Task<IActionResult> Run(HttpRequest req, ILogger log)
{
    log.LogInformation("C# HTTP trigger function processed a request.");

    string StartNumber = req.Query["StartNumber"];
    string StopNumber = req.Query["StopNumber"];
    string ElementsInLine = req.Query["ElementsInLine"];
      int n1 = int.Parse(StartNumber);
            int n2 = int.Parse(StopNumber);
            int n3 = int.Parse(ElementsInLine);
            string output = "";
            string output1= "";
            int temp = 0;
            for (int i = n1; i <= n2; i++,temp++){

                if(temp==n3)
                {
                    temp = 0;
                    output1 += "\n";
                }
                if (i % 3 == 0 && i % 5 == 0)
                {
                    output = " FizzBuzz ";
                }
                else if (i % 3 == 0)
                {
                    output = " Fizz ";
                }
                else if (i % 5 == 0)
                {
                    output = " Buzz " ;
                }
                else
                {
                    output = " " + i;
                }
                output1 = output1 + output;
            }



    
   

    return output1 != null
        ? (ActionResult)new OkObjectResult($" {output1}")
        : new BadRequestObjectResult("Please pass a name on the query string or in the request body");
}
