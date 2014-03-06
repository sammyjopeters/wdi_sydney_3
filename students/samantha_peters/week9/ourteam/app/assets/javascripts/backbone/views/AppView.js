App.AppView = Backbone.View.extend({
	el: $('#container'),

	initialize: function(){
		this.thumbnailList = $('#thumbnails');
		//listen to me, dammit - no really, this tells the app to render only after the DB has been synced to the collection.
		this.listenTo(App.people, 'sync', this.render);
	},

	render: function(){
		var $thumbnailList = this.thumbnailList;
		this.collection.each(function(person){
			var thumbnailListView = new App.ThumbnailListView({model: person});
			var html = thumbnailListView.render().el;
			$thumbnailList.append(html);
		})
	}


});