To begin with, lets talk about some of the common status codes when it comes to http.  
The most common is 200, aka everything is great.  This is the successful code, where nothing went wrong and things are a-ok.  
The other most comming is 404, or site not found.  This comes when the place the browser was looking for info just doesnt exist currently.
403 means that this browser does not have the access credentials to take a peek at that data, while 400 is that the request itself was not valid.  408 is when there was not an answer quickly enough and the query timed out.  
So basically 400s are client side errors.  500s are errors on the side of the server.

* A get request calls info from the server, a post sends info to it.

* a cookie is a bit of info that tracks where you have been on the web, as well as storing information about the last time you visited a site.  It can be used for alot of things, most of which is an attempt to make repeated visits to a site easy by saving data about what was entered last time.
