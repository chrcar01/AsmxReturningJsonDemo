<%@ WebService Language="C#" Class="MyWebService" %>

using System.Web.Script.Services;
using System.Web.Services;

[ScriptService]
public class MyWebService : WebService
{
    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
    public object RetrieveData(string countries, string startDate, string endDate)
    {
        return new
        {
            countries,
            startDate,
            endDate
        };
    }
}