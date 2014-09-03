Acts as Update Trackable.
========

Acts as update trackable is rails plug in to track the update times on arbitrary attributes in a model.

In your Gemfile

``` console
gem 'acts_as_update_trackable', :git => 'git://github.com/jshaw001/acts_as_update_trackable.git'
```

Add acts_as_update_trackable to your model. Any attribute such as "a_attribute" when updated will automatically populate "a_attribute_updated_at"(if it exists) with the current datetime.
