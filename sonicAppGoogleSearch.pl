#!/usr/bin/perl
# use strict;
use LWP::UserAgent;

print "Enter what you\'d like to search Google for: ";
$searchQuery=<STDIN>;
print "Searching google for: $searchQuery";
$ua = new LWP::UserAgent;
$ua->timeout(30);
$ua->agent(" Mozilla/5.0 (0wn3d; U; PPC Sik OS XXX Mach-O; en-US; rv:1.8.1) Gecko/20061010 Firefox/2.0");
$url = "http://www.google.com/search?q=\"$searchQuery\"&hl=id&lr=&start=0&sa=N";

$response = $ua->get($url);
if(!($response->is_success)){
     print ($response->status_line. "     Error! \n");
    print "Response is not a success"
} else {
    @results = $response->as_string;
    $results= "@results";
    print "TheSE ARE THE RESuLTS: $results";
}