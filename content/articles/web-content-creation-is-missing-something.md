---
title: Web Content Creation Is Missing Something
date: 2026-04-14T13:12:20-05:00
draft: true
tags: [web development]
---

We all remember my famous article[^1] on content management systems, right?

Well, I've come to a realization that they aren't actually managing content in
its entirety. Let me explain.

## So... what's a content management system, again?

When I hear the term "content management system," I immediately think of a
warehouse containing shelved boxes of stuff. The focus in the design of a
warehouse is on the organization or categorization of materials. You need to be
able to keep track of a large volume of resources without making sure anything
gets lost. On the other end of the content management spectrum is the realm of
graphics creation tools. Applications like Blender and Aseprite allow you to
_visualize content as you create it_, which is how artists iterate and refine
their art as they make it (think of a sculptor finely tuning and molding clay).
Remember that idea, because we will be coming back to it later.

So, we've come up with at least two examples of a "system that manages content"
but haven't really defined what we mean by "manage." There's probably a joke in
there somewhere about managers not having well-defined jobs, but for job
security reasons I won't be the one to make it.

In the context of text-based writing platforms, to "manage" content usually
means two things: to provide an interface for _organizing_ content and an
interface for _developing_ content. I'll probably zoom in to what exactly those
two operations look like in a future article, but for now let's just assume we
know what those interfaces involve.

## Introducing the Content Rendering System (CRS)

I'm going to introduce a new concept: the content _rendering_ system. While
we've only been talking about the content _management_ system, there's actually
another stage in the content pipeline that we haven't discussed yet. Before
content can actually be _shown_ to the end user (in this case, you, the
reader), it usually has to go through a renderer to _transform_ the content
into its final form (insert final boss music here).

The CRS is where stuff like styles, layouts, and metadata are ascribed to
content in its "raw" form. I say "ascribed," because it's not the place where
styles and layouts are actually "applied" to content—that part of the process
is handled by the browser.

What this ultimately means is that the content management system fundamentally
has only part of the picture. It's missing the ability to turn _written_
content (or "data") into _visual_ content.

If you're raising an eyebrow right now, please give me the benefit of the doubt
and kindly lower it for a moment. "But Alex," you may say, "text _is_ visual.
I'm looking at text on your website _right now_."

Yes, that's true. There is a visual component to text. I would argue though
that text is only a subset of literary content. _Especially_ in the digital
age. The digitalization of the production, transmission, and consumption of
media has _completely_ changed the medium.

## The Essence of Content Creation

The web isn't _all_ bad. Yeah, JavaScript ruins lives. A barebones React app is
200MB. Electron has infested native applications by turning everything into a
web view. And yet, there are a lot of really smart people doing really creative
things with it. I've seen people innovating, fighting back against the
[enslopification](https://www.urbandictionary.com/define.php?term=enslopification)
that comes from throwing on more piles and piles of JavaScript libraries. I've
seen some truly impressive and unique content that inspires me to keep writing.
It's not like we can all just immediately decide to _stop_ using the web and
start using something else and expect the rest of the world to follow suit.
People are going to use what's convenient, and while there are still profits to
be had from the web, you can bet your bottom dollar that big corporations
aren't going anywhere.

That's why it's best to think of web as an _expansion_ to your content and not
a replacement or the essence of the content itself. One of the good things
about the web is its _flexibility_. You can edit your content and the changes
are reflected almost immediately, without requiring any changes from your
users. Additionally, a benefit of digital content over physical content is the
ability to dynamically reshape the _presentation_ of the content. (Remember
when I said this idea would come back later?) If you wanted to do something as
simple as change the font of your physically published work, you'd have to go
through _all sorts of hassle_ to deal with your publisher, create a new edition
of the work, reprint thousands of copies[^2], _et cetera_. While in the web,
you just edit some stylesheets and hit deploy.

## Wrapping Up

So that's where I've landed for now. The "content management system" is really
only half of the problem. It's responsible for allowing you to organize and
develop content, but it doesn't give a second thought to rendering. Writing for
the web can sometimes feel like sculpting with your eyes closed. What I
actually want is a content _rendering_ system that lets me see not just what my
text will look like[^3], but the deals with the fundamental _visualization_
problem in a convenient way, building on the web framework to enjoy iterative
development.

[^1]: You can read the original article here:
  https://alexover.dev/articles/how-sveltia-cms-saved-my-blog/

[^2]: This assumes you are a famous writer that has sold thousands of copies of
  your published works. Apologies if this is not the case.

[^3]: This is not solved by slapping a different CSS theme on top of some
  paragraphs. When I say "content," I mean the whole experience: the text, yes,
  but also the diagrams, the animations, the interactive bits, the way things
  move and respond to the user as they explore my site. A font swap is not a
  rendering system.
