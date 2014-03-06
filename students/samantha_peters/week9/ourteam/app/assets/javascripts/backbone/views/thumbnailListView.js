App.ThumbnailListView = Backbone.View.extend({
	template: _.template('<a href="#people/<%= id %>"><div class="thumb" style="background: url(\'<%= picture %>\')"><div class="overlay"><%= first_name %> <%= surname %></div></div></a>'),

	events: {
		'click a': 'showProfile'
	},

	render: function(){
		var html = this.template(this.model.toJSON());
		this.$el.html(html);
		//good practice to return this so we can chain stuff.
		return this;
	},

	showProfile: function(){
		//stop the page from refreshing every time we click it
		event.preventDefault();
		$('#detail').hide();

		//first name and last name
		var firstName = this.model.get('first_name');
		var surname = this.model.get('surname');
		var bio = this.model.get('bio');
		var quote = this.model.get('quote');

		$('#detail .name').html(firstName + ' ' + surname);
		$('#detail .bio').html(bio);
		$('#detail .quote').html(quote);

		$('#detail').fadeIn();
	}

});