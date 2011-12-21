JQuery Mobile for Rails
=======================

Adds a :mobile format to a Rails app so that both (desktop) browser optimized and jQuery Mobile optimized pages can be rendered.

Supports Rails 3.1 (and maybe Rails 3.0?).

Installation
------------

Include it into your Gemfile:

	gem 'rails-jquerymobile'

Run

	bundle install

to install it.

Usage
-----

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

Now add views as needed to your application, for the `:mobile` format. If you have a `Project` model
and a `ProjectsController` with a `new` action, you may want to use a view `app/views/projects/new.mobile.erb` like this:

	<% content_for :title, "Add your project" %>

	<%= form_for(@project, :html => { :'data-ajax' => :false }) do |f| %>
	  <div data-role="fieldcontain" class="ui-hide-label">
	    <%= f.label :title %>
	    <%= f.text_field :title, :placeholder => "Title" %>
	  </div>
	  <%= f.submit :html => { :'data-rel' => 'back' } %>
	<% end %>

Check the [jQuery Mobile Demos and Documentation](http://jquerymobile.com/demos/1.0/)
on how to use jQuery Mobile specific markup.

TODO: There should be a mechanism to detect (or guess) if the user agent is a mobile/smart phone or a desktop browser.

You can add a links to switch between the formats as follows:

	<%= link_to "Web Site", root_path(:mobile => 0), :rel => 'external' %>
	<%= link_to "Mobile Site", root_path(:mobile => 1), :rel => 'external' %>

Options
-------

The `has_mobile_format` method has the following options:

* `:debug`: If `true`, debug messages about which format is remembered and which format is chosen are written to stdout.

Copyright (c) 2011 Chris, released under the MIT license
