// Common HTTP Status Codes
Code 	Message 		Description
200 	OK 			Standard response for successful HTTP requests
201 	Created 		Request has been fulfilled and new resource created
301 	Moved Permanently 	Resource has been moved to a new URL
400 	Bad Request 		Server cannot process the request due to client error
401 	Unauthorized 		Authentication is required
403 	Forbidden 		Server refuses to authorize the request
404 	Not Found 		Requested resource could not be found
500 	Internal Server Error 	Unexpected condition was encountered

// Common Response Headers

Content-Type: 			Specifies the media type of the content (e.g., text/html, application/json)
Content-Length:		 	The length of the response body in bytes
Location:	 		Used in redirects (with 3xx status codes)
Set-Cookie: 			Sets HTTP cookies on the client
Cache-Control: 			Directives for caching mechanisms
Access-Control-Allow-Origin: 	For CORS support

