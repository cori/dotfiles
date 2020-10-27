module.exports = {
  defaultBrowser: "Safari Technology Preview",
  handlers: [{
      // Open google.com and *.google.com urls in Google Chrome
      match: finicky.matchHostnames([
        "google.com", // match google.com domain as string (to make regular expression less complicated)
        /.*\.google\.com$/ // match all google.com subdomains
      ]),
      browser: "Google Chrome"
    },
    {
      // Open github.com urls in Google Chrome
      match: finicky.matchHostnames([
        "github.com"
      ]),
      browser: "Google Chrome"
    },
    {
      // Open clubhouse.io urls in Google Chrome
      match: finicky.matchHostnames([
        "clubhouse.io",
        /.*\.clubhouse.io/
      ]),
      browser: "Google Chrome"
    },
    {
      // Open trello.com urls in Google Chrome
      match: finicky.matchHostnames([
        "trello.com"
      ]),
      browser: "Google Chrome"
    },
    {
      // Open circleci.com urls in Google Chrome
      match: finicky.matchHostnames([
        "circleci.com"
      ]),
      browser: "Google Chrome"
    }
  ]
};
