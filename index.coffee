doctype 5
ie 'lt IE 7', ->
	html class: "no-js lt-ie9 lt-ie8 lt-ie7", lang: "en"
ie 'IE 7', ->
	html class: "no-js lt-ie9 lt-ie8", lang: "en"
ie 'IE 8', ->
	html class: "no-js lt-ie9", lang: "en"
ie 'gt IE 8', ->
	html class: "no-js", lang: "en"

html ->
	head ->
		meta charset: "utf-8"
		meta 'http-equiv': "X-UA-Compatible", content: "IE=edge,chrome=1"

		title: ""

		meta name: "description", content: ""

		# Mobile viewport optimized: h5bp.com/viewport
		meta name: "viewport", content: "width=device-width"

		link rel: "stylesheet", href: "css/style.css"

		script src: "js/libs/modernizr-2.5.3.min.js"

	body ->
		# Prompt IE 6 users to install Chrome Frame. Remove this if you support IE 6.
		ie 'lt IE 7', ->
			p class: "chromeframe", ->
				"Your browser is #{yield -> em('ancient1')}. #{ yield -> (a href: 'http://browsehappy.com/', 'Upgrade to a different browser')} or #{ yield -> (a href: 'http://www.google.com/chromeframe/?redirect=true', 'install Google Chrome Frame')} to experience this site."

		header ->

		div role: "main", ->
			
		footer ->

		# JavaScript at the bottom for fast page loading
		# Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline 
		script src: "js/libs/jquery-1.7.1.min.js"
		script src: "js/plugins.js"
		script src: "js/script.js"

		coffeescript ->
			_gaq = [ [ "_setAccount", "UA-XXXXX-X" ], [ "_trackPageview" ] ]
			((d, t) ->
  				g = d.createElement(t)
  				s = d.getElementsByTagName(t)[0]
  				g.src = (if "https:" is location.protocol then "//ssl" else "//www") + ".google-analytics.com/ga.js"
  				s.parentNode.insertBefore g, s
			) document, "script"
