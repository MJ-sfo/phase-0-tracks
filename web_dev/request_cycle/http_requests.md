Release 0: View HTTP Requests

1- In phase-0-tracks/web_dev/request_cycle create a Markdown file called http_requests.md. Research the following questions and record your answers in that file.
2- What are some common HTTP status codes?
200 OK
201 Created - The request has been fulfilled, resulting in the creation of a new resource.
206 Partial Content  - The server is delivering only part of the resource, due to a range header sent by the client
400 Bad Request - The server cannot or will not process the request due to an apparent client error 
403 Forbidden
404 Not Found - requested resource could not be found but may be available in the future. 
408 Request Time-out -  server timed out waiting for the request. 

3- What is the difference between a GET request and a POST request? When might each be used?
GET - Requests data from a specified resource
GET requests should never be used when dealing with sensitive data

POST - Submits data to be processed to a specified resource
POST requests are never cached
POST requests do not remain in the browser history

4- Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?