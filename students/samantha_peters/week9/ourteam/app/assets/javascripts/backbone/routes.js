App.Router = Backbone.Router.extend({
	routes: {
		'people/:id' : 'showProfile'
	},

	initialize: function(){
      //run and render a new instance of the app, passing the quotes library.
      App.appView = new App.AppView({collection: App.people});
      App.appView.render();
	},

	showProfile: function(paramId){
		var peopleModel = App.people.get(paramId);

		if (peopleModel === undefined)
			return;

		$('#detail').hide();

		var peopleBody = peopleModel.get('first_name');

		$('#detail .name').html(peopleBody);

		//do it again for the author
		var bioText = peopleModel.get('bio');
		$('#detail .bio').html(peopleText);

		$('#detail').fadeIn();
	}

})