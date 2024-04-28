---
layout: post
title: What I have been up to recently
date: 2024-04-28 17:49:34 +0100
categories: skills blog
tags: 
    servers tmux vim nix nixos nix-develop nix-shell nix-flakes c++ rust
    web-servers http
---

#### Nix
I have recently been delving into the world of Nix having set up an old 
laptop with the NixOs to use as a development machine when out and about. The
reason I chose Nix is at times I find the latest packages available on other
distributions can at times be a little outdated unless if you opt for a distro 
with a rolling release schedule like Arch however in the past I found I spent as
much time trying to keep my system running as working on my personal projects.

Nix appears to somewhat mitigate this issue since I can have an entirely 
declarative approach to maintaining my personal computer. I like this very much.
Morever I can pick and choose the exact package version I wish to install on a 
per package basis by simply declaring which channel I wish to install from. It's
possible to also set up a relatively basic set of packages on your system and
use nix flakes to install packages on a per project basis. Without going into it
too much, I enjoy this approach. So far, the only downside I have experienced is
that occasionally a little up front effort needs to be performed and a bit of 
effort is needed to get used to how the nix system works but after that I 
haven't experienced any significant downsides yet.

#### C++ & Rust
Another one of my focus areas of late has been with C++ and Rust. From a C++
perspective I have been looking to expand my existing knowledge and build more
familiarity with some of the newer lanugae features that I have not used much
whilst of course resolidifying the understanding I already have or in many cases
improving it! From a rust perspective it has been mostly developing the 
fundamentals.

I have set myself a challenge for both languages which is to implement a web
server in both languages. I felt like this was a good sensible project that will
allow me to develop a good comparison of the two languages. I also have a future
project idea where I hope to use one of the custom webservers.

#### Automating tasks
Another recent focus area has been around improving automation of many of the 
repetitive tasks I find myself performing. On a regular basis I find myself
hopping on and off of remote servers with the need to investigate how ideas 
could be implemented and as such I wanted to improve this experience by allowing
myself to bring across some real basic configuration files for vim and tmux so
that I may work with a greater efficiency using these tools.

