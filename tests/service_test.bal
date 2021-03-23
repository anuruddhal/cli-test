import ballerina/test;
import ballerina/http;


http:Client clientEP = check new("http://localhost:9090/hello");

@test:Config { }
function testTestDouble() returns  error? {
    string payload = check clientEP->get("/sayHello", targetType = string);
    test:assertEquals(payload, "Hello Ballerina!");
}
