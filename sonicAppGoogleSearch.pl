#!/usr/bin/perl
use Mojo::DOM;

print "Enter what you\'d like to search Google for: "; #Terminal prompt askig for search
$searchQuery=<STDIN>; #Assiging Terminal respinse to searchQuery
print "Searching Google for: $searchQuery"; #print on Terminal what the search for google is
$ua = new Mojo::UserAgent; #create new Mojo UserAgent object assigned to $ua
$url = "http://www.google.com/search?q=\"$searchQuery\"&hl=id&lr=&start=1&sa=N"; #interpolate url search string
$response = $ua->get($url) #send a GET/HTTP request 
    ->res #get the response
    ->dom; #assign the dom from the response object to $response 
$dom = Mojo::DOM->new( $response ); #create new MOJO DOM object passing in the resonse assigned to $dom
$href_list = $dom #manipulating the object using find and join from Mojo
    ->find('div[id="main"]') #use find to find the div with the id of main
    ->join("\n");   #join each of these on a new line
print "Google Searh Results in HTML: $href_list"; #print out on the terminal the Google Serach HTML response