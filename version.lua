local function run(msg, matches)
  if msg.text:match("^[/#!][Aa][Dd][Vv][Aa][Nn]$") or msg.text:match("^[Aa][Dd][Vv][Aa][Nn]$") or msg.text:match("^[/#!][Ss][Ee][Ff]$") or msg.text:match("^[Ss][Ee][Ff]$") or msg.text:match("^[/#!][Vv][Ee][Rr][Ss][Ii][Oo][Nn]$") or msg.text:match("^[Vv][Ee][Rr][Ss][Ii][Oo][Nn]$") then
    reply = msg['id']
	txt = _config.about_text
    reply_msg(reply, txt, ok_cb, false)
  end
end

return {
  patterns = {
    "^[/#!][Aa][Dd][Vv][Aa][Nn]$",
	"^[Aa][Dd][Vv][Aa][Nn]$",
	"^[/#!][Ss][Ee][Ff]$",
	"^[Ss][Ee][Ff]$",
	"^[/#!][Vv][Ee][Rr][Ss][Ii][Oo][Nn]$",
	"^[Vv][Ee][Rr][Ss][Ii][Oo][Nn]$"
    },
  run = run
}
