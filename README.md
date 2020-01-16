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
I have a year of experience in JS. I learned Perl in a few days, starting with the docs and then other areas of the web, including Stackoverflow. The similarities between Perl and JavaScript made picking up Perl enough to write a script fun and enjoyable.

This script prompts the user via the command line to enter their search. The script will then search Google, given the query,  returning the first page of results in the full HTML response. While building this script, I discovered three of the many precautions Google takes against web scraping. The precautions Google has setup I found to be quite brilliant in my various attempts to pull only the wanted text from the HTML doc.

- First, I tried to pull the content from the specific classes and ids. Google changes the class and id names of the HTML elements on every Google search, not allowing the scraper to select specific classes and/or ids.
- Since the classes and ids change, I thought to traverse the DOM tree and pull out the wanted content. That is when I encountered a Changing DOM Tree. Each search provides a different DOM Tree to navigate.
- When implementing a google search through a URL path, Google can tell and responds with results in different languages.
