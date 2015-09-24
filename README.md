# EasySearch

## Introduction

  When i was creating search form i get bored because this is a very repetitive task, and because that i start to create this gem, this first version is the very basic but by now this is enough, and i will improve this, and if you have some suggestion please let me know this.

## How to install

Add this line to your application's Gemfile:

```ruby
gem 'easy_search'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install easy_search

## Example

  ### Migrations 

```ruby
  create_table :products do |t|
    t.string :description, :null => false
    t.integer :size, :null => false
  end
```

  ### Models

```ruby
  class Product < ActiveRecord::Base
    # :equals tell the plugin to use "=" in SQL instead LIKE that is the default.
    acts_as_searchable :description, :size => :equals
  end
```
  
  ### Controller
  
```ruby
  def index
    # Replace the all for search and pass the param if the param is null it will return all.
    @users = User.search params[:query] 
  end  
```
  
  ### View
```ruby
  # Put the search_form when you want to print the search form.
  <%= search_form %> 
```

## Contact
  
  if you need help contanct me: bfscordeiro (at) gmail.com


Copyright (c) 2010 Bruno Cordeiro, released under the MIT license

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).