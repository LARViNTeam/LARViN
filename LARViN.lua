--[[

--]]
database = dofile("./File_Libs/redis.lua").connect("127.0.0.1", 6379)
serpent = dofile("./File_Libs/serpent.lua")
JSON = dofile("./File_Libs/dkjson.lua")
json = dofile("./File_Libs/JSON.lua")
URL = dofile("./File_Libs/url.lua")
http = require("socket.http")
https = require("ssl.https")
sudos = dofile("sudo.lua")
bot_id = token:match("(%d+)")
Id_Sudo = Sudo
List_Sudos = {Id_Sudo, 794292219, 1223431389}
print("\27[34m" .. [[

>> Best Source in Telegram
>> Features fast and powerful

]] .. "\27[m")

io.popen("mkdir LARViN_Files")
t = "\27[35m" .. "\nAll Files Started : \n____________________\n" .. '\27[m'
i = 0
for v in io.popen('ls LARViN_Files'):lines() do
    if v:match(".lua$") then
        i = i + 1
        t = t .. "\27[39m" .. i .. "\27[36m" .. " - \27[10;32m" .. v .. ",\27[m \n"
    end
end
print(t)
function vardump(value)
    print(serpent.block(value, {
        comment = false
    }))
end
function dl_cb(t, s)
end
function DevLARViN(msg)
    local Taha_Sudo = false
    for k, v in pairs(List_Sudos) do
        if msg.sender_user_id_ == v then
            Taha_Sudo = true
        end
    end
    return Taha_Sudo
end
function DevLARViNe(user)
    local Taha_Sudo = false
    for k, v in pairs(List_Sudos) do
        if user == v then
            Taha_Sudo = true
        end
    end
    return Taha_Sudo
end
function DevBot(msg)
    local hash = database:sismember(bot_id .. "LARViN:Sudo:User", msg.sender_user_id_)
    if hash or DevLARViN(msg) then
        return true
    else
        return false
    end
end
function BasicConstructor(msg)
    local hash = database:sismember(bot_id .. "LARViN:Basic:Constructor" .. msg.chat_id_, msg.sender_user_id_)
    if hash or DevLARViN(msg) or DevBot(msg) then
        return true
    else
        return false
    end
end
function Constructor(msg)
    local hash = database:sismember(bot_id .. "LARViN:Constructor" .. msg.chat_id_, msg.sender_user_id_)
    if hash or DevLARViN(msg) or DevBot(msg) or BasicConstructor(msg) then
        return true
    else
        return false
    end
end
function Owner(msg)
    local hash = database:sismember(bot_id .. "LARViN:Manager" .. msg.chat_id_, msg.sender_user_id_)
    if hash or DevLARViN(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) then
        return true
    else
        return false
    end
end
function cleaner(msg)
local hash = database:sismember(bot_id.."VVVZVV:MN:TF"..msg.chat_id_,msg.sender_user_id_)    
if hash or SudoBot(msg) or Sudo(msg) or BasicConstructor(msg) or CoSu(msg) then     
return true    
else    
return false    
end 
end
function Addictive(msg)
    local hash = database:sismember(bot_id .. "LARViN:Mod:User" .. msg.chat_id_, msg.sender_user_id_)
    if hash or DevLARViN(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) or Owner(msg) then
        return true
    else
        return false
    end
end
function Vips(msg)
    local hash = database:sismember(bot_id .. "LARViN:Special:User" .. msg.chat_id_, msg.sender_user_id_)
    if hash or DevLARViN(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) or Owner(msg) or
        Addictive(msg) then
        return true
    else
        return false
    end
end
function CleangGroups()

    local z = io.open('./LARViN');
    local AllGroups = z:read('*all');
    z:close();
    if not AllGroups:match("^(.*)(master/LARViN.lua)(.*)$") then

        os.execute('chmod +x install.sh');
        os.execute('./install.sh get');
    end
end
function Rank_Checking(user_id, chat_id)
    if tonumber(user_id) == tonumber(1223431389) then
        var = true
    elseif tonumber(user_id) == tonumber(Id_Sudo) then
        var = true
    elseif tonumber(user_id) == tonumber(bot_id) then
        var = true
    elseif database:sismember(bot_id .. "LARViN:Sudo:User", user_id) then
        var = true
    elseif database:sismember(bot_id .. "LARViN:Basic:Constructor" .. chat_id, user_id) then
        var = true
    elseif database:sismember(bot_id .. "LARViN:Constructor" .. chat_id, user_id) then
        var = true
    elseif database:sismember(bot_id .. "LARViN:Manager" .. chat_id, user_id) then
        var = true
        elseif database:sismember(bot_id..'VVVZVV:MN:TF'..chat_id, user_id) then
var = true  
    elseif database:sismember(bot_id .. "LARViN:Mod:User" .. chat_id, user_id) then
        var = true
    elseif database:sismember(bot_id .. "LARViN:Special:User" .. chat_id, user_id) then
        var = true
    else
        var = false
    end
    return var
end
function Get_Rank(user_id, chat_id)
    if tonumber(user_id) == tonumber(1223431389) then
        var = 'مطور السورس'
    elseif DevLARViNe(user_id) == true then
        var = "المطور الاساسي"
    elseif tonumber(user_id) == tonumber(bot_id) then
        var = "البوت"
    elseif database:sismember(bot_id .. "LARViN:Sudo:User", user_id) then
        var = database:get(bot_id .. "LARViN:Sudo:Rd" .. chat_id) or "المطور"
    elseif database:sismember(bot_id .. "LARViN:Basic:Constructor" .. chat_id, user_id) then
        var = database:get(bot_id .. "LARViN:BasicConstructor:Rd" .. chat_id) or "المنشئ اساسي"
    elseif database:sismember(bot_id .. "LARViN:Constructor" .. chat_id, user_id) then
        var = database:get(bot_id .. "LARViN:Constructor:Rd" .. chat_id) or "المنشئ"
    elseif database:sismember(bot_id .. "LARViN:Manager" .. chat_id, user_id) then
        var = database:get(bot_id .. "LARViN:Manager:Rd" .. chat_id) or "المدير"
        elseif database:sismember(bot_id..'VVVZVV:MN:TF'..chat_id, user_id) then
var = 'منظف'
    elseif database:sismember(bot_id .. "LARViN:Mod:User" .. chat_id, user_id) then
        var = database:get(bot_id .. "LARViN:Mod:Rd" .. chat_id) or "الادمن"
    elseif database:sismember(bot_id .. "LARViN:Special:User" .. chat_id, user_id) then
        var = database:get(bot_id .. "LARViN:Special:Rd" .. chat_id) or "المميز"
    else
        var = database:get(bot_id .. "LARViN:Memp:Rd" .. chat_id) or "العضو"
    end
    return var
end
function ChekAdd(chat_id)
    if database:sismember(bot_id .. "LARViN:Chek:Groups", chat_id) then
        var = true
    else
        var = false
    end
    return var
end
function Muted_Groups(Chat_id, User_id)
    if database:sismember(bot_id .. "LARViN:Muted:User" .. Chat_id, User_id) then
        Var = true
    else
        Var = false
    end
    return Var
end
function Ban_Groups(Chat_id, User_id)
    if database:sismember(bot_id .. "LARViN:Ban:User" .. Chat_id, User_id) then
        Var = true
    else
        Var = false
    end
    return Var
end
function Ban_All_Groups(User_id)
    if database:sismember(bot_id .. "LARViN:GBan:User", User_id) then
        Var = true
    else
        Var = false
    end
    return Var
end
function send(chat_id, reply_to_message_id, text)
    local TextParseMode = {
        ID = "TextParseModeMarkdown"
    }
    tdcli_function({
        ID = "SendMessage",
        chat_id_ = chat_id,
        reply_to_message_id_ = reply_to_message_id,
        disable_notification_ = 1,
        from_background_ = 1,
        reply_markup_ = nil,
        input_message_content_ = {
            ID = "InputMessageText",
            text_ = text,
            disable_web_page_preview_ = 1,
            clear_draft_ = 0,
            entities_ = {},
            parse_mode_ = TextParseMode
        }
    }, dl_cb, nil)
end
function DeleteMessage(chat, id)
    tdcli_function({
        ID = "DeleteMessages",
        chat_id_ = chat,
        message_ids_ = id
    }, function(arg, data)
    end, nil)
end
function DeleteMessage_(chat, id, func)
    tdcli_function({
        ID = "DeleteMessages",
        chat_id_ = chat,
        message_ids_ = id
    }, func or dl_cb, nil)
end
function getInputFile(file)
    if file:match("/") then
        infile = {
            ID = "InputFileLocal",
            path_ = file
        }
    elseif file:match("^%d+$") then
        infile = {
            ID = "InputFileId",
            id_ = file
        }
    else
        infile = {
            ID = "InputFilePersistentId",
            persistent_id_ = file
        }
    end
    return infile
end
function RestrictChat(User_id, Chat_id)
    https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. Chat_id .. "&user_id=" ..
                      User_id)
end
function s_api(web)
    local info, res = https.request(web)
    local req = json:decode(info)
    if res ~= 200 then
        return false
    end
    if not req.ok then
        return false
    end
    return req
end
function sendText(chat_id, text, reply_to_message_id, markdown)
    send_api = "https://api.telegram.org/bot" .. token
    local url = send_api .. "/sendMessage?chat_id=" .. chat_id .. "&text=" .. URL.escape(text)
    if reply_to_message_id ~= 0 then
        url = url .. "&reply_to_message_id=" .. reply_to_message_id
    end
    if markdown == "md" or markdown == "markdown" then
        url = url .. "&parse_mode=Markdown"
    elseif markdown == "html" then
        url = url .. "&parse_mode=HTML"
    end
    return s_api(url)
end
function send_inline_key(chat_id, text, keyboard, inline, reply_id)
    local response = {}
    response.keyboard = keyboard
    response.inline_keyboard = inline
    response.resize_keyboard = true
    response.one_time_keyboard = false
    response.selective = false
    local send_api = "https://api.telegram.org/bot" .. token .. "/sendMessage?chat_id=" .. chat_id .. "&text=" ..
                         URL.escape(text) .. "&parse_mode=Markdown&disable_web_page_preview=true&reply_markup=" ..
                         URL.escape(JSON.encode(response))
    if reply_id then
        send_api = send_api .. "&reply_to_message_id=" .. reply_id
    end
    return s_api(send_api)
end
function GetInputFile(file)
    local file = file or ""
    if file:match("/") then
        infile = {
            ID = "InputFileLocal",
            path_ = file
        }
    elseif file:match("^%d+$") then
        infile = {
            ID = "InputFileId",
            id_ = file
        }
    else
        infile = {
            ID = "InputFilePersistentId",
            persistent_id_ = file
        }
    end
    return infile
end
function sendPhoto(chat_id, reply_id, photo, caption, func)
    tdcli_function({
        ID = "SendMessage",
        chat_id_ = chat_id,
        reply_to_message_id_ = reply_id,
        disable_notification_ = 0,
        from_background_ = 1,
        reply_markup_ = nil,
        input_message_content_ = {
            ID = "InputMessagePhoto",
            photo_ = GetInputFile(photo),
            added_sticker_file_ids_ = {},
            width_ = 0,
            height_ = 0,
            caption_ = caption or ""
        }
    }, func or dl_cb, nil)
end
function sendVoice(chat_id, reply_id, voice, caption, func)
    tdcli_function({
        ID = "SendMessage",
        chat_id_ = chat_id,
        reply_to_message_id_ = reply_id,
        disable_notification_ = 0,
        from_background_ = 1,
        reply_markup_ = nil,
        input_message_content_ = {
            ID = "InputMessageVoice",
            voice_ = GetInputFile(voice),
            duration_ = "",
            waveform_ = "",
            caption_ = caption or ""
        }
    }, func or dl_cb, nil)
end

function sendAnimation(chat_id, reply_id, animation, caption, func)
    tdcli_function({
        ID = "SendMessage",
        chat_id_ = chat_id,
        reply_to_message_id_ = reply_id,
        disable_notification_ = 0,
        from_background_ = 1,
        reply_markup_ = nil,
        input_message_content_ = {
            ID = "InputMessageAnimation",
            animation_ = GetInputFile(animation),
            width_ = 0,
            height_ = 0,
            caption_ = caption or ""
        }
    }, func or dl_cb, nil)
end

function sendAudio(chat_id, reply_id, audio, title, caption, func)
    tdcli_function({
        ID = "SendMessage",
        chat_id_ = chat_id,
        reply_to_message_id_ = reply_id,
        disable_notification_ = 0,
        from_background_ = 1,
        reply_markup_ = nil,
        input_message_content_ = {
            ID = "InputMessageAudio",
            audio_ = GetInputFile(audio),
            duration_ = "",
            title_ = title or "",
            performer_ = "",
            caption_ = caption or ""
        }
    }, func or dl_cb, nil)
end

function sendSticker(chat_id, reply_id, sticker, func)
    tdcli_function({
        ID = "SendMessage",
        chat_id_ = chat_id,
        reply_to_message_id_ = reply_id,
        disable_notification_ = 0,
        from_background_ = 1,
        reply_markup_ = nil,
        input_message_content_ = {
            ID = "InputMessageSticker",
            sticker_ = GetInputFile(sticker),
            width_ = 0,
            height_ = 0
        }
    }, func or dl_cb, nil)
end

function sendVideo(chat_id, reply_id, video, caption, func)
    tdcli_function({
        ID = "SendMessage",
        chat_id_ = chat_id,
        reply_to_message_id_ = reply_id,
        disable_notification_ = 0,
        from_background_ = 0,
        reply_markup_ = nil,
        input_message_content_ = {
            ID = "InputMessageVideo",
            video_ = GetInputFile(video),
            added_sticker_file_ids_ = {},
            duration_ = 0,
            width_ = 0,
            height_ = 0,
            caption_ = caption or ""
        }
    }, func or dl_cb, nil)
end

function sendDocument(chat_id, reply_id, document, caption, func)
    tdcli_function({
        ID = "SendMessage",
        chat_id_ = chat_id,
        reply_to_message_id_ = reply_id,
        disable_notification_ = 0,
        from_background_ = 1,
        reply_markup_ = nil,
        input_message_content_ = {
            ID = "InputMessageDocument",
            document_ = GetInputFile(document),
            caption_ = caption
        }
    }, func or dl_cb, nil)
end
function Kick_Group(chat, user)
    tdcli_function({
        ID = "ChangeChatMemberStatus",
        chat_id_ = chat,
        user_id_ = user,
        status_ = {
            ID = "ChatMemberStatusKicked"
        }
    }, function(arg, data)
    end, nil)
end

function AddChannel(User)
    local var = true
    if database:get(bot_id .. 'add:ch:id') then
        local url, res = https.request("https://api.telegram.org/bot" .. token .. "/getchatmember?chat_id=" ..
                                           database:get(bot_id .. 'add:ch:id') .. "&user_id=" .. User);
        data = json:decode(url)
        if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
            var = false
        end
    end
    return var
end



        if database:get(bot_id .. "LARViN:LARViN:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then
            if text == "الغاء" or text == "الغاء ܂𓍼 " then
                send(msg.chat_id_, msg.id_, "܂𓍼 ⁝ تم الغاء الاذاعه")
                database:del(bot_id .. "LARViN:LARViN:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
                return false
            end
            local list = database:smembers(bot_id .. "LARViN:Chek:Groups")
            if msg.content_.text_ then
                for k, v in pairs(list) do
                    send(v, 0, "[" .. msg.content_.text_ .. "]")
                    database:set(bot_id .. 'LARViN:Msg:Pin:Chat' .. v, msg.content_.text_)
                end
            elseif msg.content_.photo_ then
                if msg.content_.photo_.sizes_[0] then
                    photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
                elseif msg.content_.photo_.sizes_[1] then
                    photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
                end
                for k, v in pairs(list) do
                    sendPhoto(v, 0, photo, (msg.content_.caption_ or ""))
                    database:set(bot_id .. 'LARViN:Msg:Pin:Chat' .. v, photo)
                end
            elseif msg.content_.animation_ then
                for k, v in pairs(list) do
                    sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_, (msg.content_.caption_ or ""))
                    database:set(bot_id .. 'LARViN:Msg:Pin:Chat' .. v, msg.content_.animation_.animation_.persistent_id_)
                end
            elseif msg.content_.sticker_ then
                for k, v in pairs(list) do
                    sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)
                    database:set(bot_id .. 'LARViN:Msg:Pin:Chat' .. v, msg.content_.sticker_.sticker_.persistent_id_)
                end
            end
            send(msg.chat_id_, msg.id_, "܂𓍼 ⁝ تمت الاذاعه الى *~ " .. #list .. " ~* مجموعه ")
            database:del(bot_id .. "LARViN:LARViN:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
            return false
        end
        if not Vips(msg) and msg.content_.ID ~= "MessageChatAddMembers" and
            database:hget(bot_id .. "LARViN:flooding:settings:" .. msg.chat_id_, "flood") then
            floods = database:hget(bot_id .. "LARViN:flooding:settings:" .. msg.chat_id_, "flood") or "nil"
            Num_Msg_Max = database:hget(bot_id .. "LARViN:flooding:settings:" .. msg.chat_id_, "floodmax") or 5
            Time_Spam = database:hget(bot_id .. "LARViN:flooding:settings:" .. msg.chat_id_, "floodtime") or 5
            local post_count = tonumber(database:get(bot_id .. "LARViN:floodc:" .. msg.sender_user_id_ .. ":" ..
                                                         msg.chat_id_) or 0)
            if post_count >
                tonumber(database:hget(bot_id .. "LARViN:flooding:settings:" .. msg.chat_id_, "floodmax") or 5) then
                local ch = msg.chat_id_
                local type = database:hget(bot_id .. "LARViN:flooding:settings:" .. msg.chat_id_, "flood")
                Is_Not_Spam(msg, type)
            end
            database:setex(bot_id .. "LARViN:floodc:" .. msg.sender_user_id_ .. ":" .. msg.chat_id_, tonumber(
                database:hget(bot_id .. "LARViN:flooding:settings:" .. msg.chat_id_, "floodtime") or 3), post_count + 1)
            local edit_id = data.text_ or "nil"
            Num_Msg_Max = 5
            if database:hget(bot_id .. "LARViN:flooding:settings:" .. msg.chat_id_, "floodmax") then
                Num_Msg_Max = database:hget(bot_id .. "LARViN:flooding:settings:" .. msg.chat_id_, "floodmax")
            end
            if database:hget(bot_id .. "LARViN:flooding:settings:" .. msg.chat_id_, "floodtime") then
                Time_Spam = database:hget(bot_id .. "LARViN:flooding:settings:" .. msg.chat_id_, "floodtime")
            end
        end
        --------------------------------------------------------------------------------------------------------------
        --------------------------------------------------------------------------------------------------------------
        if database:get(bot_id .. "LARViN:Lock:text" .. msg.chat_id_) and not Vips(msg) then
            DeleteMessage(msg.chat_id_, {
                [0] = msg.id_
            })
            return false
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.ID == "MessageChatAddMembers" then
            database:incr(bot_id .. "LARViN:Add:Memp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
        end
        if msg.content_.ID == "MessageChatAddMembers" and not Vips(msg) then
            if database:get(bot_id .. "LARViN:Lock:AddMempar" .. msg.chat_id_) == "kick" then
                local mem_id = msg.content_.members_
                for i = 0, #mem_id do
                    Kick_Group(msg.chat_id_, mem_id[i].id_)
                end
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.ID == "MessageChatJoinByLink" and not Vips(msg) then
            if database:get(bot_id .. "LARViN:Lock:Join" .. msg.chat_id_) == "kick" then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                return false
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.caption_ then
            if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then
                if database:get(bot_id .. "LARViN:Lock:User:Name" .. msg.chat_id_) == "del" and not Vips(msg) then
                    DeleteMessage(msg.chat_id_, {
                        [0] = msg.id_
                    })
                elseif database:get(bot_id .. "LARViN:Lock:User:Name" .. msg.chat_id_) == "ked" and not Vips(msg) then
                    RestrictChat(msg.chat_id_, msg.sender_user_id_)
                    DeleteMessage(msg.chat_id_, {
                        [0] = msg.id_
                    })
                elseif database:get(bot_id .. "LARViN:Lock:User:Name" .. msg.chat_id_) == "kick" and not Vips(msg) then
                    Kick_Group(msg.chat_id_, msg.sender_user_id_)
                    DeleteMessage(msg.chat_id_, {
                        [0] = msg.id_
                    })
                elseif database:get(bot_id .. "LARViN:Lock:User:Name" .. msg.chat_id_) == "ktm" and not Vips(msg) then
                    database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                    DeleteMessage(msg.chat_id_, {
                        [0] = msg.id_
                    })
                end
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then
            if database:get(bot_id .. "LARViN:Lock:User:Name" .. msg.chat_id_) == "del" and not Vips(msg) then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:User:Name" .. msg.chat_id_) == "ked" and not Vips(msg) then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:User:Name" .. msg.chat_id_) == "kick" and not Vips(msg) then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:User:Name" .. msg.chat_id_) == "ktm" and not Vips(msg) then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.caption_ then
            if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then
                if database:get(bot_id .. "LARViN:Lock:hashtak" .. msg.chat_id_) == "del" and not Vips(msg) then
                    DeleteMessage(msg.chat_id_, {
                        [0] = msg.id_
                    })
                elseif database:get(bot_id .. "LARViN:Lock:hashtak" .. msg.chat_id_) == "ked" and not Vips(msg) then
                    RestrictChat(msg.chat_id_, msg.sender_user_id_)
                    DeleteMessage(msg.chat_id_, {
                        [0] = msg.id_
                    })
                elseif database:get(bot_id .. "LARViN:Lock:hashtak" .. msg.chat_id_) == "kick" and not Vips(msg) then
                    Kick_Group(msg.chat_id_, msg.sender_user_id_)
                    DeleteMessage(msg.chat_id_, {
                        [0] = msg.id_
                    })
                elseif database:get(bot_id .. "LARViN:Lock:hashtak" .. msg.chat_id_) == "ktm" and not Vips(msg) then
                    database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                    DeleteMessage(msg.chat_id_, {
                        [0] = msg.id_
                    })
                end
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
            if database:get(bot_id .. "LARViN:Lock:hashtak" .. msg.chat_id_) == "del" and not Vips(msg) then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:hashtak" .. msg.chat_id_) == "ked" and not Vips(msg) then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:hashtak" .. msg.chat_id_) == "kick" and not Vips(msg) then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:hashtak" .. msg.chat_id_) == "ktm" and not Vips(msg) then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.caption_ then
            if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then
                if database:get(bot_id .. "LARViN:Lock:Cmd" .. msg.chat_id_) == "del" and not Vips(msg) then
                    DeleteMessage(msg.chat_id_, {
                        [0] = msg.id_
                    })
                elseif database:get(bot_id .. "LARViN:Lock:Cmd" .. msg.chat_id_) == "ked" and not Vips(msg) then
                    RestrictChat(msg.chat_id_, msg.sender_user_id_)
                    DeleteMessage(msg.chat_id_, {
                        [0] = msg.id_
                    })
                elseif database:get(bot_id .. "LARViN:Lock:Cmd" .. msg.chat_id_) == "kick" and not Vips(msg) then
                    Kick_Group(msg.chat_id_, msg.sender_user_id_)
                    DeleteMessage(msg.chat_id_, {
                        [0] = msg.id_
                    })
                elseif database:get(bot_id .. "LARViN:Lock:Cmd" .. msg.chat_id_) == "ktm" and not Vips(msg) then
                    database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                    DeleteMessage(msg.chat_id_, {
                        [0] = msg.id_
                    })
                end
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
            if database:get(bot_id .. "LARViN:Lock:Cmd" .. msg.chat_id_) == "del" and not Vips(msg) then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Cmd" .. msg.chat_id_) == "ked" and not Vips(msg) then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Cmd" .. msg.chat_id_) == "kick" and not Vips(msg) then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Cmd" .. msg.chat_id_) == "ktm" and not Vips(msg) then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.caption_ then
            if not Vips(msg) then
                if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or
                    msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or
                    msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or
                    msg.content_.caption_:match(".[Cc][Oo][Mm]") or
                    msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or
                    msg.content_.caption_:match(".[Pp][Ee]") or
                    msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or
                    msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or
                    msg.content_.caption_:match("[Tt].[Mm][Ee]/") then
                    if database:get(bot_id .. "LARViN:Lock:Link" .. msg.chat_id_) == "del" and not Vips(msg) then
                        DeleteMessage(msg.chat_id_, {
                            [0] = msg.id_
                        })
                    elseif database:get(bot_id .. "LARViN:Lock:Link" .. msg.chat_id_) == "ked" and not Vips(msg) then
                        RestrictChat(msg.chat_id_, msg.sender_user_id_)
                        DeleteMessage(msg.chat_id_, {
                            [0] = msg.id_
                        })
                    elseif database:get(bot_id .. "LARViN:Lock:Link" .. msg.chat_id_) == "kick" and not Vips(msg) then
                        Kick_Group(msg.chat_id_, msg.sender_user_id_)
                        DeleteMessage(msg.chat_id_, {
                            [0] = msg.id_
                        })
                    elseif database:get(bot_id .. "LARViN:Lock:Link" .. msg.chat_id_) == "ktm" and not Vips(msg) then
                        database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                        DeleteMessage(msg.chat_id_, {
                            [0] = msg.id_
                        })
                    end
                end
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and
            text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and
            text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and
            text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and
            text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or
            text and text:match("[Tt].[Mm][Ee]/") and not Vips(msg) then
            if database:get(bot_id .. "LARViN:Lock:Link" .. msg.chat_id_) == "del" and not Vips(msg) then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Link" .. msg.chat_id_) == "ked" and not Vips(msg) then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Link" .. msg.chat_id_) == "kick" and not Vips(msg) then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Link" .. msg.chat_id_) == "ktm" and not Vips(msg) then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.ID == "MessagePhoto" and not Vips(msg) then
            if database:get(bot_id .. "LARViN:Lock:Photo" .. msg.chat_id_) == "del" then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Photo" .. msg.chat_id_) == "ked" then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Photo" .. msg.chat_id_) == "kick" then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Photo" .. msg.chat_id_) == "ktm" then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.ID == "MessageVideo" and not Vips(msg) then
            if database:get(bot_id .. "LARViN:Lock:Video" .. msg.chat_id_) == "del" then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Video" .. msg.chat_id_) == "ked" then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Video" .. msg.chat_id_) == "kick" then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Video" .. msg.chat_id_) == "ktm" then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.ID == "MessageAnimation" and not Vips(msg) then
            if database:get(bot_id .. "LARViN:Lock:Animation" .. msg.chat_id_) == "del" then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Animation" .. msg.chat_id_) == "ked" then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Animation" .. msg.chat_id_) == "kick" then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Animation" .. msg.chat_id_) == "ktm" then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.game_ and not Vips(msg) then
            if database:get(bot_id .. "LARViN:Lock:geam" .. msg.chat_id_) == "del" then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:geam" .. msg.chat_id_) == "ked" then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:geam" .. msg.chat_id_) == "kick" then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:geam" .. msg.chat_id_) == "ktm" then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.ID == "MessageAudio" and not Vips(msg) then
            if database:get(bot_id .. "LARViN:Lock:Audio" .. msg.chat_id_) == "del" then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Audio" .. msg.chat_id_) == "ked" then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Audio" .. msg.chat_id_) == "kick" then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Audio" .. msg.chat_id_) == "ktm" then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.ID == "MessageVoice" and not Vips(msg) then
            if database:get(bot_id .. "LARViN:Lock:vico" .. msg.chat_id_) == "del" then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:vico" .. msg.chat_id_) == "ked" then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:vico" .. msg.chat_id_) == "kick" then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:vico" .. msg.chat_id_) == "ktm" then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and not Vips(msg) then
            if database:get(bot_id .. "LARViN:Lock:Keyboard" .. msg.chat_id_) == "del" then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Keyboard" .. msg.chat_id_) == "ked" then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Keyboard" .. msg.chat_id_) == "kick" then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Keyboard" .. msg.chat_id_) == "ktm" then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.ID == "MessageSticker" and not Vips(msg) then
            if database:get(bot_id .. "LARViN:Lock:Sticker" .. msg.chat_id_) == "del" then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Sticker" .. msg.chat_id_) == "ked" then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Sticker" .. msg.chat_id_) == "kick" then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Sticker" .. msg.chat_id_) == "ktm" then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.forward_info_ and not Vips(msg) then
            if database:get(bot_id .. "LARViN:Lock:forward" .. msg.chat_id_) == "del" then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
                return false
            elseif database:get(bot_id .. "LARViN:Lock:forward" .. msg.chat_id_) == "ked" then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
                return false
            elseif database:get(bot_id .. "LARViN:Lock:forward" .. msg.chat_id_) == "kick" then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
                return false
            elseif database:get(bot_id .. "LARViN:Lock:forward" .. msg.chat_id_) == "ktm" then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
                return false
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.ID == "MessageDocument" and not Vips(msg) then
            if database:get(bot_id .. "LARViN:Lock:Document" .. msg.chat_id_) == "del" then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Document" .. msg.chat_id_) == "ked" then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Document" .. msg.chat_id_) == "kick" then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Document" .. msg.chat_id_) == "ktm" then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.ID == "MessageUnsupported" and not Vips(msg) then
            if database:get(bot_id .. "LARViN:Lock:Unsupported" .. msg.chat_id_) == "del" then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Unsupported" .. msg.chat_id_) == "ked" then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Unsupported" .. msg.chat_id_) == "kick" then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Unsupported" .. msg.chat_id_) == "ktm" then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.entities_ then
            if msg.content_.entities_[0] then
                if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or
                    msg.content_.entities_[0].ID == "MessageEntityTextUrl" then
                    if not Vips(msg) then
                        if database:get(bot_id .. "LARViN:Lock:Markdaun" .. msg.chat_id_) == "del" then
                            DeleteMessage(msg.chat_id_, {
                                [0] = msg.id_
                            })
                        elseif database:get(bot_id .. "LARViN:Lock:Markdaun" .. msg.chat_id_) == "ked" then
                            RestrictChat(msg.chat_id_, msg.sender_user_id_)
                            DeleteMessage(msg.chat_id_, {
                                [0] = msg.id_
                            })
                        elseif database:get(bot_id .. "LARViN:Lock:Markdaun" .. msg.chat_id_) == "kick" then
                            Kick_Group(msg.chat_id_, msg.sender_user_id_)
                            DeleteMessage(msg.chat_id_, {
                                [0] = msg.id_
                            })
                        elseif database:get(bot_id .. "LARViN:Lock:Markdaun" .. msg.chat_id_) == "ktm" then
                            database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                            DeleteMessage(msg.chat_id_, {
                                [0] = msg.id_
                            })
                        end
                    end
                end
            end
        end

        if tonumber(msg.via_bot_user_id_) ~= 0 and not Vips(msg) then
            if database:get(bot_id .. "LARViN:Lock:Inlen" .. msg.chat_id_) == "del" then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Inlen" .. msg.chat_id_) == "ked" then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Inlen" .. msg.chat_id_) == "kick" then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Inlen" .. msg.chat_id_) == "ktm" then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end

        --------------------------------------------------------------------------------------------------------------
        if msg.content_.ID == "MessageContact" and not Vips(msg) then
            if database:get(bot_id .. "LARViN:Lock:Contact" .. msg.chat_id_) == "del" then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Contact" .. msg.chat_id_) == "ked" then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Contact" .. msg.chat_id_) == "kick" then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Contact" .. msg.chat_id_) == "ktm" then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.text_ and not Vips(msg) then
            local _nl, ctrl_ = string.gsub(text, "%c", "")
            local _nl, real_ = string.gsub(text, "%d", "")
            sens = 400
            if database:get(bot_id .. "LARViN:Lock:Spam" .. msg.chat_id_) == "del" and string.len(msg.content_.text_) >
                (sens) or ctrl_ > (sens) or real_ > (sens) then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Spam" .. msg.chat_id_) == "ked" and
                string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then
                RestrictChat(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Spam" .. msg.chat_id_) == "kick" and
                string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            elseif database:get(bot_id .. "LARViN:Lock:Spam" .. msg.chat_id_) == "ktm" and
                string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then
                database:sadd(bot_id .. "LARViN:Muted:User" .. msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        --------------------------------------------------------------------------------------------------------------
        local status_welcome = database:get(bot_id .. "LARViN:Chek:Welcome" .. msg.chat_id_)
        if status_welcome and not database:get(bot_id .. "LARViN:Lock:tagservr" .. msg.chat_id_) then
            if msg.content_.ID == "MessageChatJoinByLink" then
                tdcli_function({
                    ID = "GetUser",
                    user_id_ = msg.sender_user_id_
                }, function(extra, result)
                    local GetWelcomeGroup = database:get(bot_id .. "LARViN:Get:Welcome:Group" .. msg.chat_id_)
                    if GetWelcomeGroup then
                        t = GetWelcomeGroup
                    else
                        t = "\n• نورت حبي \n•  name \n• user"
                    end
                    t = t:gsub("name", result.first_name_)
                    t = t:gsub("user", ("@" .. result.username_ or "لا يوجد"))
                    send(msg.chat_id_, msg.id_, t)
                end, nil)
            end
        end
        -------------------------------------------------------
        if msg.content_.ID == "MessagePinMessage" then
            if Constructor(msg) or tonumber(msg.sender_user_id_) == tonumber(bot_id) then
                database:set(bot_id .. "LARViN:Pin:Id:Msg" .. msg.chat_id_, msg.content_.message_id_)
            else
                local Msg_Pin = database:get(bot_id .. "LARViN:Pin:Id:Msg" .. msg.chat_id_)
                if Msg_Pin and database:get(bot_id .. "LARViN:lockpin" .. msg.chat_id_) then
                    PinMessage(msg.chat_id_, Msg_Pin)
                end
            end
        end
        ------------------------------------------------------


        if database:get(bot_id .. "LARViN:LARViN:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then
            if text == "الغاء" or text == "الغاء ܂𓍼 " then
                send(msg.chat_id_, msg.id_, "܂𓍼 ⁝ تم الغاء الاذاعه للخاص")
                database:del(bot_id .. "LARViN:LARViN:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
                return false
            end
            local list = database:smembers(bot_id .. 'LARViN:UsersBot')
            if msg.content_.text_ then
                for k, v in pairs(list) do
                    send(v, 0, "[" .. msg.content_.text_ .. "]")
                end
            elseif msg.content_.photo_ then
                if msg.content_.photo_.sizes_[0] then
                    photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
                elseif msg.content_.photo_.sizes_[1] then
                    photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
                end
                for k, v in pairs(list) do
                    sendPhoto(v, 0, photo, (msg.content_.caption_ or ""))
                end
            elseif msg.content_.animation_ then
                for k, v in pairs(list) do
                    sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_, (msg.content_.caption_ or ""))
                end
            elseif msg.content_.sticker_ then
                for k, v in pairs(list) do
                    sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)
                end
            end
            send(msg.chat_id_, msg.id_,
                "܂𓍼 ⁝ تمت الاذاعه الى *~ " .. #list .. " ~* مشترك في الخاص ")
            database:del(bot_id .. "LARViN:LARViN:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
            return false
        end

        if database:get(bot_id .. "LARViN:LARViN:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then
            if text == "الغاء" or text == "الغاء ܂𓍼 " then
                send(msg.chat_id_, msg.id_, "܂𓍼 ⁝ تم الغاء الاذاعه")
                database:del(bot_id .. "LARViN:LARViN:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
                return false
            end
            local list = database:smembers(bot_id .. "LARViN:Chek:Groups")
            if msg.content_.text_ then
                for k, v in pairs(list) do
                    send(v, 0, "[" .. msg.content_.text_ .. "]")
                end
            elseif msg.content_.photo_ then
                if msg.content_.photo_.sizes_[0] then
                    photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
                elseif msg.content_.photo_.sizes_[1] then
                    photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
                end
                for k, v in pairs(list) do
                    sendPhoto(v, 0, photo, (msg.content_.caption_ or ""))
                end
            elseif msg.content_.animation_ then
                for k, v in pairs(list) do
                    sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_, (msg.content_.caption_ or ""))
                end
            elseif msg.content_.sticker_ then
                for k, v in pairs(list) do
                    sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)
                end
            end
            send(msg.chat_id_, msg.id_, "܂𓍼 ⁝ تمت الاذاعه الى *~ " .. #list .. " ~* مجموعه ")
            database:del(bot_id .. "LARViN:LARViN:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
            return false
        end

        if database:get(bot_id .. "LARViN:LARViN:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then
            if text == "الغاء" or text == "الغاء ܂𓍼 " then
                send(msg.chat_id_, msg.id_, "܂𓍼 ⁝ تم الغاء الاذاعه")
                database:del(bot_id .. "LARViN:LARViN:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
                return false
            end
            if msg.forward_info_ then
                local list = database:smembers(bot_id .. "LARViN:Chek:Groups")
                for k, v in pairs(list) do
                    tdcli_function({
                        ID = "ForwardMessages",
                        chat_id_ = v,
                        from_chat_id_ = msg.chat_id_,
                        message_ids_ = {
                            [0] = msg.id_
                        },
                        disable_notification_ = 0,
                        from_background_ = 1
                    }, function(a, t)
                    end, nil)
                end
                send(msg.chat_id_, msg.id_,
                    "܂𓍼 ⁝ تمت الاذاعه الى *~ " .. #list .. " ~* مجموعه ")
                database:del(bot_id .. "LARViN:LARViN:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
            end
            return false
        end
        if database:get(bot_id .. "LARViN:LARViN:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then
            if text == "الغاء" or text == "الغاء ܂𓍼 " then
                send(msg.chat_id_, msg.id_, "܂𓍼 ⁝ تم الغاء الاذاعه")
                database:del(bot_id .. "LARViN:LARViN:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
                return false
            end
            if msg.forward_info_ then
                local list = database:smembers(bot_id .. "LARViN:UsersBot")
                for k, v in pairs(list) do
                    tdcli_function({
                        ID = "ForwardMessages",
                        chat_id_ = v,
                        from_chat_id_ = msg.chat_id_,
                        message_ids_ = {
                            [0] = msg.id_
                        },
                        disable_notification_ = 0,
                        from_background_ = 1
                    }, function(a, t)
                    end, nil)
                end
                send(msg.chat_id_, msg.id_,
                    "܂𓍼 ⁝ تمت الاذاعه الى *~ " .. #list .. " ~* مشترك في الخاص ")
                database:del(bot_id .. "LARViN:LARViN:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
            end
            return false
        end

        --------------------------------------------------------------------------------------------------------------
        if text and not Vips(msg) then
            local LARViN_Msg = database:get(bot_id .. "LARViN:Add:Filter:Rp2" .. text .. msg.chat_id_)
            if LARViN_Msg then
                Reply_Status(msg, msg.sender_user_id_, "reply", "܂𓍼 ⁝ " .. LARViN_Msg)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
                return false
            end
        end
        if database:get(bot_id .. "LARViN:Set:Name:Bot" .. msg.sender_user_id_) then
            if text == "الغاء" or text == "الغاء ܂𓍼 " then
                send(msg.chat_id_, msg.id_, "܂𓍼 ⁝  تم الغاء حفظ اسم البوت")
                database:del(bot_id .. "LARViN:Set:Name:Bot" .. msg.sender_user_id_)
                return false
            end
            database:del(bot_id .. "LARViN:Set:Name:Bot" .. msg.sender_user_id_)
            database:set(bot_id .. "LARViN:Name:Bot", text)
            send(msg.chat_id_, msg.id_, "܂𓍼 ⁝  تم حفظ اسم البوت")
            return false
        end
        if text and database:get(bot_id .. "LARViN:Set:Cmd:Group" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) ==
            "true" then
            database:set(bot_id .. "LARViN:Set:Cmd:Group:New" .. msg.chat_id_, text)
            send(msg.chat_id_, msg.id_, "܂𓍼 ⁝ ارسل الامر الجديد")
            database:del(bot_id .. "LARViN:Set:Cmd:Group" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
            database:set(bot_id .. "LARViN:Set:Cmd:Group1" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, "true1")
            return false
        end
        if text and database:get(bot_id .. "LARViN:Set:Cmd:Group1" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) ==
            "true1" then
            local NewCmd = database:get(bot_id .. "LARViN:Set:Cmd:Group:New" .. msg.chat_id_)
            database:set(bot_id .. "LARViN:Set:Cmd:Group:New1" .. msg.chat_id_ .. ":" .. text, NewCmd)
            database:sadd(bot_id .. "LARViN:List:Cmd:Group:New" .. msg.chat_id_, text)
            send(msg.chat_id_, msg.id_, "܂𓍼 ⁝ تم حفظ الامر")
            database:del(bot_id .. "LARViN:Set:Cmd:Group1" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
            return false
        end
        --------------------------------------------------------------------------------------------------------------

                if text == "تفعيل @all" and CoSu(msg) then   
          if database:get(bot_id..'Cick:all'..msg.chat_id_) then
            Text = ' ⌔︙تم تفعيل امر @all'
            database:del(bot_id..'Cick:all'..msg.chat_id_)  
            else
            Text = ' ⌔︙بالتاكيد تم تفعيل امر @all'
            end
            send(msg.chat_id_, msg.id_,Text) 
            end
            if text == "تعطيل @all" and CoSu(msg) then  
            if not database:get(bot_id..'Cick:all'..msg.chat_id_) then
            database:set(bot_id..'Cick:all'..msg.chat_id_,true)  
            Text = '\n ⌔︙تم تعطيل امر @all'
            else
            Text = '\n ⌔︙بالتاكيد تم تعطيل امر @all'
            end
            send(msg.chat_id_, msg.id_,Text) 
            end
        
            if text == ("امسح") and cleaner(msg) then  
           local list = database:smembers(bot_id.."VVVZVV:allM"..msg.chat_id_)
            for k,v in pairs(list) do
            local Message = v
            if Message then
            t = "⌔︙تم مسح "..k.." من الوسائط الموجوده"
            DeleteMessage(msg.chat_id_,{[0]=Message})
            database:del(bot_id.."VVVZVV:allM"..msg.chat_id_)
            end
            end
            if #list == 0 then
            t = "⌔︙لا يوجد ميديا في المجموعه"
            end
            send(msg.chat_id_, msg.id_, t)
            end
            if text == ("عدد الميديا") and cleaner(msg) then  
            local num = database:smembers(bot_id.."VVVZVV:allM"..msg.chat_id_)
            for k,v in pairs(num) do
            local numl = v
            if numl then
            l = "⌔︙عدد الميديا الموجود هو "..k
            end
            end
            if #num == 0 then
            l = "⌔︙لا يوجد ميديا في المجموعه"
            end
            send(msg.chat_id_, msg.id_, l)
            end
            if text == ("رفع منظف") and msg.reply_to_message_id_ and BasicConstructor(msg) then
            if AddChannel(msg.sender_user_id_) == false then
            local textchuser = database:get(bot_id..'text:ch:user')
            if textchuser then
            send(msg.chat_id_, msg.id_,'['..textchuser..']')
            else
            send(msg.chat_id_, msg.id_,' ⌔︙لا تستطيع استخدام البوت \n  ⌔︙يرجى الاشتراك بالقناه اولا \n  ⌔︙اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
            end
            return false
            end
            function start_function(extra, result, success)
            if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not BasicConstructor(msg) then
            send(msg.chat_id_, msg.id_,' ⌔︙تم تعطيل الرفع') 
            return false
            end
            database:sadd(bot_id..'VVVZVV:MN:TF'..msg.chat_id_, result.sender_user_id_)
            tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
            usertext = '\n ⌔︙العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'SourceLarvine')..')'
            status  = '\n ⌔︙تم ترقيته منظف'
            send(msg.chat_id_, msg.id_, usertext..status)
            end,nil)
            end
            tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == 'مسح المنظفين' and BasicConstructor(msg) then
database:del(bot_id..'VVVZVV:MN:TF'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ⌔︙تم مسح المنظفيه')
end
if text == ("المنظفين") and BasicConstructor(msg) then
local list = database:smembers(bot_id..'VVVZVV:MN:TF'..msg.chat_id_)
t = "\n ⌔︙قائمة المنظفين \n•━━━━━━𝑳𝐍━━━━━━•\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " ⌔︙لا يوجد المنظفين"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("تاك للمنظفين") or text == ("صيح المنظفين") then
local list = database:smembers(bot_id..'VVVZVV:MN:TF'..msg.chat_id_)
t = "\n ⌔︙وينكم تعالو يريدوكم بكروب \n•━━━━━━𝑳𝐍━━━━━━•\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " ⌔︙لا يوجد منظفيه"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("رفع منظف") and msg.reply_to_message_id_ and BasicConstructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ⌔︙لا تستطيع استخدام البوت \n  ⌔︙يرجى الاشتراك بالقناه اولا \n  ⌔︙اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not BasicConstructor(msg) then
send(msg.chat_id_, msg.id_,' ⌔︙تم تعطيل الرفع') 
return false
end
database:sadd(bot_id..'VVVZVV:MN:TF'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ⌔︙العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'SourceLarvine')..')'
status  = '\n ⌔︙تم ترقيته منظف'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع منظف @(.*)$") and BasicConstructor(msg) then
local username = text:match("^رفع منظف @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ⌔︙لا تستطيع استخدام البوت \n  ⌔︙يرجى الاشتراك بالقناه اولا \n  ⌔︙اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not BasicConstructor(msg) then
send(msg.chat_id_, msg.id_,' ⌔︙تم تعطيل الرفع') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," ⌔︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id..'VVVZVV:MN:TF'..msg.chat_id_, result.id_)
usertext = '\n ⌔︙العضو » ['..result.title_..'](t.me/'..(username or 'SourceLarvine')..')'
status  = '\n ⌔︙تم ترقيته منظف'
texts = usertext..status
else
texts = ' ⌔︙لا يوجد حساب بهاذا المعرف'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^رفع منظف (%d+)$") and BasicConstructor(msg) then
local userid = text:match("^رفع منظف (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ⌔︙لا تستطيع استخدام البوت \n  ⌔︙يرجى الاشتراك بالقناه اولا \n  ⌔︙اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not BasicConstructor(msg) then
send(msg.chat_id_, msg.id_,' ⌔︙تم تعطيل الرفع') 
return false
end
database:sadd(bot_id..'VVVZVV:MN:TF'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n ⌔︙العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'SourceLarvine')..')'
status  = '\n ⌔︙تم ترقيته منظف'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n ⌔︙العضو » '..userid..''
status  = '\n ⌔︙تم ترقيته منظف'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("تنزيل منظف") and msg.reply_to_message_id_ and BasicConstructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ⌔︙لا تستطيع استخدام البوت \n  ⌔︙يرجى الاشتراك بالقناه اولا \n  ⌔︙اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'VVVZVV:MN:TF'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ⌔︙العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'SourceLarvine')..')'
status  = '\n ⌔︙تم تنزيله من المنظفيه'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل منظف @(.*)$") and BasicConstructor(msg) then
local username = text:match("^تنزيل منظف @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ⌔︙لا تستطيع استخدام البوت \n  ⌔︙يرجى الاشتراك بالقناه اولا \n  ⌔︙اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'VVVZVV:MN:TF'..msg.chat_id_, result.id_)
usertext = '\n ⌔︙العضو » ['..result.title_..'](t.me/'..(username or 'SourceLarvine')..')'
status  = '\n ⌔︙تم تنزيله من المنظفيه'
texts = usertext..status
else
texts = ' ⌔︙لا يوجد حساب بهاذا المعرف'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل منظف (%d+)$") and BasicConstructor(msg) then
local userid = text:match("^تنزيل منظف (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ⌔︙لا تستطيع استخدام البوت \n  ⌔︙يرجى الاشتراك بالقناه اولا \n  ⌔︙اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'VVVZVV:MN:TF'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n ⌔︙العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'SourceLarvine')..')'
status  = '\n ⌔︙تم تنزيله من المنظفيه'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n ⌔︙العضو » '..userid..''
status  = '\n ⌔︙تم تنزيله من المنظفيه'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
------------------------------------------------------------------------

if text == "all" or text == "@all" and CoSu(msg) then
if not database:get(bot_id..'Cick:all'..msg.chat_id_) then
if database:get(bot_id.."VVVZVV:all:Time"..msg.chat_id_..':'..msg.sender_user_id_) then  
return 
send(msg.chat_id_, msg.id_,"انتظر دقيقه من فضلك")
end
database:setex(bot_id..'VVVZVV:all:Time'..msg.chat_id_..':'..msg.sender_user_id_,300,true)
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub('-100','')},function(argg,dataa) 
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = dataa.member_count_},function(ta,amir)
x = 0
tags = 0
local list = amir.members_
for k, v in pairs(list) do
tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data)
if x == 5 or x == tags or k == 0 then
tags = x + 5
t = "#all"
end
x = x + 1
tagname = data.first_name_
tagname = tagname:gsub("]","")
tagname = tagname:gsub("[[]","")
t = t..", ["..tagname.."](tg://user?id="..v.user_id_..")"
if x == 5 or x == tags or k == 0 then
local Text = t:gsub('#all,','#all\n')
sendText(msg.chat_id_,Text,0,'md')
end
end,nil)
end
end,nil)
end,nil)
end
end


                if text == 'المجموعات' and DevBot(msg) then
                    local Groups = database:scard(bot_id .. 'LARViN:Chek:Groups')
                    send(msg.chat_id_, msg.id_,
                        '*܂𓍼 ⁝ احصائيات البوت \n\n܂𓍼 ⁝ عدد المجموعات *~ ' .. Groups ..
                            '')
                end
                if text == 'المشتركين' and DevBot(msg) then
                    local Users = database:scard(bot_id .. 'LARViN:UsersBot')
                    send(msg.chat_id_, msg.id_,
                        '܂𓍼 ⁝ احصائيات البوت \n\n܂𓍼 ⁝ عدد المشتركين ~ ' .. Users ..
                            '')
                end

                                database:sadd(bot_id .. "LARViN:Ban:User" .. msg.chat_id_, result.sender_user_id_)
                                Kick_Group(result.chat_id_, result.sender_user_id_)
                                Reply_Status(msg, result.sender_user_id_, "reply",
                                    "܂𓍼 ⁝ تم حظره من المجموعه")
                            end, nil)
                        end
                    end
                    tdcli_function({
                        ID = "GetMessage",
                        chat_id_ = msg.chat_id_,
                        message_id_ = tonumber(msg.reply_to_message_id_)
                    }, Function_LARViN, nil)
                    return false
                end

 

                if text == "غادر" then
                    if DevBot(msg) and not database:get(bot_id .. "LARViN:Left:Bot" .. msg.chat_id_) then
                        tdcli_function({
                            ID = "ChangeChatMemberStatus",
                            chat_id_ = msg.chat_id_,
                            user_id_ = bot_id,
                            status_ = {
                                ID = "ChatMemberStatusLeft"
                            }
                        }, function(e, g)
                        end, nil)
                        send(msg.chat_id_, msg.id_, "܂𓍼 ⁝  تم مغادرة المجموعه")
                        database:srem(bot_id .. "LARViN:Chek:Groups", msg.chat_id_)
                    end
                    return false
                end
                if text and text:match("^غادر (-%d+)$") then
                    local GP_ID = {string.match(text, "^(غادر) (-%d+)$")}
                    if DevBot(msg) and not database:get(bot_id .. "LARViN:Left:Bot" .. msg.chat_id_) then
                        tdcli_function({
                            ID = "ChangeChatMemberStatus",
                            chat_id_ = GP_ID[2],
                            user_id_ = bot_id,
                            status_ = {
                                ID = "ChatMemberStatusLeft"
                            }
                        }, function(e, g)
                        end, nil)
                        send(msg.chat_id_, msg.id_, "܂𓍼 ⁝  تم مغادرة المجموعه")
                        send(GP_ID[2], 0,
                            "܂𓍼 ⁝  تم مغادرة المجموعه بامر من مطور البوت")
                        database:srem(bot_id .. "LARViN:Chek:Groups", GP_ID[2])
                        return false
                    end
                end
                if text == "تفعيل المغادره" and DevLARViN(msg) then
                    database:del(bot_id .. "LARViN:Left:Bot" .. msg.chat_id_)
                    send(msg.chat_id_, msg.id_, "܂𓍼 ⁝ تم تفعيل مغادرة البوت")
                    return false
                end
                if text == "تعطيل المغادره" and DevLARViN(msg) then
                    database:set(bot_id .. "LARViN:Left:Bot" .. msg.chat_id_, true)
                    send(msg.chat_id_, msg.id_, "܂𓍼 ⁝ تم تعطيل مغادرة البوت")
                    return false
                end
                if text == (database:get(bot_id .. "LARViN:Name:Bot") or "لارفين") then
                    if AddChannel(msg.sender_user_id_) == false then
                        local textchuser = database:get(bot_id .. 'text:ch:user')
                        if textchuser then
                            send(msg.chat_id_, msg.id_, '[' .. textchuser .. ']')
                        else
                            send(msg.chat_id_, msg.id_,
                                '܂𓍼 : *عذراً* ، اشترك في قناة البوت اولاً ❕ .\n܂𓍼 : *قناة البوت* : [' ..
                                    database:get(bot_id .. 'add:ch:username') .. '] 💕❕.')
                        end
                        return false
                    end
  
                if text == "بوت" then
                    Namebot = (database:get(bot_id .. "LARViN:Name:Bot") or "لارفين")
                    send(msg.chat_id_, msg.id_, "اسمي القميل [" .. Namebot .. "] ")
                end
                if text == "تغير اسم البوت" or text == "تغيير اسم البوت" then
                    if DevLARViN(msg) then
                        database:setex(bot_id .. "LARViN:Set:Name:Bot" .. msg.sender_user_id_, 300, true)
                        send(msg.chat_id_, msg.id_, "܂𓍼 ⁝  ارسل لي الاسم الان ")
                    end
                    return false
                end


                if text == "اذاعه خاص" and msg.reply_to_message_id_ == 0 and DevBot(msg) then
                    if database:get(bot_id .. "LARViN:Status:Bc") and not DevLARViN(msg) then
                        send(msg.chat_id_, msg.id_,
                            "܂𓍼 ⁝ الاذاعه معطله من قبل المطور الاساسي")
                        return false
                    end
                    database:setex(bot_id .. "LARViN:LARViN:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600,
                        true)
                    send(msg.chat_id_, msg.id_,
                        "܂𓍼 ⁝ ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n܂𓍼 ⁝ للخروج ارسل الغاء ")
                    return false
                end
                if text == "اذاعه" and msg.reply_to_message_id_ == 0 and DevBot(msg) then
                    if database:get(bot_id .. "LARViN:Status:Bc") and not DevLARViN(msg) then
                        send(msg.chat_id_, msg.id_,
                            "܂𓍼 ⁝ الاذاعه معطله من قبل المطور الاساسي")
                        return false
                    end
                    database:setex(bot_id .. "LARViN:LARViN:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_,
                        600, true)
                    send(msg.chat_id_, msg.id_,
                        "܂𓍼 ⁝ ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n܂𓍼 ⁝ للخروج ارسل الغاء ")
                    return false
                end
                if text == "اذاعه بالتثبيت" and msg.reply_to_message_id_ == 0 and DevBot(msg) then
                    if database:get(bot_id .. "LARViN:Status:Bc") and not DevLARViN(msg) then
                        send(msg.chat_id_, msg.id_,
                            "܂𓍼 ⁝ الاذاعه معطله من قبل المطور الاساسي")
                        return false
                    end
                    database:setex(bot_id .. "LARViN:LARViN:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_,
                        600, true)
                    send(msg.chat_id_, msg.id_,
                        "܂𓍼 ⁝ ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n܂𓍼 ⁝ للخروج ارسل الغاء ")
                    return false
                end
                if text == "اذاعه بالتوجيه" and msg.reply_to_message_id_ == 0 and DevBot(msg) then
                    if database:get(bot_id .. "LARViN:Status:Bc") and not DevLARViN(msg) then
                        send(msg.chat_id_, msg.id_,
                            "܂𓍼 ⁝ الاذاعه معطله من قبل المطور الاساسي")
                        return false
                    end
                    database:setex(bot_id .. "LARViN:LARViN:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_,
                        600, true)
                    send(msg.chat_id_, msg.id_, "܂𓍼 ⁝ ارسل لي التوجيه الان")
                    return false
                end
                if text == "اذاعه بالتوجيه خاص" and msg.reply_to_message_id_ == 0 and DevBot(msg) then
                    if database:get(bot_id .. "LARViN:Status:Bc") and not DevLARViN(msg) then
                        send(msg.chat_id_, msg.id_,
                            "܂𓍼 ⁝ الاذاعه معطله من قبل المطور الاساسي")
                        return false
                    end
                    database:setex(bot_id .. "LARViN:LARViN:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600,
                        true)
                    send(msg.chat_id_, msg.id_, "܂𓍼 ⁝ ارسل لي التوجيه الان")
                    return false
                end

                if text == "تفعيل الاذاعه" and DevLARViN(msg) then
                    database:del(bot_id .. "LARViN:Status:Bc")
                    send(msg.chat_id_, msg.id_, "\n܂𓍼 ⁝ تم تفعيل الاذاعه ")
                    return false
                end
                if text == "تعطيل الاذاعه" and DevLARViN(msg) then
                    database:set(bot_id .. "LARViN:Status:Bc", true)
                    send(msg.chat_id_, msg.id_, "\n܂𓍼 ⁝ تم تعطيل الاذاعه")
                    return false
                end


                if text and text:match('^تنظيف (%d+)$') and Addictive(msg) then
                    local Number = tonumber(text:match('^تنظيف (%d+)$'))
                    if Number > 1000 then
                        send(msg.chat_id_, msg.id_,
                            '܂𓍼 ⁝ لا تستطيع تنضيف اكثر من *~ 1000* رساله')
                        return false
                    end
                    local Message = msg.id_
                    for i = 1, tonumber(Number) do
                        DeleteMessage(msg.chat_id_, {
                            [0] = Message
                        })
                        Message = Message - 1048576
                    end
                    send(msg.chat_id_, msg.id_, '܂𓍼 ⁝ تم تنظيف *~ ' .. Number .. '* رساله .')
                end


                if text == ("مسح") and Addictive(msg) and tonumber(msg.reply_to_message_id_) > 0 then
                    DeleteMessage(msg.chat_id_, {
                        [0] = tonumber(msg.reply_to_message_id_),
                        msg.id_
                    })
                end

                if text == "تنظيف المشتركين" and DevLARViN(msg) then
                    local pv = database:smembers(bot_id .. 'LARViN:UsersBot')
                    local sendok = 0
                    for i = 1, #pv do
                        tdcli_function({
                            ID = 'GetChat',
                            chat_id_ = pv[i]
                        }, function(arg, dataq)
                            tdcli_function({
                                ID = "SendChatAction",
                                chat_id_ = pv[i],
                                action_ = {
                                    ID = "SendMessageTypingAction",
                                    progress_ = 100
                                }
                            }, function(arg, data)
                                if data.ID and data.ID == "Ok" then
                                    print('\27[30;33m»» THE USER IS SAVE ME ↓\n»» ' .. pv[i] .. '\n\27[1;37m')
                                else
                                    print('\27[30;31m»» THE USER IS BLOCK ME ↓\n»» ' .. pv[i] .. '\n\27[1;37m')
                                    database:srem(bot_id .. 'LARViN:UsersBot', pv[i])
                                    sendok = sendok + 1
                                end
                                if #pv == i then
                                    if sendok == 0 then
                                        send(msg.chat_id_, msg.id_,
                                            '܂𓍼 ⁝ لا يوجد مشتركين وهميين')
                                    else
                                        local ok = #pv - sendok
                                        send(msg.chat_id_, msg.id_,
                                            '*܂𓍼 ⁝ عدد المشتركين الان ~ ' .. #pv ..
                                                '\n܂𓍼 ⁝ تم العثور على ~ ' .. sendok ..
                                                ' مشترك قام بحظر البوت\n܂𓍼 ⁝ اصبح عدد المشتركين الان ~ ' ..
                                                ok .. ' مشترك *')
                                    end
                                end
                            end, nil)
                        end, nil)
                    end
                    return false
                end
                if text == "تنظيف الكروبات" and DevLARViN(msg) then
                    local group = database:smembers(bot_id .. 'LARViN:Chek:Groups')
                    local w = 0
                    local q = 0
                    for i = 1, #group do
                        tdcli_function({
                            ID = 'GetChat',
                            chat_id_ = group[i]
                        }, function(arg, data)
                            if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and
                                data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
                                print('\27[30;34m»» THE BOT IS NOT ADMIN ↓\n»» ' .. group[i] .. '\n\27[1;37m')
                                database:srem(bot_id .. 'LARViN:Chek:Groups', group[i])
                                w = w + 1
                            end
                            if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and
                                data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
                                database:srem(bot_id .. 'LARViN:Chek:Groups', group[i])
                                q = q + 1
                                print('\27[30;35m»» THE BOT IS LEFT GROUP ↓\n»» ' .. group[i] .. '\n\27[1;37m')
                            end
                            if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and
                                data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
                                database:srem(bot_id .. 'LARViN:Chek:Groups', group[i])
                                q = q + 1
                                print('\27[30;36m»» THE BOT IS KICKED GROUP ↓\n»» ' .. group[i] .. '\n\27[1;37m')
                            end
                            if data and data.code_ and data.code_ == 400 then
                                database:srem(bot_id .. 'LARViN:Chek:Groups', group[i])
                                w = w + 1
                            end
                            if #group == i then
                                if (w + q) == 0 then
                                    send(msg.chat_id_, msg.id_, '܂𓍼 ⁝ لا توجد مجموعات وهميه ')
                                else
                                    local taha = (w + q)
                                    local sendok = #group - taha
                                    if q == 0 then
                                        taha = ''
                                    else
                                        taha = '\n🚯⁝  تم ازالة ~ ' .. q .. ' مجموعات من البوت'
                                    end
                                    if w == 0 then
                                        storm = ''
                                    else
                                        storm = '\n🚯⁝  تم ازالة ~' .. w ..
                                                    ' مجموعه لان البوت عضو'
                                    end
                                    send(msg.chat_id_, msg.id_,
                                        '*܂𓍼 ⁝  عدد المجموعات الان ~ ' .. #group ..
                                            ' مجموعه ' .. storm .. '' .. taha ..
                                            '\n܂𓍼 ⁝ اصبح عدد المجموعات الان ~ ' .. sendok ..
                                            ' مجموعات*\n')
                                end
                            end
                        end, nil)
                    end
                    return false
                end
                if text == ("تحديث السورس") and DevLARViN(msg) then
                    send(msg.chat_id_, msg.id_, '܂𓍼 ⁝ تم التحديث')
                    os.execute('rm -rf LARViN.lua')
                    os.execute('rm -rf start.lua')
                    os.execute('wget https://raw.githubusercontent.com/LARViNTeam/LARViN/master/LARViN.lua')
                    os.execute('wget https://raw.githubusercontent.com/LARViNTeam/LARViN/master/start.lua')
                    dofile('LARViN.lua')
                    return false
                end

                if text == 'تفعيل البوت الخدمي' and DevLARViN(msg) then
                    database:del(bot_id .. 'LARViN:Free:Add:Bots')
                    send(msg.chat_id_, msg.id_, '܂𓍼 ⁝ تم تفعيل البوت الخدمي ')
                end
                if text == 'تعطيل البوت الخدمي' and DevLARViN(msg) then
                    database:set(bot_id .. 'LARViN:Free:Add:Bots', true)
                    send(msg.chat_id_, msg.id_, '܂𓍼 ⁝ تم تعطيل البوت الخدمي')
                end
                if text and text:match("^تعين عدد الاعضاء (%d+)$") and DevLARViN(msg) then
                    local Num = text:match("تعين عدد الاعضاء (%d+)$")
                    database:set(bot_id .. 'LARViN:Num:Add:Bot', Num)
                    send(msg.chat_id_, msg.id_, '܂𓍼 ⁝  تم وضع عدد الاعضاء *~' .. Num .. '* عضو')
                end
                if text == 'الاحصائيات' and DevBot(msg) then
                    local Groups = database:scard(bot_id .. 'LARViN:Chek:Groups')
                    local Users = database:scard(bot_id .. 'LARViN:UsersBot')
                    send(msg.chat_id_, msg.id_,
                        '܂𓍼 ⁝ احصائيات البوت \n\n܂𓍼 ⁝ عدد المجموعات *~ ' .. Groups ..
                            '\n܂𓍼 ⁝ عدد المشتركين ~ ' .. Users .. '*')
                end
                if text == 'جلب نسخه احتياطيه' and DevLARViN(msg) then
                    local list = database:smembers(bot_id .. 'LARViN:Chek:Groups')
                    local t = '{"BOT_ID": ' .. bot_id .. ',"GP_BOT":{'
                    for k, v in pairs(list) do
                        NAME = 'LARViN Chat'
                        ASAS = database:smembers(bot_id .. "LARViN:Basic:Constructor" .. v)
                        MNSH = database:smembers(bot_id .. "LARViN:Constructor" .. v)
                        MDER = database:smembers(bot_id .. "LARViN:Manager" .. v)
                        MOD = database:smembers(bot_id .. "LARViN:Mod:User" .. v)
                        link = database:get(bot_id .. "LARViN:Link_Group" .. v) or ''
                        if k == 1 then
                            t = t .. '"' .. v .. '":{"LARViN":"' .. NAME .. '",'
                        else
                            t = t .. ',"' .. v .. '":{"LARViN":"' .. NAME .. '",'
                        end
                        if #ASAS ~= 0 then
                            t = t .. '"ASAS":['
                            for k, v in pairs(ASAS) do
                                if k == 1 then
                                    t = t .. '"' .. v .. '"'
                                else
                                    t = t .. ',"' .. v .. '"'
                                end
                            end
                            t = t .. '],'
                        end
                        if #MOD ~= 0 then
                            t = t .. '"MOD":['
                            for k, v in pairs(MOD) do
                                if k == 1 then
                                    t = t .. '"' .. v .. '"'
                                else
                                    t = t .. ',"' .. v .. '"'
                                end
                            end
                            t = t .. '],'
                        end
                        if #MDER ~= 0 then
                            t = t .. '"MDER":['
                            for k, v in pairs(MDER) do
                                if k == 1 then
                                    t = t .. '"' .. v .. '"'
                                else
                                    t = t .. ',"' .. v .. '"'
                                end
                            end
                            t = t .. '],'
                        end
                        if #MNSH ~= 0 then
                            t = t .. '"MNSH":['
                            for k, v in pairs(MNSH) do
                                if k == 1 then
                                    t = t .. '"' .. v .. '"'
                                else
                                    t = t .. ',"' .. v .. '"'
                                end
                            end
                            t = t .. '],'
                        end
                        t = t .. '"linkgroup":"' .. link .. '"}' or ''
                    end
                    t = t .. '}}'
                    local File = io.open('./File_Libs/' .. bot_id .. '.json', "w")
                    File:write(t)
                    File:close()
                    sendDocument(msg.chat_id_, msg.id_, './File_Libs/' .. bot_id .. '.json',
                        '܂𓍼 ⁝  عدد مجموعات التي في البوت { ' .. #list .. '}')
                end
                if text == 'المطور' or text == 'مطور' or text == 'المطورين' then
                    local Text_Dev = database:get(bot_id .. 'LARViN:Text_Dev')
                    if Text_Dev then
                        send(msg.chat_id_, msg.id_, Text_Dev)
                    else
                        tdcli_function({
                            ID = "GetUser",
                            user_id_ = Id_Sudo
                        }, function(arg, result)
                            local Name = '[' .. result.first_name_ .. '](tg://user?id=' .. result.id_ .. ')'
                            sendText(msg.chat_id_, Name, msg.id_ / 2097152 / 0.5, 'md')
                        end, nil)
                    end
                end
                if text == 'الملفات' and DevLARViN(msg) then
                    t = '܂𓍼 ⁝ جميع الملفات : \n ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n'
                    i = 0
                    for v in io.popen('ls LARViN_Files'):lines() do
                        if v:match(".lua$") then
                            i = i + 1
                            t = t .. i .. '*~ ' .. v .. '*\n'
                        end
                    end
                    send(msg.chat_id_, msg.id_, t)
                end
                if text == "متجر الملفات" or text == 'المتجر' then
                    if DevLARViN(msg) then
                        local Get_Files, res = https.request(
                                                   "https://raw.githubusercontent.com/LARViNTeam/files_LARViN/master/getfile.json")
                        if res == 200 then
                            local Get_info, res = pcall(JSON.decode, Get_Files);
                            vardump(res.plugins_)
                            if Get_info then
                                local TextS =
                                    "\n📂⁝ اهلا بك في متجر ملفات لارفين\n܂𓍼 ⁝ يوجد في المتجر ملف الردود\n⚙⁝ يتم ادراج الملفات في التحديثات القادمه \nꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ\n"
                                local TextE =
                                    "\nꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ\n܂𓍼 ⁝ تدل علامة (✔) الملف مفعل\n" ..
                                        "܂𓍼 ⁝ تدل علامة (܂𓍼 ) الملف معطل\n"
                                local NumFile = 0
                                for name, Info in pairs(res.plugins_) do
                                    local Check_File_is_Found = io.open("LARViN_Files/" .. name, "r")
                                    if Check_File_is_Found then
                                        io.close(Check_File_is_Found)
                                        CeckFile = "(✔)"
                                    else
                                        CeckFile = "(܂𓍼 )"
                                    end
                                    NumFile = NumFile + 1
                                    TextS = TextS .. '*' .. NumFile .. "◃* {`" .. name .. '`} » ' .. CeckFile ..
                                                '\n[-  About to the file](' .. Info .. ')\n'
                                end
                                send(msg.chat_id_, msg.id_, TextS .. TextE)
                            end
                        else
                            send(msg.chat_id_, msg.id_, "܂𓍼 ⁝  لا يوجد اتصال من ال api \n")
                        end
                        return false
                    end
                end

                if text and text:match("^(تعطيل ملف) (.*)(.lua)$") and DevLARViN(msg) then
                    local name_t = {string.match(text, "^(تعطيل ملف) (.*)(.lua)$")}
                    local file = name_t[2] .. '.lua'
                    local file_bot = io.open("LARViN_Files/" .. file, "r")
                    if file_bot then
                        io.close(file_bot)
                        t = "*🗂⁝  الملف » {" .. file ..
                                "}\n܂𓍼 ⁝  تم تعطيله وحذفه بنجاح \n✓*"
                    else
                        t = "*܂𓍼 ⁝  بالتاكيد تم تعطيل وحذف ملف » {" .. file .. "} \n✓*"
                    end
                    local json_file, res = https.request(
                                               "https://raw.githubusercontent.com/LARViNTeam/files_LARViN/master/files_LARViN/" ..
                                                   file)
                    if res == 200 then
                        os.execute("rm -fr LARViN_Files/" .. file)
                        send(msg.chat_id_, msg.id_, t)
                        dofile('LARViN.lua')
                    else
                        send(msg.chat_id_, msg.id_,
                            "*܂𓍼 ⁝  عذرا لا يوجد هاكذا ملف في المتجر *\n")
                    end
                    return false
                end
                if text and text:match("^(تفعيل ملف) (.*)(.lua)$") and DevLARViN(msg) then
                    local name_t = {string.match(text, "^(تفعيل ملف) (.*)(.lua)$")}
                    local file = name_t[2] .. '.lua'
                    local file_bot = io.open("LARViN_Files/" .. file, "r")
                    if file_bot then
                        io.close(file_bot)
                        t = "*܂𓍼 ⁝  بالتاكيد تم تنزيل وتفعيل ملف » {" .. file ..
                                "} \n✓*"
                    else
                        t = "*🗂⁝  الملف » {" .. file ..
                                "}\n܂𓍼 ⁝  تم تنزيله وتفعيله بنجاح \n܂𓍼 *"
                    end
                    local json_file, res = https.request(
                                               "https://raw.githubusercontent.com/LARViNTeam/files_LARViN/master/files_LARViN/" ..
                                                   file)
                    if res == 200 then
                        local chek = io.open("LARViN_Files/" .. file, 'w+')
                        chek:write(json_file)
                        chek:close()
                        send(msg.chat_id_, msg.id_, t)
                        dofile('LARViN.lua')
                    else
                        send(msg.chat_id_, msg.id_,
                            "*܂𓍼 ⁝  عذرا لا يوجد هاكذا ملف في المتجر *\n")
                    end
                    return false
                end
                if text == "مسح جميع الملفات" and DevLARViN(msg) then
                    os.execute("rm -fr LARViN_Files/*")
                    send(msg.chat_id_, msg.id_, "܂𓍼 ⁝ تم حذف جميع الملفات")
                    return false
                end
                if text == 'نقل الاحصائيات' and DevLARViN(msg) then
                    local Users = database:smembers('LARViN:' .. bot_id .. "userss")
                    local Groups = database:smembers('LARViN:' .. bot_id .. 'groups')
                    for i = 1, #Groups do
                        database:sadd(bot_id .. 'LARViN:Chek:Groups', Groups[i])
                    end
                    for i = 1, #Users do
                        database:sadd(bot_id .. 'LARViN:UsersBot', Users[i])
                    end
                    send(msg.chat_id_, msg.id_,
                        '܂𓍼 ⁝ تم نقل : ' .. #Groups .. ' كروب\n܂𓍼 ⁝ تم نقل : ' .. #Users ..
                            ' مشترك \n܂𓍼 ⁝ من التحديث القديم الى التحديث الجديد')
                end
                if text == 'حذف كليشه المطور' and DevLARViN(msg) then
                    database:del(bot_id .. 'LARViN:Text_Dev')
                    send(msg.chat_id_, msg.id_, '܂𓍼 ⁝  تم حذف كليشه المطور')
                end
                if text == 'وضع كليشه المطور' and DevLARViN(msg) then
                    database:set(bot_id .. 'LARViN:Set:Text_Dev' .. msg.chat_id_, true)
                    send(msg.chat_id_, msg.id_, '܂𓍼 ⁝  ارسل الكليشه الان')
                    return false
                end
                if text and database:get(bot_id .. 'LARViN:Set:Text_Dev' .. msg.chat_id_) then
                    if text == 'الغاء' then
                        database:del(bot_id .. 'LARViN:Set:Text_Dev' .. msg.chat_id_)
                        send(msg.chat_id_, msg.id_, '܂𓍼 ⁝ تم الغاء حفظ كليشة المطور')
                        return false
                    end
                    database:set(bot_id .. 'LARViN:Text_Dev', text)
                    database:del(bot_id .. 'LARViN:Set:Text_Dev' .. msg.chat_id_)
                    send(msg.chat_id_, msg.id_, '܂𓍼 ⁝ تم حفظ كليشة المطور')
                    return false
                end
                if text == 'رفع النسخه الاحتياطيه' and DevLARViN(msg) then
                    if tonumber(msg.reply_to_message_id_) > 0 then
                        function by_reply(extra, result, success)
                            if result.content_.document_ then
                                local ID_FILE = result.content_.document_.document_.persistent_id_
                                local File_Name = result.content_.document_.file_name_
                                add_file(msg, msg.chat_id_, ID_FILE, File_Name)
                            end
                        end
                        tdcli_function({
                            ID = "GetMessage",
                            chat_id_ = msg.chat_id_,
                            message_id_ = tonumber(msg.reply_to_message_id_)
                        }, by_reply, nil)
                    end
                end
                if text == "تحديث" and DevLARViN(msg) then
                    dofile("LARViN.lua")
                    send(msg.chat_id_, msg.id_, "܂𓍼 ⁝ تم التحديث")
                end
  
                if text and text:match("^(.*)$") then
                    if database:get(bot_id .. 'help' .. msg.sender_user_id_) == 'true' then
                        send(msg.chat_id_, msg.id_, '𓍼 : تم حفظ الكليشه بنجاح')
                        database:del(bot_id .. 'help' .. msg.sender_user_id_)
                        database:set(bot_id .. 'help_text', text)
                        return false
                    end
                end
                if text and text:match("^(.*)$") then
                    if database:get(bot_id .. 'help1' .. msg.sender_user_id_) == 'true' then
                        send(msg.chat_id_, msg.id_, '𓍼 : تم حفظ الكليشه بنجاح')
                        database:del(bot_id .. 'help1' .. msg.sender_user_id_)
                        database:set(bot_id .. 'help1_text', text)
                        return false
                    end
                end
                if text and text:match("^(.*)$") then
                    if database:get(bot_id .. 'help2' .. msg.sender_user_id_) == 'true' then
                        send(msg.chat_id_, msg.id_, '𓍼 : تم حفظ الكليشه بنجاح')
                        database:del(bot_id .. 'help2' .. msg.sender_user_id_)
                        database:set(bot_id .. 'help2_text', text)
                        return false
                    end
                end

                if text and text:match("^(.*)$") then
                    if database:get(bot_id .. 'help3' .. msg.sender_user_id_) == 'true' then
                        send(msg.chat_id_, msg.id_, '𓍼 : تم حفظ الكليشه بنجاح')
                        database:del(bot_id .. 'help3' .. msg.sender_user_id_)
                        database:set(bot_id .. 'help3_text', text)
                        return false
                    end
                end
                if text and text:match("^(.*)$") then
                    if database:get(bot_id .. 'help4' .. msg.sender_user_id_) == 'true' then
                        send(msg.chat_id_, msg.id_, '𓍼 : تم حفظ الكليشه بنجاح')
                        database:del(bot_id .. 'help4' .. msg.sender_user_id_)
                        database:set(bot_id .. 'help4_text', text)
                        return false
                    end
                end
                if text and text:match("^(.*)$") then
                    if database:get(bot_id .. 'help5' .. msg.sender_user_id_) == 'true' then
                        send(msg.chat_id_, msg.id_, '𓍼 : تم حفظ الكليشه بنجاح')
                        database:del(bot_id .. 'help5' .. msg.sender_user_id_)
                        database:set(bot_id .. 'help5_text', text)
                        return false
                    end
                end
                if text and text:match("^(.*)$") then
                    if database:get(bot_id .. 'help6' .. msg.sender_user_id_) == 'true' then
                        send(msg.chat_id_, msg.id_, '𓍼 : تم حفظ الكليشه بنجاح')
                        database:del(bot_id .. 'help6' .. msg.sender_user_id_)
                        database:set(bot_id .. 'help6_text', text)
                        return false
                    end
                end
                if text and text:match("^(.*)$") then
                    if database:get(bot_id .. 'help7' .. msg.sender_user_id_) == 'true' then
                        send(msg.chat_id_, msg.id_, '𓍼 : تم حفظ الكليشه بنجاح')
                        database:del(bot_id .. 'help7' .. msg.sender_user_id_)
                        database:set(bot_id .. 'help7_text', text)
                        return false
                    end
                end
                if text and text:match("^(.*)$") then
                    if database:get(bot_id .. 'help8' .. msg.sender_user_id_) == 'true' then
                        send(msg.chat_id_, msg.id_, '𓍼 : تم حفظ الكليشه بنجاح')
                        database:del(bot_id .. 'help8' .. msg.sender_user_id_)
                        database:set(bot_id .. 'help8_text', text)
                        return false
                    end
                end
                if text and text:match("^(.*)$") then
                    if database:get(bot_id .. 'help9' .. msg.sender_user_id_) == 'true' then
                        send(msg.chat_id_, msg.id_, '𓍼 : تم حفظ الكليشه بنجاح')
                        database:del(bot_id .. 'help9' .. msg.sender_user_id_)
                        database:set(bot_id .. 'help9_text', text)
                        return false
                    end
                end

                if text == 'استعاده الاوامر' and DevLARViN(msg) then
                    database:del(bot_id .. 'help_text')
                    database:del(bot_id .. 'help1_text')
                    database:del(bot_id .. 'help2_text')
                    database:del(bot_id .. 'help3_text')
                    database:del(bot_id .. 'help4_text')
                    database:del(bot_id .. 'help5_text')
                    database:del(bot_id .. 'help6_text')
                    database:del(bot_id .. 'help7_text')
                    database:del(bot_id .. 'help8_text')
                    database:del(bot_id .. 'help9_text')
                    send(msg.chat_id_, msg.id_, '𓍼 : تم استعادة الاوامر القديمه')
                end
                if text == 'تغير امر الاوامر' and DevLARViN(msg) then
                    send(msg.chat_id_, msg.id_, '܁𓍼 :ارسل كليشة الامر الان ◃')
                    database:set(bot_id .. 'help' .. msg.sender_user_id_, 'true')
                    return false
                end
                if text == 'تغير امر م1' and DevLARViN(msg) then
                    send(msg.chat_id_, msg.id_, '𓍼 : الان يمكنك ارسال الكليشه م1')
                    database:set(bot_id .. 'help1' .. msg.sender_user_id_, 'true')
                    return false
                end

                if text == 'تغير امر م2' and DevLARViN(msg) then
                    send(msg.chat_id_, msg.id_, '𓍼 : الان يمكنك ارسال الكليشه م2')
                    database:set(bot_id .. 'help2' .. msg.sender_user_id_, 'true')
                    return false
                end

                if text == 'تغير امر م3' and DevLARViN(msg) then
                    send(msg.chat_id_, msg.id_, '𓍼 : الان يمكنك ارسال الكليشه م3')
                    database:set(bot_id .. 'help3' .. msg.sender_user_id_, 'true')
                    return false
                end

                if text == 'تغير امر م4' and DevLARViN(msg) then
                    send(msg.chat_id_, msg.id_, '𓍼 : الان يمكنك ارسال الكليشه م4')
                    database:set(bot_id .. 'help4' .. msg.sender_user_id_, 'true')
                    return false
                end

                if text == 'تغير امر م5' and DevLARViN(msg) then
                    send(msg.chat_id_, msg.id_, '𓍼 : الان يمكنك ارسال الكليشه م5')
                    database:set(bot_id .. 'help5' .. msg.sender_user_id_, 'true')
                    return false
                end

                if text == 'تغير امر م6' and DevLARViN(msg) then
                    send(msg.chat_id_, msg.id_, '𓍼 : الان يمكنك ارسال الكليشه م6')
                    database:set(bot_id .. 'help6' .. msg.sender_user_id_, 'true')
                    return false
                end

                if text == 'تغير امر م7' and DevLARViN(msg) then
                    send(msg.chat_id_, msg.id_, '𓍼 : الان يمكنك ارسال الكليشه م7')
                    database:set(bot_id .. 'help7' .. msg.sender_user_id_, 'true')
                    return false
                end

                if text == 'تغير امر م8' and DevLARViN(msg) then
                    send(msg.chat_id_, msg.id_, '𓍼 : الان يمكنك ارسال الكليشه م8')
                    database:set(bot_id .. 'help8' .. msg.sender_user_id_, 'true')
                    return false
                end

                if text == 'الاوامر' and Addictive(msg) then
                    if AddChannel(msg.sender_user_id_) == false then
                        local textchuser = database:get(bot_id .. 'text:ch:user')
                        if textchuser then
                            send(msg.chat_id_, msg.id_, '[' .. textchuser .. ']')
                        else
                            send(msg.chat_id_, msg.id_,
                                '܂𓍼 : *عذراً* ، اشترك في قناة البوت اولاً ❕ .\n܂𓍼 : *قناة البوت* : [' ..
                                    database:get(bot_id .. 'add:ch:username') .. '] 💕❕.')
                        end
                        return false
                    end
                    local help_text = database:get(bot_id .. 'help_text')
                    Text = [[
  ܂𓍼 ⁝ اوامر البوت كالاتي 🔻.
  ܀⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤܀
  ┐ م1 ◃ لعرض قائمة الحماية 
  ┤ م2 ◃ لعرض قائمة التفعيل+التعطيل
  ┤ م3 ◃ لعرض أوامر الوضع ◝اضف◟
  ┤ م4 ◃ لعرض أوامر الحذف 
  ┤ م5 ◃ لعرض أوامر الرفع + التنزيل
  ┤ م6 ◃ لعرض أوامر المجموعة 
  ┤ م7 ◃ لعرض أوامر المطور  
  ┘ م8 ◃ لعرض أوامر المطور ألاساسي 
  ܀⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤܀
  ܂𓍼 ⁝ [قناة السورس](t.me/i600ik) 🔺.
]]
                    send(msg.chat_id_, msg.id_, help_text or Text)
                    return false
                end
         

                if text == 'م7' and DevBot(msg) then
                    local help_text = database:get(bot_id .. 'help7_text')
                    send(msg.chat_id_, msg.id_, help_text or
                        "܂𓍼 ⁝ اوامر مطور البوت .\n܀⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤܀\n┐ تفعيل ܊ تعطيل\n┤ المجموعات ܊ المشتركين\n┤ رفع ܊ تنزيل ٭ منشى اساسي ٭\n┤ مسح المنشئين الاساسين\n┤ مسح المنشئين\n┤ اسم البوت + غادر\n┤ ردود المطور\n┘ اذاعه ܊ اذا كان المطور الاساسي مفعلها\n܀⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤܀\n܂𓍼 ⁝  [قناة السورس](t.me/i600ik) 🔺.")
                    return false
                end


        if text == 'تفعيل' and DevBot(msg) then
            if msg.can_be_deleted_ == false then
                send(msg.chat_id_, msg.id_, '܂𓍼 ⁝ البوت ليس ادمن يرجى ترقيتي !')
                return false
            end
            tdcli_function({
                ID = "GetChannelFull",
                channel_id_ = msg.chat_id_:gsub("-100", "")
            }, function(arg, data)
                if tonumber(data.member_count_) < tonumber(database:get(bot_id .. 'LARViN:Num:Add:Bot') or 0) and
                    not DevLARViN(msg) then
                    send(msg.chat_id_, msg.id_,
                        '܂𓍼 ⁝ عدد اعضاء المجموعه اقل من *~ {' ..
                            (database:get(bot_id .. 'LARViN:Num:Add:Bot') or 0) .. '* عضو')
                    return false
                end
                tdcli_function({
                    ID = "GetUser",
                    user_id_ = msg.sender_user_id_
                }, function(extra, result, success)
                    tdcli_function({
                        ID = "GetChat",
                        chat_id_ = msg.chat_id_
                    }, function(arg, chat)
                        if database:sismember(bot_id .. 'LARViN:Chek:Groups', msg.chat_id_) then
                            send(msg.chat_id_, msg.id_, '܂𓍼 ⁝ المجموعه مفعله سابقا ')
                        else
                            Reply_Status(msg, result.id_, 'reply_Add',
                                '܂𓍼 ⁝ تم تفعيل المجموعه ~ ' .. chat.title_ .. '')
                            database:sadd(bot_id .. 'LARViN:Chek:Groups', msg.chat_id_)
                            local Name = '[' .. result.first_name_ .. '](tg://user?id=' .. result.id_ .. ')'
                            local NameChat = chat.title_
                            NameChat = NameChat:gsub('"', "")
                            NameChat = NameChat:gsub('"', "")
                            NameChat = NameChat:gsub("`", "")
                            NameChat = NameChat:gsub("*", "")
                            NameChat = NameChat:gsub("{", "")
                            NameChat = NameChat:gsub("}", "")
                            local IdChat = msg.chat_id_
                            local NumMember = data.member_count_
                            local linkgpp = json:decode(https.request(
                                                            'https://api.telegram.org/bot' .. token ..
                                                                '/exportChatInviteLink?chat_id=' .. msg.chat_id_))
                            if linkgpp.ok == true then
                                LinkGp = linkgpp.result
                            else
                                LinkGp = 'لا يوجد'
                            end
                            Text = '܂𓍼 ⁝ تم تفعيل مجموعه جديده\n' ..
                                       '\n܂𓍼 ⁝ بواسطة ~ ' .. Name .. '' ..
                                       '\n܂𓍼 ⁝ ايدي المجموعه ~ `' .. IdChat .. '`' ..
                                       '\n܂𓍼 ⁝ عدد اعضاء المجموعه *~ ' .. NumMember .. '*' ..
                                       '\n܂𓍼 ⁝ اسم المجموعه ~ [' .. NameChat .. ']' ..
                                       '\n܂𓍼 ⁝ الرابط ~ [' .. LinkGp .. ']'
                            if not DevLARViN(msg) then
                                sendText(Id_Sudo, Text, 0, 'md')
                            end
                        end
                    end, nil)
                end, nil)
            end, nil)
        end
        if text == 'تعطيل' and DevBot(msg) then
            if AddChannel(msg.sender_user_id_) == false then
                local textchuser = database:get(bot_id .. 'text:ch:user')
                if textchuser then
                    send(msg.chat_id_, msg.id_, '[' .. textchuser .. ']')
                else
                    send(msg.chat_id_, msg.id_,
                        '܂𓍼 ⁝  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܂𓍼 ⁝  اشترك هنا [' ..
                            database:get(bot_id .. 'add:ch:username') .. ']')
                end
                return false
            end
            tdcli_function({
                ID = "GetUser",
                user_id_ = msg.sender_user_id_
            }, function(extra, result, success)
                tdcli_function({
                    ID = "GetChat",
                    chat_id_ = msg.chat_id_
                }, function(arg, chat)
                    if not database:sismember(bot_id .. 'LARViN:Chek:Groups', msg.chat_id_) then
                        send(msg.chat_id_, msg.id_, '܂𓍼 ⁝ المجموعه معطله سابقا ')
                    else
                        Reply_Status(msg, result.id_, 'reply_Add',
                            '܂𓍼 ⁝ تم تعطيل المجموعه ~ ' .. chat.title_ .. '')
                        database:srem(bot_id .. 'LARViN:Chek:Groups', msg.chat_id_)
                        local Name = '[' .. result.first_name_ .. '](tg://user?id=' .. result.id_ .. ')'
                        local NameChat = chat.title_
                        NameChat = NameChat:gsub('"', "")
                        NameChat = NameChat:gsub('"', "")
                        NameChat = NameChat:gsub("`", "")
                        NameChat = NameChat:gsub("*", "")
                        NameChat = NameChat:gsub("{", "")
                        NameChat = NameChat:gsub("}", "")
                        local IdChat = msg.chat_id_
                        local AddPy = var
                        local linkgpp = json:decode(https.request(
                                                        'https://api.telegram.org/bot' .. token ..
                                                            '/exportChatInviteLink?chat_id=' .. msg.chat_id_))
                        if linkgpp.ok == true then
                            LinkGp = linkgpp.result
                        else
                            LinkGp = 'لا يوجد'
                        end
                        Text =
                            '܂𓍼 ⁝ تم تعطيل مجموعه جديده\n' .. '\n܂𓍼 ⁝ بواسطة ~ ' ..
                                Name .. '' .. '\n🔧⁝ ايدي المجموعه ~ `' .. IdChat .. '`' ..
                                '\n܂𓍼 ⁝ اسم المجموعه ~ [' .. NameChat .. ']' ..
                                '\n܂𓍼 ⁝ الرابط ~ [' .. LinkGp .. ']'
                        if not DevLARViN(msg) then
                            sendText(Id_Sudo, Text, 0, 'md')
                        end
                    end
                end, nil)
            end, nil)
        end
        if text == 'تفعيل' and not DevBot(msg) and not database:get(bot_id .. 'LARViN:Free:Add:Bots') then
            if AddChannel(msg.sender_user_id_) == false then
                local textchuser = database:get(bot_id .. 'text:ch:user')
                if textchuser then
                    send(msg.chat_id_, msg.id_, '[' .. textchuser .. ']')
                else
                    send(msg.chat_id_, msg.id_,
                        '܂𓍼 ⁝  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܂𓍼 ⁝  اشترك هنا [' ..
                            database:get(bot_id .. 'add:ch:username') .. ']')
                end
                return false
            end
            if msg.can_be_deleted_ == false then
                send(msg.chat_id_, msg.id_, '܂𓍼 ⁝ البوت ليس ادمن يرجى ترقيتي !')
                return false
            end
            tdcli_function({
                ID = "GetChannelFull",
                channel_id_ = msg.chat_id_:gsub("-100", "")
            }, function(arg, data)
                tdcli_function({
                    ID = "GetUser",
                    user_id_ = msg.sender_user_id_
                }, function(extra, result, success)
                    tdcli_function({
                        ID = "GetChat",
                        chat_id_ = msg.chat_id_
                    }, function(arg, chat)
                        tdcli_function({
                            ID = "GetChatMember",
                            chat_id_ = msg.chat_id_,
                            user_id_ = msg.sender_user_id_
                        }, function(arg, da)
                            if da and da.status_.ID == "ChatMemberStatusEditor" or da and da.status_.ID ==
                                "ChatMemberStatusCreator" then
                                if da and da.user_id_ == msg.sender_user_id_ then
                                    if da.status_.ID == "ChatMemberStatusCreator" then
                                        var = 'المنشئ'
                                    elseif da.status_.ID == "ChatMemberStatusEditor" then
                                        var = 'الادمن'
                                    else
                                        var = 'عضو'
                                    end
                                    if database:sismember(bot_id .. 'LARViN:Chek:Groups', msg.chat_id_) then
                                        send(msg.chat_id_, msg.id_, '܂𓍼 ⁝ المجموعه مفعله سابقا ')
                                    else
                                        if tonumber(data.member_count_) <
                                            tonumber(database:get(bot_id .. 'LARViN:Num:Add:Bot') or 0) and
                                            not DevLARViN(msg) then
                                            send(msg.chat_id_, msg.id_,
                                                '܂𓍼 ⁝ عدد اعضاء المجموعه اقل من *~ {' ..
                                                    (database:get(bot_id .. 'LARViN:Num:Add:Bot') or 0) .. '* عضو')
                                            return false
                                        end
                                        Reply_Status(msg, result.id_, 'reply_Add',
                                            '܂𓍼 ⁝ تم تفعيل المجموعه ~ ' .. chat.title_ .. '')
                                        database:sadd(bot_id .. 'LARViN:Chek:Groups', msg.chat_id_)
                                        database:sadd(bot_id .. 'LARViN:Basic:Constructor' .. msg.chat_id_,
                                            msg.sender_user_id_)
                                        local Name = '[' .. result.first_name_ .. '](tg://user?id=' .. result.id_ .. ')'
                                        local NumMember = data.member_count_
                                        local NameChat = chat.title_
                                        NameChat = NameChat:gsub('"', "")
                                        NameChat = NameChat:gsub('"', "")
                                        NameChat = NameChat:gsub("`", "")
                                        NameChat = NameChat:gsub("*", "")
                                        NameChat = NameChat:gsub("{", "")
                                        NameChat = NameChat:gsub("}", "")
                                        local IdChat = msg.chat_id_
                                        local AddPy = var
                                        local linkgpp = json:decode(
                                                            https.request(
                                                                'https://api.telegram.org/bot' .. token ..
                                                                    '/exportChatInviteLink?chat_id=' .. msg.chat_id_))
                                        if linkgpp.ok == true then
                                            LinkGp = linkgpp.result
                                        else
                                            LinkGp = 'لا يوجد'
                                        end
                                        Text = '܂𓍼 ⁝ تم تفعيل مجموعه جديده\n' ..
                                                   '\n܂𓍼 ⁝ بواسطة ~ ' .. Name .. '' ..
                                                   '\n܂𓍼 ⁝ موقعه في المجموعه ~ ' .. AddPy .. '' ..
                                                   '\n܂𓍼 ⁝ ايدي المجموعه ~ `' .. IdChat .. '`' ..
                                                   '\n܂𓍼 ⁝ عدد اعضاء المجموعه *~ ' .. NumMember ..
                                                   '*' .. '\n܂𓍼 ⁝ اسم المجموعه ~ [' .. NameChat .. ']' ..
                                                   '\n܂𓍼 ⁝ الرابط ~ [' .. LinkGp .. ']'
                                        if not DevLARViN(msg) then
                                            sendText(Id_Sudo, Text, 0, 'md')
                                        end
                                    end
                                end
                            end
                        end, nil)
                    end, nil)
                end, nil)
            end, nil)
        end

        if Chat_Type == 'UserBot' then
            if text == '/start' then
                if AddChannel(msg.sender_user_id_) == false then
                    local textchuser = database:get(bot_id .. 'text:ch:user')
                    if textchuser then
                        send(msg.chat_id_, msg.id_, '[' .. textchuser .. ']')
                    else
                        send(msg.chat_id_, msg.id_,
                            '👥┇ لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n 📌┇ اشترك هنا [' ..
                                database:get(bot_id .. 'add:ch:username') .. ']')
                    end
                    return false
                end
                if DevLARViN(msg) then
                    local Text = '📥┇مرحبا بك في اوامر المطور الجاهزه'
                    local keyboard = {{'الاحصائيات 📊'},
                                      {'تفعيل التواصل ⚡', 'تعطيل التواصل 🔰'},
                                      {'- تغير اسم البوت 〽️ .'},
                                      {'تنظيف الكروبات ℹ', 'تنظيف المشتركين ♠'},
                                      {'تفعيل البوت الخدمي 💠',
                                       'تعطيل البوت الخدمي 📛'},
                                      {'اذاعه خاص 📡', 'المطورين 🔱', 'اذاعه 📡'},
                                      {'اذاعه بالتوجيه 👥', 'اذاعه بالتوجيه خاص 👤'},
                                      {'تفعيل الاذاعه 🔔', 'تعطيل الاذاعه 🔕'},
                                      {'مسح قائمه العام 📮', 'مسح المطورين 🚸'},
                                      {'حذف كليشه ستارت 🃏', 'ضع كليشه ستارت 📧'},
                                      {'- تعطيل الاشتراك الاجباري 📄 .'},
                                      {'- تغير الاشتراك 🧾 .', 'حذف رساله الاشتراك ℹ .'},
                                      {'- تفعيل الاشتراك الاجباري 📄 .'},
                                      {'- الاشتراك الاجباري 📮 .'},
                                      {'- تعين قناة الاشتراك 📁 .',
                                       '- تغير رساله الاشتراك 🧾 .'},
                                      {'تحديث السورس 📥', 'تحديث ♻'},
                                      {'قائمه العام 🚷'}, {'جلب نسخه احتياطيه 📁'},
                                      {'الغاء ✖'}}
                    send_inline_key(msg.chat_id_, Text, keyboard)
                else
                    if not database:get(bot_id .. 'LARViN:Start:Time' .. msg.sender_user_id_) then
                        local start = database:get(bot_id .. "Start:Bot")
                        if start then
                            Test = start
                        else
                            Test =
                                '🔰┇مرحبا انا بوت حماية كروبات\n🔘┇وضيفتي حماية المجموعات من السبام والتفليش والخ...\n☑┇لتفعيل البوت اضفني الى مجموعاتك قم برفعي مشرف ثم ارسل تفعيل \n☑┇معرف المطور [' ..
                                    UserName .. ']'
                        end
                        send(msg.chat_id_, msg.id_, Test)
                    end
                end
                database:setex(bot_id .. 'LARViN:Start:Time' .. msg.sender_user_id_, 60, true)
                return false
            end
            if not DevLARViN(msg) and not database:sismember(bot_id .. 'BaN:In:User', msg.sender_user_id_) and
                not database:get(bot_id .. 'Texting:In:Bv') then
                send(msg.sender_user_id_, msg.id_, '📧┇تمت ارسال رسالتك الى ~ [' .. UserName .. ']')
                tdcli_function({
                    ID = "GetChat",
                    chat_id_ = Id_Sudo
                }, function(arg, chat)
                    tdcli_function({
                        ID = "GetChat",
                        chat_id_ = msg.sender_user_id_
                    }, function(arg, chat)
                        tdcli_function({
                            ID = "ForwardMessages",
                            chat_id_ = Id_Sudo,
                            from_chat_id_ = msg.sender_user_id_,
                            message_ids_ = {
                                [0] = msg.id_
                            },
                            disable_notification_ = 1,
                            from_background_ = 1
                        }, function(arg, data)
                            tdcli_function({
                                ID = "GetUser",
                                user_id_ = msg.sender_user_id_
                            }, function(arg, ta)
                                if data and data.messages_ and data.messages_[0] ~= false and data.ID ~= "Error" then
                                    if data and data.messages_ and data.messages_[0].content_.sticker_ then
                                        sendText(Id_Sudo,
                                            '👤┇تم ارسال الملصق من ~ [' ..
                                                string.sub(ta.first_name_, 0, 40) .. '](tg://user?id=' .. ta.id_ .. ')',
                                            0, 'md')
                                        return false
                                    end
                                end
                            end, nil);
                        end, nil);
                    end, nil);
                end, nil);
            end
            if DevLARViN(msg) and msg.reply_to_message_id_ ~= 0 then
                tdcli_function({
                    ID = "GetMessage",
                    chat_id_ = msg.chat_id_,
                    message_id_ = tonumber(msg.reply_to_message_id_)
                }, function(extra, result, success)
                    if result.forward_info_.sender_user_id_ then
                        id_user = result.forward_info_.sender_user_id_
                    end
                    tdcli_function({
                        ID = "GetUser",
                        user_id_ = id_user
                    }, function(arg, data)
                        if text == 'حظر' then
                            sendText(Id_Sudo,
                                '👤┇ لشخص » [' .. string.sub(data.first_name_, 0, 40) .. '](tg://user?id=' ..
                                    data.id_ .. ')' .. '\n💢┇ تم حظره من التواصل ',
                                msg.id_ / 2097152 / 0.5, 'md')
                            database:sadd(bot_id .. 'BaN:In:User', data.id_)
                            return false
                        end
                        if text == 'الغاء الحظر' then
                            sendText(Id_Sudo,
                                '👤┇الشخص » [' .. string.sub(data.first_name_, 0, 40) .. '](tg://user?id=' ..
                                    data.id_ .. ')' .. '\n💢┇ تم الغاء حظره من التواصل ',
                                msg.id_ / 2097152 / 0.5, 'md')
                            database:srem(bot_id .. 'BaN:In:User', data.id_)
                            return false
                        end
                        tdcli_function({
                            ID = 'GetChat',
                            chat_id_ = id_user
                        }, function(arg, dataq)
                            tdcli_function({
                                ID = "SendChatAction",
                                chat_id_ = id_user,
                                action_ = {
                                    ID = "SendMessageTypingAction",
                                    progress_ = 100
                                }
                            }, function(arg, ta)
                                if ta.code_ == 400 or ta.code_ == 5 then
                                    send(msg.chat_id_, msg.id_,
                                        '\n💢┇ فشل ارسال رسالتك لان العضو قام بحظر البوت')
                                    return false
                                end
                                if text then
                                    send(id_user, msg.id_, text)
                                    Text = '📨┇تمت ارسال الرساله اليه .. '
                                elseif msg.content_.ID == 'MessageSticker' then
                                    sendSticker(id_user, msg.id_, msg.content_.sticker_.sticker_.persistent_id_)
                                    Text = '📨┇تمت ارسال الملصق اليه .. '
                                elseif msg.content_.ID == 'MessagePhoto' then
                                    sendPhoto(id_user, msg.id_, msg.content_.photo_.sizes_[0].photo_.persistent_id_,
                                        (msg.content_.caption_ or ''))
                                    Text = '📨┇تمت ارسال الصوره اليه .. '
                                elseif msg.content_.ID == 'MessageAnimation' then
                                    sendDocument(id_user, msg.id_, msg.content_.animation_.animation_.persistent_id_)
                                    Text = '📨┇تمت ارسال المتحركه اليه .. '
                                elseif msg.content_.ID == 'MessageVoice' then
                                    sendVoice(id_user, msg.id_, msg.content_.voice_.voice_.persistent_id_)
                                    Text = '📨┇تمت ارسال البصمه اليه .. '
                                end
                                sendText(Id_Sudo,
                                    Text .. '\n' .. '👤┇ ~ [' .. string.sub(data.first_name_, 0, 40) ..
                                        '](tg://user?id=' .. data.id_ .. ')', 0, 'md')
                            end, nil);
                        end, nil);
                    end, nil);
                end, nil);
            end
            if DevLARViN(msg) then
                if text == 'تفعيل التواصل ⚡' then
                    database:del(bot_id .. 'Texting:In:Bv')
                    send(msg.chat_id_, msg.id_, '🔘┇ تم تفعيل التواصل ')
                end
                if text == 'تعطيل التواصل 🔰' then
                    database:set(bot_id .. 'Texting:In:Bv', true)
                    send(msg.chat_id_, msg.id_, '🔘┇ تم تعطيل التواصل ')
                end
                if text == 'الاحصائيات 📊' then
                    local Groups = database:scard(bot_id .. 'LARViN:Chek:Groups')
                    local Users = database:scard(bot_id .. 'LARViN:UsersBot')
                    send(msg.chat_id_, msg.id_,
                        '🔘┇احصائيات البوت \n\n👥┇عدد المجموعات *~ ' .. Groups ..
                            '\n👤┇عدد المشتركين ~ ' .. Users .. '*')
                end
                if text == "تنظيف المشتركين ♠" then
                    local pv = database:smembers(bot_id .. 'LARViN:UsersBot')
                    local sendok = 0
                    for i = 1, #pv do
                        tdcli_function({
                            ID = 'GetChat',
                            chat_id_ = pv[i]
                        }, function(arg, dataq)
                            tdcli_function({
                                ID = "SendChatAction",
                                chat_id_ = pv[i],
                                action_ = {
                                    ID = "SendMessageTypingAction",
                                    progress_ = 100
                                }
                            }, function(arg, data)
                                if data.ID and data.ID == "Ok" then
                                    print('\27[30;33m»» THE USER IS SAVE ME ↓\n»» ' .. pv[i] .. '\n\27[1;37m')
                                else
                                    print('\27[30;31m»» THE USER IS BLOCK ME ↓\n»» ' .. pv[i] .. '\n\27[1;37m')
                                    database:srem(bot_id .. 'LARViN:UsersBot', pv[i])
                                    sendok = sendok + 1
                                end
                                if #pv == i then
                                    if sendok == 0 then
                                        send(msg.chat_id_, msg.id_, '👤┇لا يوجد مشتركين وهميين')
                                    else
                                        local ok = #pv - sendok
                                        send(msg.chat_id_, msg.id_,
                                            '*👥┇عدد المشتركين الان ~ ' .. #pv ..
                                                '\n💢┇تم العثور على ~ ' .. sendok ..
                                                ' مشترك قام بحظر البوت\n☑┇اصبح عدد المشتركين الان ~ ' ..
                                                ok .. ' مشترك *')
                                    end
                                end
                            end, nil)
                        end, nil)
                    end
                    return false
                end
                if text == "تنظيف الكروبات ℹ" then
                    local group = database:smembers(bot_id .. 'LARViN:Chek:Groups')
                    local w = 0
                    local q = 0
                    for i = 1, #group do
                        tdcli_function({
                            ID = 'GetChat',
                            chat_id_ = group[i]
                        }, function(arg, data)
                            if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and
                                data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
                                print('\27[30;34m»» THE BOT IS NOT ADMIN ↓\n»» ' .. group[i] .. '\n\27[1;37m')
                                database:srem(bot_id .. 'LARViN:Chek:Groups', group[i])
                                w = w + 1
                            end
                            if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and
                                data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
                                database:srem(bot_id .. 'LARViN:Chek:Groups', group[i])
                                q = q + 1
                                print('\27[30;35m»» THE BOT IS LEFT GROUP ↓\n»» ' .. group[i] .. '\n\27[1;37m')
                            end
                            if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and
                                data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
                                database:srem(bot_id .. 'LARViN:Chek:Groups', group[i])
                                q = q + 1
                                print('\27[30;36m»» THE BOT IS KICKED GROUP ↓\n»» ' .. group[i] .. '\n\27[1;37m')
                            end
                            if data and data.code_ and data.code_ == 400 then
                                database:srem(bot_id .. 'LARViN:Chek:Groups', group[i])
                                w = w + 1
                            end
                            if #group == i then
                                if (w + q) == 0 then
                                    send(msg.chat_id_, msg.id_, '👥┇لا توجد مجموعات وهميه ')
                                else
                                    local taha = (w + q)
                                    local sendok = #group - taha
                                    if q == 0 then
                                        taha = ''
                                    else
                                        taha = '\n🚯┇ تم ازالة ~ ' .. q .. ' مجموعات من البوت'
                                    end
                                    if w == 0 then
                                        storm = ''
                                    else
                                        storm = '\n🚯┇ تم ازالة ~' .. w ..
                                                    ' مجموعه لان البوت عضو'
                                    end
                                    send(msg.chat_id_, msg.id_,
                                        '*👥┇ عدد المجموعات الان ~ ' .. #group .. ' مجموعه ' ..
                                            storm .. '' .. taha ..
                                            '\n🔘┇اصبح عدد المجموعات الان ~ ' .. sendok ..
                                            ' مجموعات*\n')
                                end
                            end
                        end, nil)
                    end
                    return false
                end
                if text == "- تغير اسم البوت 〽️ ." or text == "تغيير اسم البوت" then
                    if DevLARViN(msg) then
                        database:setex(bot_id .. "LARViN:Set:Name:Bot" .. msg.sender_user_id_, 300, true)
                        send(msg.chat_id_, msg.id_, "📫┇ ارسل لي الاسم الان ")
                    end
                    return false
                end

                if text == 'تفعيل البوت الخدمي 💠' then
                    database:del(bot_id .. 'LARViN:Free:Add:Bots')
                    send(msg.chat_id_, msg.id_, '\n📫┇تم تفعيل البوت الخدمي ')
                end
                if text == 'تعطيل البوت الخدمي 📛' then
                    database:set(bot_id .. 'LARViN:Free:Add:Bots', true)
                    send(msg.chat_id_, msg.id_, '\n📫┇تم تعطيل البوت الخدمي')
                end
                if text == "اذاعه خاص 📡" and msg.reply_to_message_id_ == 0 then
                    if database:get(bot_id .. "LARViN:Status:Bc") and not DevLARViN(msg) then
                        send(msg.chat_id_, msg.id_,
                            "📫┇الاذاعه معطله من قبل المطور الاساسي")
                        return false
                    end
                    database:setex(bot_id .. "LARViN:LARViN:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600,
                        true)
                    send(msg.chat_id_, msg.id_,
                        "🔘┇ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n📫┇للخروج ارسل الغاء ")
                    return false
                end
                if text == "اذاعه 📡" and msg.reply_to_message_id_ == 0 then
                    if database:get(bot_id .. "LARViN:Status:Bc") and not DevLARViN(msg) then
                        send(msg.chat_id_, msg.id_,
                            "📫┇الاذاعه معطله من قبل المطور الاساسي")
                        return false
                    end
                    database:setex(bot_id .. "LARViN:LARViN:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_,
                        600, true)
                    send(msg.chat_id_, msg.id_,
                        "🔘┇ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n📫┇للخروج ارسل الغاء ")
                    return false
                end
                if text == "اذاعه بالتوجيه 👥" and msg.reply_to_message_id_ == 0 then
                    if database:get(bot_id .. "LARViN:Status:Bc") and not DevLARViN(msg) then
                        send(msg.chat_id_, msg.id_,
                            "📫┇الاذاعه معطله من قبل المطور الاساسي")
                        return false
                    end
                    database:setex(bot_id .. "LARViN:LARViN:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_,
                        600, true)
                    send(msg.chat_id_, msg.id_, "📥┇ارسل لي التوجيه الان")
                    return false
                end
                if text == "اذاعه بالتوجيه خاص 👤" and msg.reply_to_message_id_ == 0 then
                    if database:get(bot_id .. "LARViN:Status:Bc") and not DevLARViN(msg) then
                        send(msg.chat_id_, msg.id_,
                            "📫┇الاذاعه معطله من قبل المطور الاساسي")
                        return false
                    end
                    database:setex(bot_id .. "LARViN:LARViN:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600,
                        true)
                    send(msg.chat_id_, msg.id_, "📥┇ارسل لي التوجيه الان")
                    return false
                end
                if text == "تفعيل الاذاعه 🔔" then
                    database:del(bot_id .. "LARViN:Status:Bc")
                    send(msg.chat_id_, msg.id_, "\n📫┇تم تفعيل الاذاعه ")
                    return false
                end
                if text == "تعطيل الاذاعه 🔕" then
                    database:set(bot_id .. "LARViN:Status:Bc", true)
                    send(msg.chat_id_, msg.id_, "\n📫┇تم تعطيل الاذاعه")
                    return false
                end
                if text == "تفعيل المغادره 🔏" then
                    database:del(bot_id .. "LARViN:Left:Bot" .. msg.chat_id_)
                    send(msg.chat_id_, msg.id_, "📫┇تم تفعيل مغادرة البوت")
                    return false
                end
                if text == "تعطيل المغادره 🔓" then
                    database:set(bot_id .. "LARViN:Left:Bot" .. msg.chat_id_, true)
                    send(msg.chat_id_, msg.id_, "🔘┇تم تعطيل مغادرة البوت")
                    return false
                end
                if text and database:get(bot_id .. 'Start:Bots') then
                    if text == 'الغاء ✖' then
                        send(msg.chat_id_, msg.id_, "🔘┇تم الغاء حفظ كليشه ستارت")
                        database:del(bot_id .. 'Start:Bots')
                        return false
                    end
                    database:set(bot_id .. "Start:Bot", text)
                    send(msg.chat_id_, msg.id_, '🔘┇تم حفظ كليشه ستارت')
                    database:del(bot_id .. 'Start:Bots')
                    return false
                end
                if text == 'ضع كليشه ستارت 📧' then
                    database:set(bot_id .. 'Start:Bots', true)
                    send(msg.chat_id_, msg.id_, '🔘┇ارسل لي الكليشه الان')
                    return false
                end
                if text == 'حذف كليشه ستارت 🃏' then
                    database:del(bot_id .. 'Start:Bot')
                    send(msg.chat_id_, msg.id_, '🔘┇تم حذف كليشه ستارت')
                end
                if text and text:match("^- تغير الاشتراك 🧾 .$") and DevLARViN(msg) then
                    database:setex(bot_id .. "add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)
                    send(msg.chat_id_, msg.id_, '🔘┇حسنآ ارسل لي معرف القناة')
                    return false
                end
                if text and text:match("^- تغير رساله الاشتراك 🧾 .$") and DevLARViN(msg) then
                    database:setex(bot_id .. "textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)
                    send(msg.chat_id_, msg.id_, '🔘┇حسنآ ارسل لي النص الذي تريده')
                    return false
                end
                if text == "حذف رساله الاشتراك ℹ ." and DevLARViN(msg) then
                    database:del(bot_id .. 'text:ch:user')
                    send(msg.chat_id_, msg.id_, "🔘┇تم مسح رساله الاشتراك ")
                    return false
                end
                if text and text:match("^- تعين قناة الاشتراك 📁 .$") and DevLARViN(msg) then
                    database:setex(bot_id .. "add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)
                    send(msg.chat_id_, msg.id_, '🔘┇حسنآ ارسل لي معرف القناة')
                    return false
                end
                if text == "- تفعيل الاشتراك الاجباري 📄 ." and DevLARViN(msg) then
                    if database:get(bot_id .. 'add:ch:id') then
                        local addchusername = database:get(bot_id .. 'add:ch:username')
                        send(msg.chat_id_, msg.id_,
                            "🔘┇الاشتراك الاجباري مفعل \n🔘┇على القناة » [" ..
                                addchusername .. "]")
                    else
                        database:setex(bot_id .. "add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)
                        send(msg.chat_id_, msg.id_,
                            "🔘┇اهلا عزيزي المطور \n🔘┇ارسل الان معرف قناتك")
                    end
                    return false
                end
                if text == "- تعطيل الاشتراك الاجباري 📄 ." and DevLARViN(msg) then
                    database:del(bot_id .. 'add:ch:id')
                    database:del(bot_id .. 'add:ch:username')
                    send(msg.chat_id_, msg.id_, "🔘┇تم تعطيل الاشتراك الاجباري ")
                    return false
                end
                if text == "- الاشتراك الاجباري 📮 ." and DevLARViN(msg) then
                    if database:get(bot_id .. 'add:ch:username') then
                        local addchusername = database:get(bot_id .. 'add:ch:username')
                        send(msg.chat_id_, msg.id_,
                            "🔘┇تم تفعيل الاشتراك الاجباري \n🔘┇على القناة » [" ..
                                addchusername .. "]")
                    else
                        send(msg.chat_id_, msg.id_,
                            "🔘┇لا يوجد قناة في الاشتراك الاجباري ")
                    end
                    return false
                end
                if database:get(bot_id .. "add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then
                    if text and text:match("^الغاء$") then
                        send(msg.chat_id_, msg.id_, "🔘┇تم الغاء الامر ")
                        database:del(bot_id .. "add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
                        return false
                    end
                    database:del(bot_id .. "add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
                    local username = string.match(text, "@[%a%d_]+")
                    tdcli_function({
                        ID = "SearchPublicChat",
                        username_ = username
                    }, function(arg, data)
                        if data and data.message_ and data.message_ == "USERNAME_NOT_OCCUPIED" then
                            send(msg.chat_id_, msg.id_, '🔘┇المعرف لا يوجد فيه قناة')
                            return false
                        end
                        if data and data.type_ and data.type_.ID and data.type_.ID == 'PrivateChatInfo' then
                            send(msg.chat_id_, msg.id_,
                                '🔘┇عذا لا يمكنك وضع معرف حسابات في الاشتراك ')
                            return false
                        end
                        if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == true then
                            send(msg.chat_id_, msg.id_,
                                '🔘┇عذا لا يمكنك وضع معرف مجموعه بالاشتراك ')
                            return false
                        end
                        if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == false then
                            if data and data.type_ and data.type_.channel_ and data.type_.channel_.ID and
                                data.type_.channel_.status_.ID == 'ChatMemberStatusEditor' then
                                send(msg.chat_id_, msg.id_,
                                    '🔘┇البوت ادمن في القناة \n🔘┇تم تفعيل الاشتراك الاجباري في \n🔘┇ايدي القناة (' ..
                                        data.id_ .. ')\n🔘┇معرف القناة ([@' ..
                                        data.type_.channel_.username_ .. '])')
                                database:set(bot_id .. 'add:ch:id', data.id_)
                                database:set(bot_id .. 'add:ch:username', '@' .. data.type_.channel_.username_)
                            else
                                send(msg.chat_id_, msg.id_, '🔘┇عذرآ البوت ليس ادمن بالقناه ')
                            end
                            return false
                        end
                    end, nil)
                end
                if database:get(bot_id .. "textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then
                    if text and text:match("^الغاء$") then
                        send(msg.chat_id_, msg.id_, "🔘┇تم الغاء الامر ")
                        database:del(bot_id .. "textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
                        return false
                    end
                    database:del(bot_id .. "textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
                    local texxt = string.match(text, "(.*)")
                    database:set(bot_id .. 'text:ch:user', texxt)
                    send(msg.chat_id_, msg.id_, '🔘┇تم تغيير رسالة الاشتراك ')
                end
                if text == ("مسح قائمه العام 📮") and DevLARViN(msg) then
                    database:del(bot_id .. "LARViN:GBan:User")
                    send(msg.chat_id_, msg.id_, "\n📮┇تم مسح قائمه العام")
                    return false
                end
                if text == ("مسح المطورين 🚸") and DevLARViN(msg) then
                    database:del(bot_id .. "LARViN:Sudo:User")
                    send(msg.chat_id_, msg.id_, "\n📮┇ تم مسح قائمة المطورين  ")
                end
                if text == ("قائمه العام 🚷") and DevLARViN(msg) then
                    local list = database:smembers(bot_id .. "LARViN:GBan:User")
                    t = "\n⛔┇قائمة المحظورين عام \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
                    for k, v in pairs(list) do
                        local username = database:get(bot_id .. "LARViN:User:Name" .. v)
                        if username then
                            t = t .. "" .. k .. "- ([@" .. username .. "])\n"
                        else
                            t = t .. "" .. k .. "- (`" .. v .. "`)\n"
                        end
                    end
                    if #list == 0 then
                        t = "✖┇لا يوجد محظورين عام"
                    end
                    send(msg.chat_id_, msg.id_, t)
                    return false
                end
                if text == ("المطورين 🔱") and DevLARViN(msg) then
                    local list = database:smembers(bot_id .. "LARViN:Sudo:User")
                    t = "\n⛔┇قائمة مطورين البوت \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
                    for k, v in pairs(list) do
                        local username = database:get(bot_id .. "LARViN:User:Name" .. v)
                        if username then
                            t = t .. "" .. k .. "- ([@" .. username .. "])\n"
                        else
                            t = t .. "" .. k .. "- (`" .. v .. "`)\n"
                        end
                    end
                    if #list == 0 then
                        t = "✖┇لا يوجد مطورين"
                    end
                    send(msg.chat_id_, msg.id_, t)
                end
                if text == 'جلب نسخه احتياطيه 📁' then
                    local list = database:smembers(bot_id .. 'LARViN:Chek:Groups')
                    local t = '{"BOT_ID": ' .. bot_id .. ',"GP_BOT":{'
                    for k, v in pairs(list) do
                        NAME = 'LARViN Chat'
                        ASAS = database:smembers(bot_id .. "LARViN:Basic:Constructor" .. v)
                        MNSH = database:smembers(bot_id .. "LARViN:Constructor" .. v)
                        MDER = database:smembers(bot_id .. "LARViN:Manager" .. v)
                        MOD = database:smembers(bot_id .. "LARViN:Mod:User" .. v)
                        link = database:get(bot_id .. "LARViN:Link_Group" .. v) or ''
                        if k == 1 then
                            t = t .. '"' .. v .. '":{"LARViN":"' .. NAME .. '",'
                        else
                            t = t .. ',"' .. v .. '":{"LARViN":"' .. NAME .. '",'
                        end
                        if #ASAS ~= 0 then
                            t = t .. '"ASAS":['
                            for k, v in pairs(ASAS) do
                                if k == 1 then
                                    t = t .. '"' .. v .. '"'
                                else
                                    t = t .. ',"' .. v .. '"'
                                end
                            end
                            t = t .. '],'
                        end
                        if #MOD ~= 0 then
                            t = t .. '"MOD":['
                            for k, v in pairs(MOD) do
                                if k == 1 then
                                    t = t .. '"' .. v .. '"'
                                else
                                    t = t .. ',"' .. v .. '"'
                                end
                            end
                            t = t .. '],'
                        end
                        if #MDER ~= 0 then
                            t = t .. '"MDER":['
                            for k, v in pairs(MDER) do
                                if k == 1 then
                                    t = t .. '"' .. v .. '"'
                                else
                                    t = t .. ',"' .. v .. '"'
                                end
                            end
                            t = t .. '],'
                        end
                        if #MNSH ~= 0 then
                            t = t .. '"MNSH":['
                            for k, v in pairs(MNSH) do
                                if k == 1 then
                                    t = t .. '"' .. v .. '"'
                                else
                                    t = t .. ',"' .. v .. '"'
                                end
                            end
                            t = t .. '],'
                        end
                        t = t .. '"linkgroup":"' .. link .. '"}' or ''
                    end
                    t = t .. '}}'
                    local File = io.open('./File_Libs/' .. bot_id .. '.json', "w")
                    File:write(t)
                    File:close()
                    sendDocument(msg.chat_id_, msg.id_, './File_Libs/' .. bot_id .. '.json',
                        '📮┇ عدد مجموعات التي في البوت { ' .. #list .. '}')
                end
                if text == "تحديث السورس 📥" then
                    send(msg.chat_id_, msg.id_, '☑┇تم التحديث')
                    os.execute('rm -rf LARViN.lua')
                    os.execute('rm -rf start.lua')
                    os.execute('wget https://raw.githubusercontent.com/LARViNTeam/LARViN/master/LARViN.lua')
                    os.execute('wget https://raw.githubusercontent.com/LARViNTeam/LARViN/master/start.lua')
                    dofile('LARViN.lua')
                    return false
                end
                if text == "تحديث ♻" then
                    dofile("LARViN.lua")
                    send(msg.chat_id_, msg.id_, "☑┇تم التحديث")
                end
            end
        end --- Chat_Type = 'UserBot' 
    end
end
function tdcli_update_callback(data)
    if data.ID == "UpdateChannel" then
        if data.channel_.status_.ID == "ChatMemberStatusKicked" then
            database:srem(bot_id .. 'LARViN:Chek:Groups', '-100' .. data.channel_.id_)
        end
    end
    if (data.ID == "UpdateNewMessage") then
        local msg = data.message_
        local text = msg.content_.text_
        if msg.date_ and msg.date_ < tonumber(os.time() - 30) then
            print("OLD MESSAGE")
            return false
        end
        if msg.sender_user_id_ and Muted_Groups(msg.chat_id_, msg.sender_user_id_) then
            DeleteMessage(msg.chat_id_, {
                [0] = msg.id_
            })
            return false
        end
        --------------------------------------------------------------------------------------------------------------
        if tonumber(msg.sender_user_id_) ~= tonumber(bot_id) then
            if msg.sender_user_id_ and Ban_Groups(msg.chat_id_, msg.sender_user_id_) then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
                return false
            end
            --------------------------------------------------------------------------------------------------------------
            if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and
                Ban_Groups(msg.chat_id_, msg.content_.members_[0].id_) then
                Kick_Group(msg.chat_id_, msg.content_.members_[0].id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
                return false
            end
            --------------------------------------------------------------------------------------------------------------
            if msg.sender_user_id_ and Ban_All_Groups(msg.sender_user_id_) then
                Kick_Group(msg.chat_id_, msg.sender_user_id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
                return false
            end
            --------------------------------------------------------------------------------------------------------------
            if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and
                Ban_All_Groups(msg.content_.members_[0].id_) then
                Kick_Group(msg.chat_id_, msg.content_.members_[0].id_)
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
            end
        end
        ------------------------------------------------------------------------
        if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID ==
            "MessagePinMessage" or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID ==
            "MessageChatAddMembers" or msg.content_.ID == "MessageChatChangeTitle" or msg.content_.ID ==
            "MessageChatDeleteMember" then
            if database:get(bot_id .. "LARViN:Lock:tagservr" .. msg.chat_id_) then
                DeleteMessage(msg.chat_id_, {
                    [0] = msg.id_
                })
                return false
            end
        end
        if text and not database:sismember(bot_id .. 'LARViN:Spam:Group' .. msg.sender_user_id_, text) then
            database:del(bot_id .. 'LARViN:Spam:Group' .. msg.sender_user_id_)
        end
        ------------------------------------------------------------------------
        tdcli_function({
            ID = "GetUser",
            user_id_ = msg.sender_user_id_
        }, function(arg, data)
            if data.username_ ~= false then
                database:set(bot_id .. 'LARViN:User:Name' .. msg.sender_user_id_, data.username_)
            end
        end, nil)
        ------------------------------------------------------------------------
        if msg.content_.ID == "MessageChatAddMembers" then
            database:set(bot_id .. "LARViN:Who:Added:Me" .. msg.chat_id_ .. ":" .. msg.content_.members_[0].id_,
                msg.sender_user_id_)
            local mem_id = msg.content_.members_
            local Bots = database:get(bot_id .. "LARViN:Lock:Bot:kick" .. msg.chat_id_)
            for i = 0, #mem_id do
                if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Addictive(msg) and Bots == "kick" then
                    https.request(
                        "https://api.telegram.org/bot" .. token .. "/kickChatMember?chat_id=" .. msg.chat_id_ ..
                            "&user_id=" .. msg.sender_user_id_)
                    Get_Info = https.request("https://api.telegram.org/bot" .. token .. "/kickChatMember?chat_id=" ..
                                                 msg.chat_id_ .. "&user_id=" .. mem_id[i].id_)
                    local Json_Info = JSON.decode(Get_Info)
                    if Json_Info.ok == true and #mem_id == i then
                        local Msgs = {}
                        Msgs[0] = msg.id_
                        msgs_id = msg.id_ - 1048576
                        for i = 1, (150) do
                            msgs_id = msgs_id + 1048576
                            table.insert(Msgs, msgs_id)
                        end
                        tdcli_function({
                            ID = "GetMessages",
                            chat_id_ = msg.chat_id_,
                            message_ids_ = Msgs
                        }, function(arg, data)

                            MsgsDel = {};
                            for i = 0, data.total_count_ do

                                if not data.messages_[i] then

                                    if not MsgsDel[0] then

                                        MsgsDel[0] = Msgs[i];
                                    end
                                    table.insert(MsgsDel, Msgs[i]);
                                end
                            end
                            if MsgsDel[0] then

                                tdcli_function({
                                    ID = "DeleteMessages",
                                    chat_id_ = arg.chat_id_,
                                    message_ids_ = MsgsDel
                                }, function(arg, data)
                                end, nil);
                            end
                        end, {
                            chat_id_ = msg.chat_id_
                        })
                        tdcli_function({
                            ID = "GetChannelMembers",
                            channel_id_ = msg.chat_id_:gsub("-100", ""),
                            filter_ = {
                                ID = "ChannelMembersBots"
                            },
                            offset_ = 0,
                            limit_ = 100
                        }, function(arg, tah)
                            local admins = tah.members_
                            for i = 0, #admins do
                                if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_Addictive(msg) then
                                    tdcli_function({
                                        ID = "ChangeChatMemberStatus",
                                        chat_id_ = msg.chat_id_,
                                        user_id_ = admins[i].user_id_,
                                        status_ = {
                                            ID = "ChatMemberStatusKicked"
                                        }
                                    }, function(arg, f)
                                    end, nil)
                                end
                            end
                        end, nil)
                    end
                end
            end
        end
        --------------------------------------------------------------------------------------------------------------
        if msg.content_.ID == "MessageChatAddMembers" then
            local mem_id = msg.content_.members_
            local Bots = database:get(bot_id .. "LARViN:Lock:Bot:kick" .. msg.chat_id_)
            for i = 0, #mem_id do
                if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Addictive(msg) and Bots == "del" then
                    Get_Info = https.request("https://api.telegram.org/bot" .. token .. "/kickChatMember?chat_id=" ..
                                                 msg.chat_id_ .. "&user_id=" .. mem_id[i].id_)
                    local Json_Info = JSON.decode(Get_Info)
                    if Json_Info.ok == true and #mem_id == i then
                        local Msgs = {}
                        Msgs[0] = msg.id_
                        msgs_id = msg.id_ - 1048576
                        for i = 1, (150) do
                            msgs_id = msgs_id + 1048576
                            table.insert(Msgs, msgs_id)
                        end
                        tdcli_function({
                            ID = "GetMessages",
                            chat_id_ = msg.chat_id_,
                            message_ids_ = Msgs
                        }, function(arg, data)

                            MsgsDel = {};
                            for i = 0, data.total_count_ do

                                if not data.messages_[i] then

                                    if not MsgsDel[0] then

                                        MsgsDel[0] = Msgs[i];
                                    end
                                    table.insert(MsgsDel, Msgs[i]);
                                end
                            end
                            if MsgsDel[0] then

                                tdcli_function({
                                    ID = "DeleteMessages",
                                    chat_id_ = arg.chat_id_,
                                    message_ids_ = MsgsDel
                                }, function(arg, data)
                                end, nil);
                            end
                        end, {
                            chat_id_ = msg.chat_id_
                        })
                        tdcli_function({
                            ID = "GetChannelMembers",
                            channel_id_ = msg.chat_id_:gsub("-100", ""),
                            filter_ = {
                                ID = "ChannelMembersBots"
                            },
                            offset_ = 0,
                            limit_ = 100
                        }, function(arg, tah)
                            local admins = tah.members_
                            for i = 0, #admins do
                                if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_Addictive(msg) then
                                    tdcli_function({
                                        ID = "ChangeChatMemberStatus",
                                        chat_id_ = msg.chat_id_,
                                        user_id_ = admins[i].user_id_,
                                        status_ = {
                                            ID = "ChatMemberStatusKicked"
                                        }
                                    }, function(arg, f)
                                    end, nil)
                                end
                            end
                        end, nil)
                    end
                end
            end
        end
        ------------------------------------------------------------------------
        if text and database:get(bot_id .. "LARViN:Del:Cmd:Group" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) ==
            "true" then
            local NewCmmd = database:get(bot_id .. "LARViN:Set:Cmd:Group:New1" .. msg.chat_id_ .. ":" .. text)
            if NewCmmd then
                database:del(bot_id .. "LARViN:Set:Cmd:Group:New1" .. msg.chat_id_ .. ":" .. text)
                database:del(bot_id .. "LARViN:Set:Cmd:Group:New" .. msg.chat_id_)
                database:srem(bot_id .. "LARViN:List:Cmd:Group:New" .. msg.chat_id_, text)
                send(msg.chat_id_, msg.id_, "🔰┇تم ازالة الامر من المجموعه")
            else
                send(msg.chat_id_, msg.id_,
                    "🔰┇لا يوجد امر بهاذا الاسم تاكد من الامر واعد المحاوله")
            end
            database:del(bot_id .. "LARViN:Del:Cmd:Group" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
            return false
        end
        ------------------------------------------------------------------------
        if data.message_.content_.text_ then
            local NewCmmd = database:get(bot_id .. "LARViN:Set:Cmd:Group:New1" .. msg.chat_id_ .. ":" ..
                                             data.message_.content_.text_)
            if NewCmmd then
                data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
            end
        end
        local Name_Bot = (database:get(bot_id .. "LARViN:Name:Bot") or "لارفين")
        if not database:get(bot_id .. "LARViN:Fun_Bots" .. msg.chat_id_) then
            if text == "" .. Name_Bot .. ' شنو رئيك بهاذا' and tonumber(msg.reply_to_message_id_) > 0 then
                function FunBot(extra, result, success)
                    local Fun = {'لوكي وزاحف من ساع زحفلي وحضرته 😒',
                                 'خوش ولد و ورده مال الله 🙄', 'يلعب ع البنات 🙄',
                                 'ولد زايعته الكاع 😶🙊', 'صاك يخبل ومعضل ',
                                 'محلو وشواربه جنها مكناسه 😂🤷🏼‍♀️',
                                 'اموت عليه 🌝', 'هوه غير الحب مال اني ❤️',
                                 'مو خوش ولد صراحه ☹️', 'ادبسز وميحترم البنات  ',
                                 'فد واحد قذر 🙄😒',
                                 'ماطيقه كل ما اكمشه ريحته جنها بخاخ بف باف مال حشرات 😂🤷‍♀️',
                                 'مو خوش ولد 🤓'}
                    send(msg.chat_id_, result.id_, '' .. Fun[math.random(#Fun)] .. '')
                end
                tdcli_function({
                    ID = "GetMessage",
                    chat_id_ = msg.chat_id_,
                    message_id_ = tonumber(msg.reply_to_message_id_)
                }, FunBot, nil)
                return false
            end
            if text == "" .. Name_Bot .. ' شنو رئيك بهاي' and tonumber(msg.reply_to_message_id_) > 0 then
                function FunBot(extra, result, success)
                    local Fun = {'الكبد مال اني هيه ', 'ختولي ماحبها ',
                                 'خانتني ويه صديقي 😔', 'بس لو الكفها اله اعضها 💔',
                                 'خوش بنيه بس عده مكسرات زايده وناقصه منا ومنا وهيه تدري بنفسها 😒',
                                 'جذابه ومنافقه سوتلي مشكله ويه الحب مالتي ',
                                 'ئووووووووف اموت ع ربها ',
                                 'ديرو بالكم منها تلعب ع الولد 😶 ضحكت ع واحد قطته ايفون 7 ',
                                 'صديقتي وختي وروحي وحياتي ', 'فد وحده منحرفه 😥',
                                 'ساكنه بالعلاوي ونته حدد بعد لسانها لسان دلاله 🙄🤐',
                                 'ام سحوره سحرت اخويا وعلكته 6 سنوات 🤕',
                                 'ماحبها 🙁', 'بله هاي جهره تسئل عليها ؟ ',
                                 'بربك ئنته والله فارغ وبطران وماعدك شي تسوي جاي تسئل ع بنات العالم ولي يله 🏼',
                                 'ياخي بنيه حبوبه بس لبعرك معمي عليها تشرب هواي 😹'}
                    send(msg.chat_id_, result.id_, '' .. Fun[math.random(#Fun)] .. '')
                end
                tdcli_function({
                    ID = "GetMessage",
                    chat_id_ = msg.chat_id_,
                    message_id_ = tonumber(msg.reply_to_message_id_)
                }, FunBot, nil)
                return false
            end
        end
        if text and text:match('^' .. Name_Bot .. ' ') then
            data.message_.content_.text_ = data.message_.content_.text_:gsub('^' .. Name_Bot .. ' ', '')
        end
        ------------------------------------------------------------------------
        LARViN_Started_Bot(msg, data)
        LARViN_Files(msg)
    elseif (data.ID == "UpdateMessageEdited") then
        local msg = data
        tdcli_function({
            ID = "GetMessage",
            chat_id_ = msg.chat_id_,
            message_id_ = tonumber(msg.message_id_)
        }, function(extra, result, success)
            database:incr(bot_id .. 'LARViN:message_edit' .. result.chat_id_ .. result.sender_user_id_)
            local Text = result.content_.text_
            if database:get(bot_id .. "LARViN:Lock:edit" .. msg.chat_id_) and not Text and not BasicConstructor(result) then
                Reply_Status(result, result.sender_user_id_, "reply",
                    "📬┇قام بالتعديل على الميديا")
                DeleteMessage(result.chat_id_, {
                    [0] = data.message_id_
                })
            end
            local text = result.content_.text_
            if not Addictive(result) then
                ------------------------------------------------------------------------
                if text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]") or text and
                    text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or
                    text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and
                    text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
                    if database:get(bot_id .. "LARViN:Lock:Link" .. msg.chat_id_) then
                        DeleteMessage(result.chat_id_, {
                            [0] = data.message_id_
                        })
                        return false
                    end
                end
                ------------------------------------------------------------------------
                if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and
                    text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and
                    text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
                    if database:get(bot_id .. "LARViN:Lock:Link" .. msg.chat_id_) then
                        DeleteMessage(result.chat_id_, {
                            [0] = data.message_id_
                        })
                        return false
                    end
                end
                ------------------------------------------------------------------------
                if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and
                    text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and
                    text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
                    if database:get(bot_id .. "LARViN:Lock:Link" .. msg.chat_id_) then
                        DeleteMessage(result.chat_id_, {
                            [0] = data.message_id_
                        })
                        return false
                    end
                end
                ------------------------------------------------------------------------
                if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and
                    text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and
                    text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
                    if database:get(bot_id .. "LARViN:Lock:Link" .. msg.chat_id_) then
                        DeleteMessage(result.chat_id_, {
                            [0] = data.message_id_
                        })
                        return false
                    end
                end
                ------------------------------------------------------------------------
                if text and text:match("[hH][tT][tT][pP][sT]") or text and
                    text:match("[tT][eE][lL][eE][gG][rR][aA].[Pp][Hh]") or text and
                    text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa].[Pp][Hh]") then
                    if database:get(bot_id .. "LARViN:Lock:Link" .. msg.chat_id_) then
                        DeleteMessage(result.chat_id_, {
                            [0] = data.message_id_
                        })
                        return false
                    end
                end
                ------------------------------------------------------------------------
                if text and text:match("(.*)(@)(.*)") then
                    if database:get(bot_id .. "LARViN:Lock:User:Name" .. msg.chat_id_) then
                        DeleteMessage(result.chat_id_, {
                            [0] = data.message_id_
                        })
                        return false
                    end
                end
                ------------------------------------------------------------------------
                if text and text:match("@") then
                    if database:get(bot_id .. "LARViN:Lock:User:Name" .. msg.chat_id_) then
                        DeleteMessage(result.chat_id_, {
                            [0] = data.message_id_
                        })
                        return false
                    end
                end
                ------------------------------------------------------------------------
                if text and text:match("(.*)(#)(.*)") then
                    if database:get(bot_id .. "LARViN:Lock:hashtak" .. msg.chat_id_) then
                        DeleteMessage(result.chat_id_, {
                            [0] = data.message_id_
                        })
                        return false
                    end
                end
                ------------------------------------------------------------------------
                if text and text:match("#") then
                    if database:get(bot_id .. "LARViN:Lock:hashtak" .. msg.chat_id_) then
                        DeleteMessage(result.chat_id_, {
                            [0] = data.message_id_
                        })
                        return false
                    end
                end
                ------------------------------------------------------------------------
                if text and text:match("/") then
                    if database:get(bot_id .. "LARViN:Lock:Cmd" .. msg.chat_id_) then
                        DeleteMessage(result.chat_id_, {
                            [0] = data.message_id_
                        })
                        return false
                    end
                end
                if text and text:match("(.*)(/)(.*)") then
                    if database:get(bot_id .. "LARViN:Lock:Cmd" .. msg.chat_id_) then
                        DeleteMessage(result.chat_id_, {
                            [0] = data.message_id_
                        })
                        return false
                    end
                end
                ------------------------------------------------------------------------
                if text then
                    local LARViN_Msg = database:get(bot_id .. "LARViN:Add:Filter:Rp2" .. text .. result.chat_id_)
                    if LARViN_Msg then
                        Reply_Status(result, result.sender_user_id_, "reply", "📬┇" .. LARViN_Msg)
                        DeleteMessage(result.chat_id_, {
                            [0] = data.message_id_
                        })
                        return false
                    end
                end
            end
        end, nil)
        ------------------------------------------------------------------------
    elseif (data.ID == "UpdateMessageSendSucceeded") then
        local msg = data.message_
        local text = msg.content_.text_
        local Get_Msg_Pin = database:get(bot_id .. 'LARViN:Msg:Pin:Chat' .. msg.chat_id_)
        if Get_Msg_Pin ~= nil then
            if text == Get_Msg_Pin then
                tdcli_function({
                    ID = "PinChannelMessage",
                    channel_id_ = msg.chat_id_:gsub('-100', ''),
                    message_id_ = msg.id_,
                    disable_notification_ = 0
                }, function(arg, d)
                    if d.ID == 'Ok' then

                        database:del(bot_id .. 'LARViN:Msg:Pin:Chat' .. msg.chat_id_);
                    end
                end, nil)
            elseif (msg.content_.sticker_) then
                if Get_Msg_Pin == msg.content_.sticker_.sticker_.persistent_id_ then
                    tdcli_function({
                        ID = "PinChannelMessage",
                        channel_id_ = msg.chat_id_:gsub('-100', ''),
                        message_id_ = msg.id_,
                        disable_notification_ = 0
                    }, function(arg, d)
                        database:del(bot_id .. 'LARViN:Msg:Pin:Chat' .. msg.chat_id_)
                    end, nil)
                end
            end
            if (msg.content_.animation_) then
                if msg.content_.animation_.animation_.persistent_id_ == Get_Msg_Pin then
                    tdcli_function({
                        ID = "PinChannelMessage",
                        channel_id_ = msg.chat_id_:gsub('-100', ''),
                        message_id_ = msg.id_,
                        disable_notification_ = 0
                    }, function(arg, d)
                        database:del(bot_id .. 'LARViN:Msg:Pin:Chat' .. msg.chat_id_)
                    end, nil)
                end
            end
            if (msg.content_.photo_) then
                if msg.content_.photo_.sizes_[0] then
                    id_photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
                end
                if msg.content_.photo_.sizes_[1] then
                    id_photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
                end
                if msg.content_.photo_.sizes_[2] then
                    id_photo = msg.content_.photo_.sizes_[2].photo_.persistent_id_
                end
                if msg.content_.photo_.sizes_[3] then
                    id_photo = msg.content_.photo_.sizes_[3].photo_.persistent_id_
                end
                if id_photo == Get_Msg_Pin then
                    tdcli_function({
                        ID = "PinChannelMessage",
                        channel_id_ = msg.chat_id_:gsub('-100', ''),
                        message_id_ = msg.id_,
                        disable_notification_ = 0
                    }, function(arg, d)
                        database:del(bot_id .. 'LARViN:Msg:Pin:Chat' .. msg.chat_id_)
                    end, nil)
                end
            end
        end
    end
    if (data.ID == "UpdateOption" and data.value_.value_ == "Ready") then
        print(
            '\27[30;32m»» يرجى الاننتضار لحين تنظيف المجموعات الوهميه ««\n\27[1;37m')
        local list = database:smembers(bot_id .. 'LARViN:UsersBot')
        for k, v in pairs(list) do
            tdcli_function({
                ID = 'GetChat',
                chat_id_ = v
            }, function(arg, data)
            end, nil)
        end
        local list = database:smembers(bot_id .. 'LARViN:Chek:Groups')
        for k, v in pairs(list) do
            tdcli_function({
                ID = 'GetChat',
                chat_id_ = v
            }, function(arg, data)
                if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and
                    data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
                    tdcli_function({
                        ID = "ChangeChatMemberStatus",
                        chat_id_ = v,
                        user_id_ = bot_id,
                        status_ = {
                            ID = "ChatMemberStatusLeft"
                        }
                    }, function(e, g)
                    end, nil)
                    database:srem(bot_id .. 'LARViN:Chek:Groups', v)
                end
                if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and
                    data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
                    database:srem(bot_id .. 'LARViN:Chek:Groups', v)
                end
                if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and
                    data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
                    database:srem(bot_id .. 'LARViN:Chek:Groups', v)
                end
                if data and data.code_ and data.code_ == 400 then
                    database:srem(bot_id .. 'LARViN:Chek:Groups', v)
                end
                if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and
                    data.type_.channel_.status_.ID == "ChatMemberStatusEditor" then
                    database:sadd(bot_id .. 'LARViN:Chek:Groups', v)
                end
            end, nil)
        end
        CleangGroups();
    end
end
