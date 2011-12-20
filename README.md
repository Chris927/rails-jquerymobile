JQuery Mobile for Rails
=======================

Adds a :mobile format to a Rails app so that both (desktop) browser optimized and jQuery Mobile optimized pages can be rendered.

Supports Rails 3.1 (and maybe Rails 3.0?).

Installation
------------

Include it into your Gemfile:

	gem 'rails-jquerymobile'

In the relevant controller(s), add:

	has_mobile_format

Typically, adding this to the ApplicationController is a good idea.

Now, in order to switch to the mobile site (i.e. the mobile format), use

	mobile=1

as a query parameter, e.g.:

	http://mysite.com/myresources?mobile=1

Alternatively, it would be nice if a mobile browser is autodetected, but this is not implemented yet.

You can generate a mobile format (that uses jQuery Mobile):

	rails generate rails_jquerymobile:layout

Copyright (c) 2011 Chris, released under the MIT license
