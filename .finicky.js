module.exports = {
  defaultBrowser: "Safari Technology Preview",
  handlers: [
    {
      // Open google.com and *.google.com urls in Google Chrome
      match: finicky.matchHostnames([
        "google.com", // match google.com domain as string (to make regular expression less complicated)
        /.*\.google.com$/ // match all google.com subdomains
      ]),
      browser: "Google Chrome"
    },
    {
      // Open github.com urls in Google Chrome
      match: finicky.matchHostnames([
        "github.com" // match google.com domain as string (to make regular expression less complicated)
      ]),
      browser: "Google Chrome"
    }
  ]
};
