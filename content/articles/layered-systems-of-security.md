---
title: Layered Systems of Security
summary: >
  Another attempt at explaining security principles as a non-cybersecurity
  expert - this time featuring "concentric rings of protection".
tags: [security, privacy, philosophy]
date: 2026-04-04
draft: false
---

Last time, I explained my mostly-a-joke security principle: [The Refrigerator
Policy](https://alexover.dev/articles/the-refrigerator-policy/). Today, I'd
like to extend this policy by introducing: multi-layer authentication.

## What layers actually mean

Multi-layer authentication is _not_ the same thing as [multi-factor
authentication](https://en.wikipedia.org/wiki/Multi-factor_authentication).
Multi-factor authentication means that in order to access _one_ resource, you
need _multiple factors_, hence the name. Multi-layer authentication is instead
more akin to hierarchical [group
policy](https://en.wikipedia.org/wiki/Group_Policy), where resources are
organized into nested layers, each with its own independent authentication
boundary. Rather than requiring multiple credentials to unlock a single
resource, you're placing separate gates at different depths. Gaining access to
one layer grants access to everything at that level, but deeper layers require
passing through their own distinct "checkpoints."

## It isn't about paranoia

Listen, I'm no cybersecurity expert. When I explained my idea of the
Refrigerator Policy to someone at work, they told me "well, yeah, but what if
you want to have a lock on your safe?" And then I realized that the hidden
principle at play here is just to understand _layered access_. You don't need
every single resource to have a separate lock, but you _should definitely_
understand the different layers of resource access that are available.

## Castles and keeps

I don't think I'm completely off the walls with this idea. In ancient times,
castles were designed with this exact idea in mind. Medieval castles used
defensive structures like moats, drawbridges, a portcullis, and an inner keep
as successive rings of protection. Not surprisingly, it applies in the modern
era as well. Silva Consultants, a security consulting firm, writes that an
absolute minimum of three layers should exist between the outside world and any
type of high-value asset. They also use my exact point: "[A]n employee may fail
to lock a valuable piece of equipment in a cabinet as per established
procedures, but instead leaves the equipment lying out openly on a desk. If the
employee’s office is locked, and access to the department is controlled, the
equipment is still protected," showing that the core security principle to
design for is not to throw multiple factor authentication at every asset, but
instead designing your system to fundamentally have multiple layers of access
in mind [^1].

## The bedroom door

Think of it this way, just because someone is in your house doesn't mean they
should have access to your bedroom. Your front door is one layer, because it
keeps out the general public or your snooping neighbors. Your bedroom door can
be another layer, because while you may not want to lock your kitchen from your
guests (or your refrigerator), you _may_ want to lock your bedroom. And if you
have a safe _inside_ your bedroom closet, that's yet _another_ layered circle
of protection.

## Wrapping up

So, that brings us to the end! The point of security isn't to put a padlock on
every drawer in your house. The point is to think deliberately about which
resources live at which layer and design your architecture around that.

[^1]: Source: https://www.silvaconsultants.com/concentric-circles-of-protection
