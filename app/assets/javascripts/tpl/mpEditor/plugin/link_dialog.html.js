define("tpl/mpEditor/plugin/link_dialog.html.js", [], function () {
    return '<form class="" id="linkForm">\n    <div class="frm_control_group">\n        <label for="" class="frm_label">文本内容</label>\n        <div class="frm_controls">\n            <span class="frm_input_box">\n                <input type="text" id="txtTitle" name="title" class="frm_input" placeholder="请填写被点击的文字内容">\n            </span>\n            <!-- <p class="frm_msg fail">\n                <span class="frm_msg_content">表单验证消息 失败</span>\n            </p> -->\n        </div>\n    </div>\n    <div class="frm_control_group" {if flag*1!=1}style="display:none;"{/if}  id="hrefDiv">\n        <label for="" class="frm_label">链接地址</label>\n        <div class="frm_controls">\n            <span class="frm_input_box">\n                <input type="text" id="txtHref" name="href" class="frm_input" placeholder="" value="http://">\n            </span>\n            <!-- <p class="frm_msg fail">\n                <span class="frm_msg_content">表单验证消息 失败</span>\n            </p> -->\n        </div>\n    </div>\n    <div class="link_chooser_wrap">\n        {if flag*1==1}\n        <span class="btn_link_triger" id="linkArrow">从已发送的图文消息中选择<i class="arrow {if flag*1==1}down{else}up{/if}"></i></span>\n        {else}\n        <p>从已发送的图文消息中选择</p> \n        {/if}\n        <div class="link_chooser" {if flag*1==1}style="display:none;"{/if} id="linkChoose">\n            <div class="search_bar">\n                <span class="frm_input_box search with_del append">\n                    <a class="del_btn" href="###" id="searchCloseBt"><i class="icon_search_del" id="searchCloseBt"></i>&nbsp;</a>\n                    <a id="searchBt" href="###" class="frm_input_append"><i class="icon16_common search_gray">搜索</i>&nbsp;</a>\n                    <input id="keyInput" type="text" placeholder="搜索相关文章" value="" class="frm_input">\n                </span>\n            </div>\n            <ul class="my_link_list" id="linkList">\n            </ul>\n            <div class="pagination tr" id="pageBar">\n            </div>\n        </div>\n    </div>\n</form>\n';
});