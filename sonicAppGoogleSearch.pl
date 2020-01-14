#!/usr/bin/perl
use Mojo::UserAgent;
use Mojo::DOM;

print "Enter what you\'d like to search Google for: ";
$searchQuery=<STDIN>;

print "Searching google for: $searchQuery"; 
$ua = new Mojo::UserAgent; 
$url = "http://www.google.com/search?q=\"$searchQuery\"&hl=id&lr=&start=1&sa=N";
$response = $ua->get($url)
    ->res
    ->dom;
$dom = Mojo::DOM->new( $response );
$href_list = $dom
    ->find('div[id="main"]')    
    ->join("\n");

print "Google Searh Results in HTML: $href_list";