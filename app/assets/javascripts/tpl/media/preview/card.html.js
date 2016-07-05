define("tpl/media/preview/card.html.js", [], function () {
    return '<div class="wx_phone_hd">\n    {nickName}\n</div>\n<div class="wx_phone_bd wx_phone_preview_card_wrp" > \n{if list}\n    <div class="msg_card wx_phone_preview_multi_card">\n        <div class="msg_card_inner">\n            <div class="card_cover_appmsg_item jsPhoneViewCard" data-index="0">\n                <div class="card_cover_appmsg_inner" style="background-image:url(\'{list[0].img}\');">\n                    <!--<img class="card_cover_thumb" src="">-->\n                    <strong class="card_cover_title" title="{list[0].title}">{list[0].title}</strong>\n                </div>\n            </div>\n            {each list as d i }\n            <div class="card_appmsg_item {if i==0}dn{/if} jsPhoneViewCard" data-index="{i}">\n                <img class="card_appmsg_thumb" src="{d.img}">\n                <div class="card_appmsg_content" title="{d.title}">{d.title}</div>\n            </div>\n            {/each}\n        </div>\n    </div>\n{else}\n    <div class="msg_card wx_phone_preview_card jsPhoneViewCard" data-index="0">\n        <div class="msg_card_inner">\n            <div class="msg_card_bd">\n                <h4 class="msg_card_title" title="{title}">{title}</h4>\n                <div class="msg_card_info">\n                    {date}\n                </div>\n                <div class="msg_card_extra_info" style="background-image:url(\'{img}\');">\n                    <!--<img class="appmsg_thumb" src="">-->\n                </div>\n                <div class="msg_card_desc" title="{digest}">{digest}</div>\n            </div>\n            <div class="msg_card_ft">\n                <i class="icon_arrow_default"></i>\n                阅读原文\n            </div>\n        </div>\n    </div>\n{/if}\n</div>\n<!--pulgin-->\n<div>\n    <ul class="wx_view_list">\n        <li class="wx_view_item jsPhoneViewLink selected" data-id="card">图文消息</li>\n        <li class="wx_view_item jsPhoneViewLink" data-id="appmsg">消息正文</li>\n        <li class="wx_view_item jsPhoneViewLink" data-id="moments">分享到朋友圈</li>\n        <li class="wx_view_item jsPhoneViewLink" data-id="chat">发送给朋友</li>\n    </ul>\n    <div class="btn_wx_phone_preview_wrp">\n        <a class="btn btn_default btn_wx_phone_preview jsPhoneViewPub">发送到手机预览</a>\n    </div>\n</div>\n\n\n\n\n\n\n';
});