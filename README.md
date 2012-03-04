# Farbtastic::Rails

[Farbtastic](http://acko.net/blog/farbtastic-jquery-color-picker-plug-in/), colorfully bundled for Rails 3+.


## Rails 3.1+

For Rails 3.1 and greater, the files will be added to the asset pipeline and available for you to use.

To enable: 

* Add the following line to the file `app/assets/javascripts/application.js` (or other [sprockets](https://github.com/sstephenson/sprockets) manifest):

```javascript
//= require farbtastic
```

* Add the following line to the file `app/assets/stylesheets/application.css` (or other [sprockets](https://github.com/sstephenson/sprockets) manifest):

```css
*= require farbtastic
```

### Installation

* Add `farbtastic-rails` to your Gemfile
* Run `bundle`

Enjoy!


## Rails 3.0

This gem adds a single generator to Rails 3, `farbtastic:install`. Running the generator will install the JS, CSS and image files necessary to use Farbtastic.

### Installation

* Add `farbtastic-rails` to your Gemfile
* Run `bundle`
* Invoke the generator: `rails generate farbtastic:install`
* Add the following to your layout or view files:

```erb
<%= stylesheet_link_tag "farbtastic" %>
<%= javascript_include_tag "farbtastic" %>
```

You're done!


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License

**farbtastic-rails**

* Freely distributable and licensed under the [MIT license](http://phlipper.mit-license.org/license.html).
* Copyright (c) 2012 Phil Cohen (github@phlippers.net) [![endorse](http://api.coderwall.com/phlipper/endorsecount.png)](http://coderwall.com/phlipper)
* http://phlippers.net/


**Farbtastic**

* Freely distributable and licensed under the [GPL v2](https://github.com/mattfarina/farbtastic/blob/farbtastic-1/LICENSE.txt) license.
* Copyright (c) 2007-2010 [Steven Wittens](http://acko.net/)
* http://acko.net/blog/farbtastic-jquery-color-picker-plug-in/
