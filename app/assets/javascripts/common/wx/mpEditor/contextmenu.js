define("common/wx/mpEditor/contextmenu.js", ["common/wx/mpEditor/zh_CN.js"], function (e) {
    "use strict";
    e("common/wx/mpEditor/zh_CN.js");
    var t = baidu.editor.browser, l = UE.I18N.zh_CN.contextMenu, a = [{
        label: l.selectall,
        cmdName: "selectall"
    }, {
        label: l.cleardoc,
        cmdName: "cleardoc",
        exec: function () {
            confirm(l.confirmclear) && this.execCommand("cleardoc");
        }
    }, "-", {
        group: l.paragraph,
        icon: "justifyjustify",
        subMenu: [{
            label: l.justifyleft,
            cmdName: "justify",
            value: "left"
        }, {
            label: l.justifyright,
            cmdName: "justify",
            value: "right"
        }, {
            label: l.justifycenter,
            cmdName: "justify",
            value: "center"
        }, {
            label: l.justifyjustify,
            cmdName: "justify",
            value: "justify"
        }]
    }, "-", {
        group: l.table,
        icon: "table",
        subMenu: [{
            label: l.inserttable,
            cmdName: "inserttable"
        }, {
            label: l.deletetable,
            cmdName: "deletetable"
        }, "-", {
            label: l.deleterow,
            cmdName: "deleterow"
        }, {
            label: l.deletecol,
            cmdName: "deletecol"
        }, {
            label: l.insertcol,
            cmdName: "insertcol"
        }, {
            label: l.insertcolnext,
            cmdName: "insertcolnext"
        }, {
            label: l.insertrow,
            cmdName: "insertrow"
        }, {
            label: l.insertrownext,
            cmdName: "insertrownext"
        }, "-", {
            label: l.insertcaption,
            cmdName: "insertcaption"
        }, {
            label: l.deletecaption,
            cmdName: "deletecaption"
        }, {
            label: l.inserttitle,
            cmdName: "inserttitle"
        }, {
            label: l.deletetitle,
            cmdName: "deletetitle"
        }, "-", {
            label: l.mergecells,
            cmdName: "mergecells"
        }, {
            label: l.mergeright,
            cmdName: "mergeright"
        }, {
            label: l.mergedown,
            cmdName: "mergedown"
        }, "-", {
            label: l.splittorows,
            cmdName: "splittorows"
        }, {
            label: l.splittocols,
            cmdName: "splittocols"
        }, {
            label: l.splittocells,
            cmdName: "splittocells"
        }, "-", {
            label: l.averageDiseRow,
            cmdName: "averagedistributerow"
        }, {
            label: l.averageDisCol,
            cmdName: "averagedistributecol"
        }, "-", {
            label: l.edittd,
            cmdName: "edittd",
            exec: function () {
                UE.ui.edittd && new UE.ui.edittd(this), this.getDialog("edittd").open();
            }
        }, {
            label: l.edittable,
            cmdName: "edittable",
            exec: function () {
                UE.ui.edittable && new UE.ui.edittable(this), this.getDialog("edittable").open();
            }
        }]
    }, {
        group: l.tablesort,
        icon: "tablesort",
        subMenu: [{
            label: l.reversecurrent,
            cmdName: "sorttable",
            value: 1
        }, {
            label: l.orderbyasc,
            cmdName: "sorttable"
        }, {
            label: l.reversebyasc,
            cmdName: "sorttable",
            exec: function () {
                this.execCommand("sorttable", function (e, t) {
                    var l = e.innerHTML, a = t.innerHTML;
                    return a.localeCompare(l);
                });
            }
        }, {
            label: l.orderbynum,
            cmdName: "sorttable",
            exec: function () {
                this.execCommand("sorttable", function (e, l) {
                    var a = e[t.ie ? "innerText" : "textContent"].match(/\d+/), n = l[t.ie ? "innerText" : "textContent"].match(/\d+/);
                    return a && (a = +a[0]), n && (n = +n[0]), (a || 0) - (n || 0);
                });
            }
        }, {
            label: l.reversebynum,
            cmdName: "sorttable",
            exec: function () {
                this.execCommand("sorttable", function (e, l) {
                    var a = e[t.ie ? "innerText" : "textContent"].match(/\d+/), n = l[t.ie ? "innerText" : "textContent"].match(/\d+/);
                    return a && (a = +a[0]), n && (n = +n[0]), (n || 0) - (a || 0);
                });
            }
        }]
    }, {
        group: l.borderbk,
        icon: "borderBack",
        subMenu: [{
            label: l.setcolor,
            cmdName: "interlacetable",
            exec: function () {
                this.execCommand("interlacetable");
            }
        }, {
            label: l.unsetcolor,
            cmdName: "uninterlacetable",
            exec: function () {
                this.execCommand("uninterlacetable");
            }
        }, {
            label: l.setbackground,
            cmdName: "settablebackground",
            exec: function () {
                this.execCommand("settablebackground", {
                    repeat: !0,
                    colorList: ["#bbb", "#ccc"]
                });
            }
        }, {
            label: l.unsetbackground,
            cmdName: "cleartablebackground",
            exec: function () {
                this.execCommand("cleartablebackground");
            }
        }, {
            label: l.redandblue,
            cmdName: "settablebackground",
            exec: function () {
                this.execCommand("settablebackground", {
                    repeat: !0,
                    colorList: ["red", "blue"]
                });
            }
        }, {
            label: l.threecolorgradient,
            cmdName: "settablebackground",
            exec: function () {
                this.execCommand("settablebackground", {
                    repeat: !0,
                    colorList: ["#aaa", "#bbb", "#ccc"]
                });
            }
        }]
    }, {
        group: l.aligntd,
        icon: "aligntd",
        subMenu: [{
            cmdName: "cellalignment",
            value: {
                align: "left",
                vAlign: "top"
            }
        }, {
            cmdName: "cellalignment",
            value: {
                align: "center",
                vAlign: "top"
            }
        }, {
            cmdName: "cellalignment",
            value: {
                align: "right",
                vAlign: "top"
            }
        }, {
            cmdName: "cellalignment",
            value: {
                align: "left",
                vAlign: "middle"
            }
        }, {
            cmdName: "cellalignment",
            value: {
                align: "center",
                vAlign: "middle"
            }
        }, {
            cmdName: "cellalignment",
            value: {
                align: "right",
                vAlign: "middle"
            }
        }, {
            cmdName: "cellalignment",
            value: {
                align: "left",
                vAlign: "bottom"
            }
        }, {
            cmdName: "cellalignment",
            value: {
                align: "center",
                vAlign: "bottom"
            }
        }, {
            cmdName: "cellalignment",
            value: {
                align: "right",
                vAlign: "bottom"
            }
        }]
    }, {
        group: l.aligntable,
        icon: "aligntable",
        subMenu: [{
            cmdName: "tablealignment",
            className: "left",
            label: l.tableleft,
            value: "left"
        }, {
            cmdName: "tablealignment",
            className: "center",
            label: l.tablecenter,
            value: "center"
        }, {
            cmdName: "tablealignment",
            className: "right",
            label: l.tableright,
            value: "right"
        }]
    }, "-", {
        label: l.insertparagraphbefore,
        cmdName: "insertparagraph",
        value: !0
    }, {
        label: l.insertparagraphafter,
        cmdName: "insertparagraph"
    }, {
        label: l.copy,
        cmdName: "copy",
        exec: function () {
            alert(l.copymsg);
        },
        query: function () {
            return 0;
        }
    }, {
        label: l.paste,
        cmdName: "paste",
        exec: function () {
            alert(l.pastemsg);
        },
        query: function () {
            return 0;
        }
    }];
    return a;
});