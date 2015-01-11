# Meteor Boiler Plate

Very simple / sparse meteor boiler plate largely based off [Discover Meteor](https://www.discovermeteor.com/).

## Packages
### Excluded
* autopublish
* insecure

### Included
* underscore
* iron:router
* twbs:bootstrap
* sacha:spin

## File / Directory structure
```
project
|- client
|	 |- helpers
|	 |- stylesheets
|	 |	|- application.css
|	 |- templates
|	 |	|- application
|	 |		 |- layout.html
|	 |		 |- loading.html
|	 |		 |- not_found.html
|	 |- home.html
|- lib
|	 |- collections
|	 |- router.js
|- public
|	 |- favicon.ico
|- server
|	 |- fixtures.js
|	 |- publications.js
|- README.md
```