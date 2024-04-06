# Apache Parser
------------------------------------------

A small script used for an assignment in my Systems programming class.
The purpose is to take a Linux Apache server's logs and parse it to find the
occurrences of the connection status in each entry. This could be used on a personal
HTTP server to help with server administration.

<h2>Usage</h2>

This would be user on an Apache log file with the following structure -

127.0.0.1 - - [24/Mar/2023:13:15:42 -0400] "GET /index.html HTTP/1.1" 200 612 "-" "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)"

Where '200' would be the connection status. The output would be something as follows:

<img src="https://github.com/EthanGilles/apache_parser/blob/e71ff28974f6285e7bad429601fe0165646d2422/sample.png">
