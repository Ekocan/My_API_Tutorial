 
 Error Code	Meaning

200	OK - The request has succeeded. The client can read the result of the request in the body and the headers of the response.
201	Created - The request has been fulfilled and resulted in a new resource being created.
202	Accepted - The request has been accepted for processing, but the processing has not been completed.
204	No Content - The request has succeeded but returns no message body.
304	Not Modified. See Conditional requests.

  400	    Bad Request -- Your request is invalid.
  
  401	    Unauthorized -- Your API key is wrong.
  
  403   	Forbidden -- The kitten requested is hidden for administrators only.
  
  404	    Not Found -- The specified kitten could not be found.
  
  405	    Method Not Allowed -- You tried to access a kitten with an invalid method.
  
  406	    Not Acceptable -- You requested a format that isn't json.
  
  410	    Gone -- The kitten requested has been removed from our servers.
  
  418	    I'm a teapot.
  
  429	    Too Many Requests -- You're requesting too many kittens! Slow down!
  
  500	    Internal Server Error -- We had a problem with our server. Try again later.
  
  503	    Service Unavailable -- We're temporarily offline for maintenance. Please try again later.
