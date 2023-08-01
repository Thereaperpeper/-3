
local req = request or fluxus.request or http_request or syn.request;


local brfuh = {
	['cmd'] = 'INVITE_BROWSER',
	['args'] = {
	["code"] = 'eY7w55GbMC'
	},
	['nonce'] = game:GetService('HttpService'):GenerateGUID(true)
}

req({
	Url = 'http://127.0.0.1:6463/rpc?v=1',
	Method = 'POST',
	Headers = {
		['Content-Type'] = 'application/json',
		['Origin'] = 'https://discord.com'
	},
	Body = game:GetService('HttpService'):JSONEncode(brfuh)
})

