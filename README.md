# Sonic Job Application
By Matthew Malone
[GitHub](https://github.com/matthewdshepherd)
[LinkedIn](https://www.linkedin.com/in/matthewdmalone/)
[Turing Portfolio](alumni.turing.io/alumni/matthew-malone)

### Question:
Using Perl, in the command terminal search Google and return the first page of results.

### Required Modules:
(Mojolicious)[https://metacpan.org/pod/Mojolicious]:
- Mojo::UserAgent;
- Mojo::DOM; 

### Notes:
This script prompts the user via the command line to enter their search. The script will then search for Google, given the query,  returning the first page of results in the full HTML response. Google has built many precautions against web scraping. The three that most affected this script are the following:
- Changing the class and id names of the HTML elements. Every Google search the class and id names change, not allowing the scraper to select specific classes and/or ids.
- A Changing DOM Tree. Each search provides a different DOM Tree to navigate. Traversing the DOM tree becomes nearly impossible when it is different every search.
- Search results in different Languages. Each search through the query string returns results in a different language.