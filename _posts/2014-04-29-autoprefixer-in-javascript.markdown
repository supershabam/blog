---
layout: post
title:  "autoprefixer in javascript"
date:   2014-04-29 15:38:26
categories: javascript reactjs
---

What if a ReactJS component could manually handle its style changes?

It seems overcomplicated for a component to apply a class to itself (e.g. active, or open) when it could just apply the css style itself based on the state (e.g. visible: true; translatex: 200px).

Then, there's the problem of applying vendor prefixes to newer css properties...

We could use the already-built and fantastic Autoprefixer browser-side to get vender-prefixed css properties on-the-fly.

This was just a thought, and it's honestly a bad one.

Applying css at the component level is bad. It makes your style brittle, especially if you're attempting the now-standard responsive layout.

What does it mean to be "open" in your css. Does that mean visible? Does that mean translated 200px, or 50px? Once you code the css into the component, you've lost all the benefits of dealing with css in the first place.