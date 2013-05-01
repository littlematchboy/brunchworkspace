module.exports = class AppRouter extends Backbone.Router
	routes:

	initialize: (options) ->
		@vent = options.vent
		@on 'route', @onRouteChange

	onRouteChange: ->
		console.log 'onRouteChange'
