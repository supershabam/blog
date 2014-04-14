---
layout: post
title:  "npm locksmith"
date:   2012-09-12 15:38:26
categories: nodejs
---

[Locksmith][locksmith] is an npm module to provide a cluster-wide resource lock backed by redis.

I'm organizing a system to process tweets. Individual workers will pull down a tweeter's history and analyze their usage patterns.

Since twitter rate limits the api calls I can make, it's in my advantage to make sure I don't have two workers pulling the same twitter user at the same time.

Since I'm already using redis, I decided to make use of the [setnx][setnx] command.

Now, locking is generally considered evil. I'd typically just let the workers duplicate work (its honestly going to be rare that I'll have two workers chewing on the same twitter user). But, this looked like a fun problem to experiment with for a side-project.

[locksmith]: https://npmjs.org/package/locksmith
[setnx]: http://redis.io/commands/setnx