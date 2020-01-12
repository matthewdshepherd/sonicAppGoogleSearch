#!/usr/bin/perl
use LWP::UserAgent;

print "Enter what you\'d like to search Google for:";
$searchQuery=<STDIN>;
print $searchQuery