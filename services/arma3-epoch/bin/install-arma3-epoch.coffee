#jshint node:true

request = require 'requestify'
async = require 'async'

url = "http://epochmod.com/download_server.php"
form_selector = '.main.wrapper form'
csrf_selector = 'input[name=token]'

async.waterfall [
	(next)->
		request url, (response)->
			console.log arguments
			form = response.find form_selector
			form_action = form.attr('action') or url
			token_value = csrf_token or form.find(csrf_selector).val()
			next(null, token_value, form_action)

	(token_value, form_action, next)->
		file = fs.createWriteStream path.join __dirname, 'file_name'

		request.post form_action, token: token_value, (response)->
			response
				.on 'data', (data)->
					file.write data
				.on 'end', ->
					file.end()
					console.log 'File Downloaded'

]

