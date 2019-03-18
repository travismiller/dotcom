+++
title = "JAMstack"
date = 2018-04-19
tags = ["jamstack", "netlify"]

[extra.cover]
src = "/img/pexels/pexels-photo-916263.jpeg"
position = "right"

[extra.cover.attribution]
name = "Adam Kontor"
link = "https://www.pexels.com/photo/selective-focus-photograph-of-strawberry-jam-crepe-cake-916263/"
+++

As previously mentioned, [Netlify](https://www.netlify.com/) has done a really nice job of
putting together a product which exemplifies a solid, modern approach to
web development. The architecture is commonly referred to as
"[JAMstack](https://jamstack.org/)", and while I initially cringed at the name, I've come to
embrace the moniker.

<!-- more -->

The [JAMstack][JAMstack] website identifies 4 primary reasons for adopting
the architecture: "Better Performance", "Higher Security", "Cheaper, Easier
Scaling", and "Better Developer Experience". These ring all to true.

I've dealt with my fair share of security vulnerabilities that are so common in
the big CMS platforms. Drupal just had [two][sa-core-2018-002]
[highly critical][sa-core-2018-004] security advisories in just a one month
span. And it doesn't even come close to the issues
[Wordpress has dealt with][wordpress-security-exploits] over the years.

The best way to get performance in a completely on-the-fly system, is to
implement caching. A lot of caching. Drupal and Magento each have so many
caching layers, it's a challenge remember what each of them are called, let
alone what each does and how they interact with each other. Cache clean?
Cache flush? 🤷‍♂️ And these are just the application level caches. Nevermind
the proxy cache that you should be implementing with either Varnish, Apache,
or NGINX.

Beyond the security perspective, the indisputable reality is that the
traditional CMS systems are wasteful of resources. There's just no need to
generate an "about us" page, or a blog post on every single request. Most
content is static and rarely, if ever, changes. Why waste the CPU cycles and
memory overhead to do the same thing over and over again? We know [DRY][DRY],
don't we?

With a simpler implementation there is simpler hosting. A side-affect of
simpler hosting is of course, cheaper hosting. In certain cases, possibly even
free! Several services like [Netlify][Netlify], [GitLab Pages][GitLab Pages],
and [GitHub Pages][GitHub Pages] make it possible to deliver your website at no
cost at all.

All of the aforementioned advantages add up to one bonus advantage: A "Better
Developer Experience." Less complexity and [separation of concerns][Separation of concerns],
never lets us down.

I'm sold and will push this architecture every chance I get.

If you want to hear a really great podcast that goes deep into the origin and
evolution of the strategy, I highly recommend the
[JAMstack, Netlify CMS, and 10x-ing Smashing Magazine][Changelog JAMstack]
from [The Changelog][Changelog] podcast.

[Changelog]: https://changelog.com/
[Changelog JAMstack]: https://changelog.com/podcast/251
[DRY]: https://en.wikipedia.org/wiki/Don%27t_repeat_yourself
[GitLab Pages]: https://about.gitlab.com/features/pages/
[GitHub Pages]: https://help.github.com/articles/what-is-github-pages/
[JAMstack]: https://jamstack.org/
[Netlify]: https://www.netlify.com/
[sa-core-2018-002]: https://www.drupal.org/sa-core-2018-002
[sa-core-2018-004]: https://www.drupal.org/sa-core-2018-004
[wordpress-security-exploits]: https://premium.wpmudev.org/blog/wordpress-security-exploits/
[Separation of concerns]: https://en.wikipedia.org/wiki/Separation_of_concerns
