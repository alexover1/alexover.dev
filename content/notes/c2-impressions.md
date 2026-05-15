---
title: C2 Impressions
categories:
  - learning c2
tags:
  - programming languages
date: 2026-05-14T19:49:04-05:00
draft: false
---

Recently, I've been looking into the [C2 programming language](http://c2lang.org/).

I want to develop a couple of small[^1] programs using the language, in order to
get a good feel for it and investigate whether or not it will be a useful tool
for me to create games in the future.

There's a lot of talk about new programming languages all the time, but I find
that 99.9% of it is noise. Most of what language designers[^2] seem to be focusing
on these days is entirely useless to me and (in my opinion) doesn't solve
real[^3] problems.

C2 is simple. It's described as an [evolution](http://c2lang.org/site/) of C instead of a *revolution*.
I think this is awesome! It's almost exactly what I want - the ability to
program C the way I want without sacrificing any of C's simplicity or power, but
with a few things cleaned up and improved on since C's creation in the 1970s.

---

My favorite features so far:

1. No header files

This is a big one. Header files are a huge pain. They make code reuse and
sharing hard, they force you to repeat yourself multiple times because of
forward declarations, and they encourage you to spend time thinking about
meaningless code organization.

2. Member access is always '.', not sometimes '->'

Minor tweak, but instead of using "->" to dereference a pointer, you can use "."
just like a normal, by-value struct. This saves a lot of refactoring time,
actually.

3. Cleaned-up primitive types

I am always annoyed that I have to write typedefs in every single one of my
projects for sized integer types (yes, I know about `<inttypes.h>`). C2 gets rid
of the platform-dependent integer types `char`, `short`, `int`, and `long` and
replaces them with sized types `i8`, `i16`, `i32`, and `i64` for signed and `u8`,
`u16`, `u32`, and `u64` for unsigned.

---

That's it! I just wanted to share my initial thoughts. I'm planning to write a
few short notes as I get deeper into using the language, so stay posted for
those.

[^1]: As inspired by Sean Barrett's talk on
    [writing small programs in C](https://youtu.be/eAhWIO1Ra6M?si=d53NczM6FeQQXSvW).

[^2]: When I say language designers, I don't mean the committees that create and
    maintain the languages we use today. It's getting more common for
    large corporations to develop languages these days as opposed to inspired
    individuals. See [Kotlin](https://www.jetbrains.com/opensource/kotlin/),
    [Rust](https://blog.mozilla.org/en/mozilla/mozilla-welcomes-the-rust-foundation/),
    [Swift](https://developer.apple.com/swift/), and [C#](https://learn.microsoft.com/en-us/dotnet/csharp/),
    for example.

[^3]: I'm talking about the weird obsession people have with syntax and the
    apparently lost topic of semantics. I also see the insane amount of
    complexity introduced by object-oriented programming as a waste of time.
