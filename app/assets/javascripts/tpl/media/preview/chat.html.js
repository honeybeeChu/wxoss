define("tpl/media/preview/chat.html.js", [], function () {
    return '<div class="wx_phone_hd">\n	微信团队\n</div>\n<div class="wx_phone_bd wx_phone_preview_chat_wrp">\n    <div class="wx_phone_preview_chat">\n        <img class="chat_user_avatar" src="/assets/htmledition/pic_avatar_wechat-718cae3a485cb892a7d168a031ce7da28443f797bb50c04f2edf467bc8952c95.jpg">\n        <div class="chat_content">\n            <div class="chat_appmsg_msg jsPhoneViewCard">\n                <div class="chat_appmsg_title" title="{title}">{title}</div>\n                <div class="chat_appmsg_content">\n                    <img class="chat_appmsg_thumb" src="{img}">\n                    <div class="chat_appmsg_desc" title="{digest}">{digest}</div>\n                </div>\n                <span class="chat_arrow_wrp">\n                    <i class="chat_arrow arrow_out"></i>\n                    <i class="chat_arrow arrow_in"></i>\n                </span>\n            </div>\n        </div>\n    </div>\n</div>\n<!--pulgin-->\n<div>\n    <ul class="wx_view_list">\n        <li class="wx_view_item jsPhoneViewLink" data-id="card">图文消息</li>\n        <li class="wx_view_item jsPhoneViewLink" data-id="appmsg">消息正文</li>\n        <li class="wx_view_item jsPhoneViewLink " data-id="moments">分享到朋友圈</li>\n        <li class="wx_view_item jsPhoneViewLink selected" data-id="chat">发送给朋友</li>\n    </ul>\n    <div class="btn_wx_phone_preview_wrp">\n        <a class="btn btn_default btn_wx_phone_preview jsPhoneViewPub">发送到手机预览</a>\n    </div>\n</div>\n\n\n\n\n\n';
});