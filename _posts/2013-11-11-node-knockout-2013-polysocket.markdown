---
layout: post
title:  "node knockout 2013 - polysocket"
date:   2013-11-11 15:38:26
categories: html5 nodejs
---

For Node Knockout 2013, I finally sat down and built out an idea I'd had for a while: polysocket.

I've held a gripe against socket.io for a long time. I was interested in WebSockets for a long time (even writing one of the first, but now abandoned, WebSocket parsers for NodeJS back when the spec changed every week).

I didn't like socket.io because it wasn't websockets. Sure, it helped other browsers keep up with the "realtime" hotness, but we are now speaking the "socket.io" protocol instead of websockets.

Then, I used socket.io in a client project and it couldn't handle a medium amount of load since it communicated state across a poor overloaded redis pubsub channel.

Even though supporting IE6 is no longer a big deal, I wanted to prove that we could build a WebSocket polyfill that would transparently upgrade browsers.

This polyfill is perhaps trickier than other polyfills because there are two sides: the browser and the server. I want the browser to have "WebSockets" and the server to ONLY serve pure WebSockets (not socket.io channels, or sockjs channels, or [insert realtime lib here] channels).

JUST WEBSOCKETS!

So, [taterbase](http://twitter.com/taterbase) and I built it. We built it in just a few hours too.

[http://nodeknockout.com/teams/nodest-colony](http://nodeknockout.com/teams/nodest-colony)