---
author: Ryan Token
title: Dynamic Lambda Storage
subtitle: Serverless compute with dynamic ephemeral storage.
description: Serverless compute with dynamic ephemeral storage.
date: 2022-06-10
tags: web, cloud, serverless
published: true
image: /images/dynamic-ephemeral-storage/cover.png
alt: A custom diagram showcasing dynamic ephemeral storage with lambda
---

I published an article on [Storyboard's Dev Blog](https://medium.com/storyboard-podcasts/storyboard-dev-blog-serverless-compute-with-dynamic-ephemeral-storage-8fd38c0df93d) about how to configure dynamic amounts of ephemeral storage for a Lambda function on a *per-invocation* basis.

AWS does not let you do this natively. You manually set the amount of storage on the function itself, and then you’re done. You *can* edit it after the fact, but you can’t change the amount of storage allocated with each invocation.

In the post, I detail (what I think is) a clever solution to this limitation which can save you a significant amount of money in the long run. Hint: it's built with the [Serverless Framework](https://www.serverless.com/framework).

Check out the full post in the link below, and let me know what you think!

Link to the post: [https://medium.com/storyboard-podcasts/storyboard-dev-blog-serverless-compute-with-dynamic-ephemeral-storage-8fd38c0df93d](https://medium.com/storyboard-podcasts/storyboard-dev-blog-serverless-compute-with-dynamic-ephemeral-storage-8fd38c0df93d)
