//  on ShadowDepository@Fastly@2.0, glitch is "Profile 1" and Fastly is "Default"
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
    browser: {
      name: "Google Chrome",
      profile: "Default"
    }
  },
  {
    // Open github.com urls in Google Chrome
    match: finicky.matchHostnames([
      "github.com"
    ]),
    browser: {
      name: "Google Chrome",
      profile: "Default"
    }
  },
  {
    // Open clubhouse.io urls in Google Chrome
    match: finicky.matchHostnames([
      "clubhouse.io",
      /.*\.clubhouse.io/
    ]),
    browser: {
      name: "Google Chrome",
      profile: "Profile 1"
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
      profile: "Profile 1"
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
      profile: "Profile 1"
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
      profile: "Profile 1"
    }
  },
  {
    // Open circleci.com urls in Google Chrome
    match: finicky.matchHostnames([
      "circleci.com"
    ]),
    browser: {
      name: "Google Chrome",
      profile: "Profile 1"
    }
  },
  {
    // Open Lattice in Google Chrome
    match: finicky.matchHostnames([
      "glitch.latticehq.com"
    ]),
    browser: {
      name: "Google Chrome",
      profile: "Profile 1"
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
      profile: "Profile 1"
    }
  },
  {
    // Open glitch's dev watcher in Google Chrome
    match: "http://localhost:1234",
    browser: {
      name: "Google Chrome",
      profile: "Profile 1"
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
      profile: "Profile 1"
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
      profile: "Profile 1"
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
      profile: "Profile 1"
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
      profile: "Profile 1"
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
      profile: "Profile 1"
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
      profile: "Profile 1"
    }
  },
  {
    // Open Sentry urls in Google Chrome
    match: finicky.matchHostnames([
      "sentry.io",
    ]),
    browser: {
      name: "Google Chrome",
      profile: "Profile 1"
    }
  },
  //  Fastly
  {
    // Open Fastly slack urls in Google Chrome
    match: finicky.matchHostnames([
      "fastly.enterprise.slack.com",
      "fastly.slack.com"
    ]),
    browser: {
      name: "Google Chrome",
      profile: "Default"
    }
  },
  {
    // Open Fastlassian urls in Google Chrome
    match: finicky.matchHostnames([
      "fastly.atlassian.net",
      "confluence.corp.fastly.com"
    ]),
    browser: {
      name: "Google Chrome",
      profile: "Default"
    }
  },
  {
    // Open Fastly Okta urls in Google Chrome
    match: finicky.matchHostnames([
      "fastly.okta.com",
    ]),
    browser: {
      name: "Google Chrome",
      profile: "Default"
    }
  },
  {
    // Open Fastly zoom urls in Google Chrome
    match: finicky.matchHostnames([
      "fastly.zoom.us",
    ]),
    browser: {
      name: "Google Chrome",
      profile: "Default"
    }
  },
  {
    // not sure exactly where these cme from, but open them in Google Chrome
    match: finicky.matchHostnames([
      /.*\.visualforce\.com/,
    ]),
    browser: {
      name: "Google Chrome",
      profile: "Default"
    }
  },
  {
    // not sure exactly where these come from, but open them in Google Chrome
    match: finicky.matchHostnames([
      /.*\.secretcdn\.net/,
    ]),
    browser: {
      name: "Google Chrome",
      profile: "Default"
    }
  },
  {
    // Figma
    match: finicky.matchHostnames([
      /.*\.figma\.com/,
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
