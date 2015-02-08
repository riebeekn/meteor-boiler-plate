# Meteor Boiler Plate

Very simple / sparse meteor boiler plate largely based off [Discover Meteor](https://www.discovermeteor.com/).

To use, open a terminal window:
```
 $ chmod +x create.sh
 $ ./create <app-name> 
```

To create jasmine integration tests:
```
 $ chmod +x create.sh
 $ ./create <app-name> -T
```

## Packages
### Excluded
* autopublish
* insecure

### Included
* underscore
* iron:router
* twbs:bootstrap
* sacha:spin
* sanjo:jasmine (when -T option used)
* velocity:html-reporter (when -T option used)


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
|- tests
|  |- jasmine
|  |  |- client
|  |  |  |- integration
|  |  |  |  |- _wait_for_router_helper.js
|- README.md
|- run.sh (when -T option used)
```