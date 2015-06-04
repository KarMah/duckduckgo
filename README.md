== README

* Ruby version - ruby 2.1.1p76 
* Rails version - 4.1.0

* Notes
 - Uses gem Nokogiri for HTML scraping and duck-duck-go to access duck-duck-go api
 - API Query for to fetch topic summary was straight forward. 
 - Scraping was challenging due to the fact that the response didn't contain the results. Thankfully there was seperate HTML version of the search results.
 - Currently fetches results only from first page. Next pages can be queried by a post request (didn't try it though. seemed ugly)

* Usage
 - The home page provides interface to search. It can also be accessed at /search
 - Enter the search keyword and submit the form. 
  * If API call responds with type 'A', then topic summary is show as the search result
  * Else, Scrapes the search results for that keyword and list the search results for the 1st page.

* Note: 
 - Querying for Search results page continuously results in a 403 error. It was quiet hard to develop/test due to the same reason
 - Also, it looks like the [API](https://api.duckduckgo.com/api) limits the usage of search results.
