module.exports = {
  defaultBrowser: "Safari",
  options: {
    logRequests: true,
  },
  rewrite: [{
    // Redirect all urls to use https
    match: ({
      url
    }) => url.host === "www.reddit.com",
    url: {
      host: "old.reddit.com"
    }
  }],
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
        /.*\.apprentice\.io$/
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Profile 1"
      }
    },
    {
      // Open github.com urls in Google Chrome
      match: finicky.matchHostnames([
        "apprenticefs.atlassian.net"
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Profile 1"
      }
    },
    {
      // Open github.com urls in Google Chrome
      match: finicky.matchHostnames([
        "app.datadoghq.com"
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Profile 1"
      }
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
      browser: {
        name: "Google Chrome",
        profile: "Default"
      }
    },
    {
      // Open clubhouse.io urls in Google Chrome
      match: finicky.matchHostnames([
        "shortcut.com",
        /.*\.shortcut.com/
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Default"
      }
    },
    {
      // Open honeycomb urls in Google Chrome
      match: finicky.matchHostnames([
        "honeycomb.io",
        /.*\.honeycomb.io/
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Default"
      }
    },
    {
      // Open AWS urls in Google Chrome
      match: finicky.matchHostnames([
        "aws.amazon.com",
        /.*\.aws.amazon.com/,
        /.*\.amazonaws.com/
      ]),
      browser: "Google Chrome"
    },
    {
      // Open trello.com urls in Google Chrome
      match: finicky.matchHostnames([
        "trello.com"
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Default"
      }
    },
    {
      // Open circleci.com urls in Google Chrome
      match: finicky.matchHostnames([
        "circleci.com"
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Default"
      }
    },
    {
      // Open Lattice in Google Chrome
      match: finicky.matchHostnames([
        "glitch.latticehq.com"
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Default"
      }
    },
    {
      // Open Glitch's pagerduty in Google Chrome
      match: finicky.matchHostnames([
        "fogcreek.pagerduty.com",
        "app.pagerduty.com"
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Default"
      }
    },
    {
      // Open glitch's dev watcher in Google Chrome
      match: "http://localhost:1234",
      browser: {
        name: "Google Chrome",
        profile: "Default"
      }
    },
    {
      // Open Grafana urls in Google Chrome
      match: finicky.matchHostnames([
        "grafana.glitch.com",
        "grafana.staging.glitch.com"
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Default"
      }
    },
    {
      // Open kibana urls in Google Chrome
      match: finicky.matchHostnames([
        "kibana.glitch.com",
        "kibana.staging.glitch.com"
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Default"
      }
    },
    {
      // Open metabase urls in Google Chrome
      match: finicky.matchHostnames([
        "metabase.glitch.com",
        "metabase.staging.glitch.com"
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Default"
      }
    },
    {
      // Open Glitch HappyFox urls in Google Chrome
      match: finicky.matchHostnames([
        "help.glitch.com",
        "glitch.happyfox.com"
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Default"
      }
    },
    {
      // Open Glitch in Chrome
      match: finicky.matchHostnames([
        "glitch.com",
        "glitch.me"
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Default"
      }
    },
    {
      // Open Notion urls in Google Chrome
      match: finicky.matchHostnames([
        "notion.so",
        "www.notion.so"
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Default"
      }
    },
    {
      // Open Sentry urls in Google Chrome
      match: finicky.matchHostnames([
        "sentry.io",
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Default"
      }
    },
    {
      //	open everything from NewsExplorer in STP (since it opens Safari directly)
      match: ({
        opener
      }) => opener.bundleId = "betamagic.News-Explorer",
      browser: "Safari"
    },
  ]
};
