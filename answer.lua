do
 
 function run(msg, matches)
  
  if is_sudo(msg) then    
   if msg.text:match("^[!/#]([Aa][Nn][Ss][Ww][Ee][Rr]) ([Oo][Nn])$") then
       redis:set("answer:pv", "on")
       return "Answer = on"
   elseif msg.text:match("^[!/#]([Aa][Nn][Ss][Ww][Ee][Rr]) ([Oo][Ff][Ff])$") then
       redis:set("answer:pv", "off")
       return "Answer = off"
   end
  end
   
  if not is_sudo(msg) then
   if msg.to.type == 'user' then
     if matches[1]:lower() == 'slm' or 'salam' or 'سلام' or 'hi' or 'hello' then
         if redis:get("answer:pv") == "on" then
            reply = msg['id']
            txt = "علیک سلام، بفرمایید؟"
            reply_msg(reply, txt, ok_cb, false)
         elseif redis:get("answer:pv") == "off" then
            return
          end
        end
     end
   end
 end
 return {
     advan = {
       "Created by @janlou",
       "Powered by @AdvanTm",
       "CopyRight all right reserved",
     },
     patterns = {
        "^[!/#]([Aa][Nn][Ss][Ww][Ee][Rr]) ([Oo][Nn])$",
        "^[!/#]([Aa][Nn][Ss][Ww][Ee][Rr]) ([Oo][Ff][Ff])$",
        "[Ss][Ll][Mm]",
        "[Ss][Aa][Ll][Aa][Mm]",
        "سلام",
        "[Hh][Ii]",
        "[Hh][Ee][Ll][Ll][Oo]"
     },
  run = run
 }
 
end