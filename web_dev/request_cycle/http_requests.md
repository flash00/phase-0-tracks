What are some common HTTP status codes?
200  OK, 403 forbidden, 404 not found, 408 request time-out, 410 gone, 500 internal server error, 503 service temporarily unavailable, 504 gateway time-out
What is the difference between a GET request and a POST request?
A GET requests data from a specified resource.
A POST submits data to be processed to a specified resource.
When might each be used?
Use GET to search results pages, get images, scripts or stylesheets, anytime you are not sending data as part of a request.
Use POST for payment forms, password and login forms or posting blog articles or something via a form.
Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests
An HTTP cookie is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing. A server, when returning an HTTP object to a client, may also send a piece of state information which the client will store. Included in that state object is a description of the range of URLs for which that state is valid. Any future HTTP requests made by the client which fall in that range will include a transmittal of the current value of the state object from the client back to the server. The state object is called a cookie.