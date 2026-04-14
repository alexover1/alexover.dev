---
title: How Sveltia CMS Saved My Blog
date: 2026-04-14T13:28:56-05:00
draft: true
tags: [homelab, web development, software architecture]
---

_Disclaimer: I am not being paid to write this. This post is my own opinion._

With that out of the way, hi! Welcome to my blog.

Today, I'd like to walk you through the tech stack I used to build this site,
and explain why discovering a CMS "saved my blog."

## Web Framework "Hell"

All over the web, you see people making new frameworks that supposedly "fix
everything" that was wrong with other frameworks. This quickly becomes an
infinite cycle of layers piled onto layers of code or rewrites upon rewrites.
The result? It is quite hard to find a framework that actually "just works."

Does this mean you shouldn't use _any_ frameworks?

You may be surprised by my answer if you know me, but I would actually say that
using frameworks is most likely a good idea.

There's a theory I recently learned about called the [Four Burners
Theory](https://jamesclear.com/four-burners-theory), that describes the
tradeoffs we make when balancing different areas of our lives—work, family,
friends and health—and how giving more attention to one inevitably means less
for another.

The same principle applies to side projects; you should spend your time on what
actually matters to you. If you _want_ to write a custom web framework
perfectly suited to your needs, go for it! But if you're like me and would
rather spend your energy writing content than architecting infrastructure, then
using a framework is the obvious choice.

So, that leads us to the next question. _How do you actually choose a
framework_?

For me, I want to spend as little time learning the complicated features of a
framework before I start building, so documentation is _very_ important to me.
I eventually landed on [Astro](https://astro.build/), which has a great
tutorial that walks you through how to build a blog. Before I started trying to
build my website and bring over my content, I went through this tutorial so I
could get a feel for Astro and see if it would work well for my blog.

This leads us to a principle: _Don't pick a framework because people say it's
cool. Find a reason why it's actually suited to your needs._

Astro solved my framework problem, but I still had another issue: actually
managing my content. Writing markdown files by hand, committing them to git,
and triggering builds was still too much friction. I needed a better way to
create and edit posts without touching the terminal.

## Failed Attempts

Taking a step back for a moment, I want to look at my failed attempts at
building a blog, and see if we can drill down into why these attempts failed.

Originally, I thought: _how hard can it be to write a static site generator?_

Over the past few years, my programming mindset has been greatly influenced by
people like [Casey Muratori](https://caseymuratori.com/about) and [Jonathan
Blow](http://the-witness.net/news/). I followed Casey's [Handmade
Hero](https://guide.handmadehero.org/) series on writing a commercial video
game from _scratch_ for over 300 episodes. I was amazed to discover the
[Handmade Network](https://handmade.network), a community of programmers who
love their craft and are dedicated to making software _not suck_.

As an aspiring developer, I would unfortunately say there are times when this
mindset has stunted my progress. Now that I know how simple and efficient
software _can_ be, that's the only way I want it to _ever_ be! Which means that
I have really struggled with _prototyping_.

Prototyping is about getting something working fast so you can see if your idea
even makes sense—before you invest time making it "right."

In game development, prototyping is _crucial_. There are countless horror
stories of developers who realized much too late that their game just wasn't
very _fun_. That's a shocking realization, but if you don't spend time at the
beginning iterating on an idea until you get something really good, you might
end up in a similar situation.

Back to the topic of web development, I _did_ actually write a static site
generator. You can take a look at it
[here](https://github.com/alexover1/webgen) if you want, but _I do not
recommend attempting to use it for anything_. In fact, it is written in
[Jai](https://www.youtube.com/playlist?list=PLmV5I2fxaiCKfxMBrNsU1kgKJXD3PkyxO),
an upcoming programming language for games written by Jonathan Blow, which is
not currently public. So unless you're in the beta, you can't actually compile
the generator. (If you really want to see a horror story, take a look at [this
page](https://github.com/alexover1/webgen/blob/main/src/tags/index.expr) which
generates a HTML page for each tag so you can search for posts. Yikes!)

 At first, it was really nice to have complete control over the generator. If I
 needed a feature that it didn't have, I could just add it! But the excitement
 of this perk did not last, because I soon realized I was spending way more
 time working on my website generator than my website.

This was a disaster. The whole point of using a generator was that I should be
able to just _forget about it_ and write content. As a result, I didn't make
very much content. I had one and a half posts on my website because I was so
burnt out from writing the generator that I didn't have any more energy to just
write.

Additionally, deployment and build systems were a hassle. Since I was using my
own framework (which I just so happened to write in a language that wasn't
publicly available), integrating the build process with existing static hosting
services like GitHub Pages and Cloudflare was pretty much impossible. To create
or update content, I would have to edit my markdown files, rerun the generator,
and make a commit to the repo (including the generated `public` folder, since I
can't run the generator using CI). This is way too much effort just to edit
some markdown!

Here's the takeaway: _you are much more likely to experiment when the cost of
iteration is low._

This is something game developers understand well. In a commercial game engine
like Unity, for example, sometimes even small changes can trigger lengthy
recompiles and domain reloads—sometimes taking 30 seconds or more just to test
a tiny tweak. That friction adds up! When iteration is slow, experimenting
slows to a halt. You stick with "good enough" because trying something new
costs too much time. The same applies to content creation. If publishing a blog
post requires a 10-step manual process, you're just not going to write as much.

## The Content Management System

This is exactly the problem that a CMS—or Content Management System—is designed
to solve. Traditional options like WordPress or Ghost give you a full editor
and hosting, but I wanted something lighter that I could integrate with a
static site generator.

I decided to go with [Sveltia CMS](https://sveltiacms.app/en/docs/intro), as it
is incredibly lightweight and automatically commits changes to git. Sveltia
gives you a web interface where you can manage all of your content—posts,
drafts, metadata, and even photos—with a simple but extensive configuration
format that lets you define your own data structures. This quite literally
saved my blog! Now, to create or manage content, all I have to do is open the
web interface (which I can have running privately on my home network), make
some changes, and press save. All without having to run any git commands from
the terminal!

Integrating Sveltia with Astro was straightforward too. Astro has a system
called [content
collections](https://docs.astro.build/en/guides/content-collections/) that lets
you define typed schemas for your content. You point it at a folder of Markdown
files, define the shape of your frontmatter, and Astro handles the rest.
Sveltia just needs to know where that folder is and what fields each piece of
content should have.

Here's my configuration:

```yaml
backend:
  name: github
  repo: user/repo # your github repository

media_folder: /public/images
public_folder: /images

collections:
    - name: articles
    label: Articles
    folder: /src/content/articles
    fields:
            - { label: Title, name: title, widget: string }
            - { label: Publication Date, name: publicationDate, widget: datetime, time_format: false }
            - { label: Draft, name: draft, widget: boolean, default: true }
            - { label: Highlighted, name: highlighted, widget: boolean, default: false }
            - { label: Tags, name: tags, widget: list }
            - { label: Body, name: body, widget: markdown }
```

As you can see, Sveltia will save articles in `src/content/articles`, which Astro imports as so:

```typescript
import { glob } from "astro/loaders";
import { defineCollection } from "astro:content";
import { z } from "astro/zod";

const articles = defineCollection({
	loader: glob({ pattern: '**/[^_]*.md', base: './src/content/articles' }),
	schema: z.object({
		title: z.string(),
		publicationDate: z.date(),
		draft: z.boolean().default(true),
		highlighted: z.boolean().default(false),
		tags: z.array(z.string()).default([]),
	}),
});

export const collections = { articles };
```

It is a little bit annoying having to maintain the same schema in two places,
but in practice it rarely changes. Additionally, Astro will automatically
detect if any of your content doesn't match the schema you provide, so if you
forget to update it, you will get an error message.

## Deployment

The last step in all of this is actually deploying the website somewhere. I've
used Cloudflare in the past, and it allows you to run CI even for a private
repository, something GitHub Pages does not allow you to do on a free plan.
Cloudflare has a built-in build preset for Astro, so setup was incredibly easy.
I just selected my repository and the Astro preset and had a site up and
running in less than five minutes. It also has support for building "staging"
branches, so you can test and deploy experimental changes without affecting
your production site. Push a commit, wait a minute, and the changes are live.
Exactly how it should be. For free hosting and minimal setup, Cloudflare is
hard to beat!

## Conclusion

For my website I ended up using Astro to generate a static website from my
content, Sveltia CMS to manage and create content, and Cloudflare Pages for
hosting. What does this mean? Is this the "ultimate" stack?

In no way am I claiming that copying my stack is going to lead you to success.
Actually, I'm saying quite the opposite. The point of this post wasn't to say
"use what I use and you'll be successful"—it's "figure out what works for you
and why." Experiment, iterate, and don't settle with the tool unless it is
actually helping you and "staying out of your way" so to speak. I drafted
another article about what happens when tools become a burden, so stay tuned
for that.

For now, with my iteration time increased and content creation friction
reduced, I am focusing my efforts on writing content instead of building tools.
Finally.

Thanks for reading and happy coding!
