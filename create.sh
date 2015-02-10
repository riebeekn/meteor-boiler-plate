# !/bin/bash

#################################################################################
# USAGE:  chmod +x create.sh
#         ./create <app-name> 
#
# To include jasmine integration tests:
#					./create <app-name> -T
#################################################################################

if [ -z $1 ]; then
  echo "**** YOU NEED TO SUPPLY AN APP NAME... EXITING ****"
  exit 1
fi
	
if [ ! -z $2 ]; then
	if [ "-T" = $2 ]; then
		create_tests=true
	fi
fi

echo "**** CREATING APP ****"
echo "    ---> Creating meteor app $1"
meteor create $1

echo "    ---> Adding / removing packages"
cd $1
meteor remove autopublish
meteor remove insecure
meteor add underscore
meteor add iron:router
meteor add twbs:bootstrap
meteor add sacha:spin
if [ "$create_tests" = true ]; then
	meteor add sanjo:jasmine
	meteor add velocity:html-reporter
fi

echo "    ---> Creating / removing default folders and files"
rm $1.*

# client
mkdir client
mkdir client/helpers
mkdir client/stylesheets
mkdir client/templates
mkdir client/templates/application
cp ../default-files/application.css client/stylesheets
cp ../default-files/home.html client/templates
cp ../default-files/layout.html client/templates/application
cp ../default-files/loading.html client/templates/application
cp ../default-files/not_found.html client/templates/application

# lib
mkdir lib
mkdir lib/collections
cp ../default-files/router.js lib/

# public
mkdir public
cp ../default-files/favicon.ico public/

# server
mkdir server
touch server/fixtures.js
touch server/publications.js

# root
touch README.md
cp ../default-files/settings.json	.
cp ../default-files/.gitignore .
cp ../default-files/run.sh .
chmod +x run.sh

# tests
if [ "$create_tests" = true ]; then
	mkdir -p tests/jasmine/client/integration
	cp ../default-files/_wait_for_router_helper.js tests/jasmine/client/integration
fi

echo "**** APP CREATED ****"
