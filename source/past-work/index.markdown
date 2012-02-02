---
layout: page
title: "Past Work"
date: 2012-01-04 16:56
---

Below is a small sample of the work I have done over the past few years. You can read more on my [LinkedIn profile](http://www.linkedin.com/profile/view?id=11938323) or dig through some of my open source projects on [GitHub](https://github.com/tysontate). You can also reach me at [tyson@tysontate.com](mailto:tyson@tysontate.com) if you have questions.

# CrowdFlower

I worked at [CrowdFlower](http://crowdflower.com) from August 2009 until December 2011 as a Senior Engineer -- in charge of everything from front-end design and implementation to back-end implementation, debugging and performance enhancements. I helped CrowdFlower grow from 5 to 50 employees and from hundreds to millions of users. Below is a small selection of the various features I both designed and implemented for CrowdFlower.

## Report Generation Dashboard

[![Report generation dashboard](/images/past-work/1_reports_thumb.png)](/images/past-work/1_reports.png)

A live report generation dashboard using Ruby, MongoDB, Redis, Resque, Sass, CoffeeScript, and MooTools. It allows users to fire off report genertion and watch the state of their reports in real time.

## Gold Phases Designer

[![Gold phases designer](/images/past-work/2_gold_phases_thumb.png)](/images/past-work/2_gold_phases.png)

The front-end for CrowdFlower's "gold phases" functionality, which allows work providers to dictate the flow of their workers throughout many tasks, depending on their predicted accuracy. The back-end was developed by another engineer.

## Qualifications

[![Qualification Editor](/images/past-work/3_qualifications_thumb.png)](/images/past-work/3_qualifications.png)

A feature that allows work providers to ensure that certain qualifications are met by workers before they are allowed to work on a task. Qualifications can be interactive -- "Verify that you are at least 18 years old" -- or inferred -- "You must be using Internet Explorer". This was implemented on the back-end with Ruby, Merb, Postgres (via DataMapper), Redis, and MongoDB, and on the front-end with CoffeeScript, MooTools, and Sass.

## CML Form Editor

[![CML Form Editor](/images/past-work/4_cml_editor_thumb.png)](/images/past-work/4_cml_editor.png)

A "what-you-see-is-almost-what-you-get" HTML form editor built with CoffeeScript, MooTools, and Sass. The form editor supports several different kinds of fields -- multiple radio buttons, multiple checkboxes, single-line text fields, multi-line text areas, custom HTML, and more, as well as dozens of custom validators. The form editor also includes a live preview.

## Worker Toolbar

[![Worker Toolbar](/images/past-work/5_worker_toolbar_thumb.png)](/images/past-work/5_worker_toolbar.png)

A messaging service for work providers to communicate with workers via a simple API. The front-end uses a custom client-side MVC framework written with CoffeeScript and MooTools to allow for live updating and easy view templating (using Handlebars).

## CML Validators and Logic

[CML](http://crowdflower.com/docs/cml) ("CrowdFlower Markup Language") is an XML-based form-building language that allows you to quickly and easily build large, complex HTML forms with XML. I added comprehensive validation and logic functionality to CML.

[CML Validators](http://crowdflower.com/docs/cml/validations.html) allow you to validate user input, report errors, and attach complex behaviors to basic fields. It can range from something as simple as an integer validator to a full-featured address validator that handles validating and normalizing free-form street addresses.

[CML Logic](http://crowdflower.com/docs/cml/logic.html) allows you to show and hide fields or groups of fields based on the inputs to other fields. For instance, in a Tweet sentiment analysis task, the form can automatically hide the "What is the sentiment of this Tweet?" field if the worker indicates that the Tweet is in a foreign language.

# Santa Fe Writers Project

[![SFWP Homepage](/images/past-work/7_sfwp_thumb.png)](/images/past-work/7_sfwp.png)

The [Santa Fe Writers Project](http://sfwp.com) is an independent publishing house to whom I have contributed a number of sites over the years. SFWP's current site is a custom-built WordPress installation.

# Code

I have a few open-source projects that I enjoy hacking on in my spare time. Some include:

[`rickshaw`](https://github.com/tysontate/Rickshaw) -- An in-progress lightweight MooTools-based client-side MVC framework that eliminates boilerplate and makes apps crazy-easy to create. This was originally written as something of a fun side project, but it ended up working out so well that I've started fleshing it out.

[`rapper_lite`](https://github.com/tysontate/rapper_lite) -- A simple static asset (CSS, Sass, JavaScript, CoffeeScript) bundler and compression tool created as a simpler alternative to Sprockets and other similar tools for web frameworks without integrated static asset packaging tools (Sinatra, Merb, etc.)

[`socket-router`](https://github.com/stvp/socket-router) -- A client-side message router for socket.io.

[`splashy`](https://github.com/tysontate/splashy) -- A Ruby gem that allows you to choose a constrained set of objects matching arbitrary percentage distributions from several different buckets of said objects.

# Design

I created the following projects while earning my BFA in Art and Design at CalPoly in San Luis Obispo, California.

<div class="cols">

<div class="col-1">

<h2>Atomo</h2>
<a href="/images/past-work/college/print/atomo/atomo_1.png"><img src="/images/past-work/college/print/atomo/atomo_thumb.png"></a>
<p>Logo for a fictional electric scooter manufacturer.</p>

<h2>El Lissitzky Poster</h2>
<a href="/images/past-work/college/print/el_lissitzky/el_lissitzky_1.jpg"><img src="/images/past-work/college/print/el_lissitzky/el_lissitzky_thumb.jpg"></a>
<p>Poster celebrating <a href="http://en.wikipedia.org/wiki/El_Lissitzky">famed createor</a> of Russian suprematism.</p>

<h2>Fluid Packaging</h2>
<a href="/images/past-work/college/print/fluid/fluid_1.jpg"><img src="/images/past-work/college/print/fluid/fluid_thumb.jpg"></a>
<p>Speculative product packaging for a sports drink.</p>

</div>

<div class="col-2">

<h2>GreenWall Branding</h2>
<a href="/images/past-work/college/print/greenwall/greenwall_1.png"><img src="/images/past-work/college/print/greenwall/greenwall_thumb.png"></a>
<p>Identity for an imaginary indoor wall-mounted garden product.</p>

<h2>Orchesis Poster</h2>
<a href="/images/past-work/college/print/orchesis/orchesis_1.jpg"><img src="/images/past-work/college/print/orchesis/orchesis_thumb.jpg"></a>
<p>Poster for an on-campus dance production.</p>

</div>

</div>

# Illustration

## How CrowdFlower Works

[![How CrowdFlower works](/images/past-work/6_how_crowdflower_works_thumb.png)](/images/past-work/6_how_crowdflower_works.png)

A basic illustration of how [CrowdFlower](http://crowdflower.com) works created for a new user welcome page.
