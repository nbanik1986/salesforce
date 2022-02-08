@RestResource(urlmapping='/GitHub/webhook/v2/*')

global class GitHubwebhookListener
{


@HttpPost
global static void doPost()
{

RestRequest req=RestContext.request;
RestResponse res=RestContext.response;
res.addHeader('Content-type','application/json');
system.debug('request body:'+ req.requestbody.tostring());
res.responseBody=blob.valueOf('{"Success":true,"event":"unknown"}');
res.statusCode=200;
}

@HttpGet

global static string doGet()
{

return '{"message":"Hello from webhook"}';
}


}