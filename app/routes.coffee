module.exports = class AppRouter extends Backbone.Router
	initialize: (options) ->
		@vent = options.vent
		@on 'route', @onRouteChange

	onRouteChange: ->
		console.log 'onRouteChange'
