Router.configure({
	layoutTemplate: 'layout',
	loadingTemplate: 'loading',
	notFoundTemplate: 'notFound',
});

Router.map(function() {
	this.route('home', {
		path: '/',
		template: 'home'
	});
});

Router.onBeforeAction('loading');