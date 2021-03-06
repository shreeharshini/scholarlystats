function countChecked() {
    "all" === checkState && $(".bulk_action input[name='table_records']").iCheck("check"), "none" === checkState && $(".bulk_action input[name='table_records']").iCheck("uncheck");
    var e = $(".bulk_action input[name='table_records']:checked").length;
    e ? ($(".column-title").hide(), $(".bulk-actions").show(), $(".action-cnt").html(e + " Records Selected")) : ($(".column-title").show(), $(".bulk-actions").hide())
}
var CURRENT_URL = window.location.href.split("?")[0],
    $BODY = $("body"),
    $MENU_TOGGLE = $("#menu_toggle"),
    $SIDEBAR_MENU = $("#sidebar-menu"),
    $SIDEBAR_FOOTER = $(".sidebar-footer"),
    $LEFT_COL = $(".left_col"),
    $RIGHT_COL = $(".right_col"),
    $NAV_MENU = $(".nav_menu"),
    $FOOTER = $("footer");
$(document).ready(function() {
    var e = function() {
        $RIGHT_COL.css("min-height", $(window).height());
        var e = $BODY.outerHeight(),
            t = $BODY.hasClass("footer_fixed") ? 0 : $FOOTER.height(),
            n = $LEFT_COL.eq(1).height() + $SIDEBAR_FOOTER.height(),
            i = n > e ? n : e;
        i -= $NAV_MENU.height() + t, $RIGHT_COL.css("min-height", i)
    };
    $SIDEBAR_MENU.find("a").on("click", function(t) {
        var n = $(this).parent();
        n.is(".active") ? (n.removeClass("active active-sm"), $("ul:first", n).slideUp(function() {
            e()
        })) : (n.parent().is(".child_menu") || ($SIDEBAR_MENU.find("li").removeClass("active active-sm"), $SIDEBAR_MENU.find("li ul").slideUp()), n.addClass("active"), $("ul:first", n).slideDown(function() {
            e()
        }))
    }), $MENU_TOGGLE.on("click", function() {
        $BODY.hasClass("nav-md") ? ($SIDEBAR_MENU.find("li.active ul").hide(), $SIDEBAR_MENU.find("li.active").addClass("active-sm").removeClass("active")) : ($SIDEBAR_MENU.find("li.active-sm ul").show(), $SIDEBAR_MENU.find("li.active-sm").addClass("active").removeClass("active-sm")), $BODY.toggleClass("nav-md nav-sm"), e()
    }), $SIDEBAR_MENU.find('a[href="' + CURRENT_URL + '"]').parent("li").addClass("current-page"), $SIDEBAR_MENU.find("a").filter(function() {
        return this.href == CURRENT_URL
    }).parent("li").addClass("current-page").parents("ul").slideDown(function() {
        e()
    }).parent().addClass("active"), $(window).smartresize(function() {
        e()
    }), e(), $.fn.mCustomScrollbar && $(".menu_fixed").mCustomScrollbar({
        autoHideScrollbar: !0,
        theme: "minimal",
        mouseWheel: {
            preventDefault: !0
        }
    })
}), $(document).ready(function() {
    $(".collapse-link").on("click", function() {
        var e = $(this).closest(".x_panel"),
            t = $(this).find("i"),
            n = e.find(".x_content");
        e.attr("style") ? n.slideToggle(200, function() {
            e.removeAttr("style")
        }) : (n.slideToggle(200), e.css("height", "auto")), t.toggleClass("fa-chevron-up fa-chevron-down")
    }), $(".close-link").click(function() {
        var e = $(this).closest(".x_panel");
        e.remove()
    })
}), $(document).ready(function() {
    $('[data-toggle="tooltip"]').tooltip({
        container: "body"
    })
}), $(".progress .progress-bar")[0] && $(".progress .progress-bar").progressbar(), $(document).ready(function() {
    if ($(".js-switch")[0]) {
        var e = Array.prototype.slice.call(document.querySelectorAll(".js-switch"));
        e.forEach(function(e) {
            new Switchery(e, {
                color: "#26B99A"
            })
        })
    }
}), $(document).ready(function() {
    $("input.flat")[0] && $(document).ready(function() {
        $("input.flat").iCheck({
            checkboxClass: "icheckbox_flat-green",
            radioClass: "iradio_flat-green"
        })
    })
}), $("table input").on("ifChecked", function() {
    checkState = "", $(this).parent().parent().parent().addClass("selected"), countChecked()
}), $("table input").on("ifUnchecked", function() {
    checkState = "", $(this).parent().parent().parent().removeClass("selected"), countChecked()
});
var checkState = "";
$(".bulk_action input").on("ifChecked", function() {
        checkState = "", $(this).parent().parent().parent().addClass("selected"), countChecked()
    }), $(".bulk_action input").on("ifUnchecked", function() {
        checkState = "", $(this).parent().parent().parent().removeClass("selected"), countChecked()
    }), $(".bulk_action input#check-all").on("ifChecked", function() {
        checkState = "all", countChecked()
    }), $(".bulk_action input#check-all").on("ifUnchecked", function() {
        checkState = "none", countChecked()
    }), $(document).ready(function() {
        $(".expand").on("click", function() {
            $(this).next().slideToggle(200), $expand = $(this).find(">:first-child"), "+" == $expand.text() ? $expand.text("-") : $expand.text("+")
        })
    }), "undefined" != typeof NProgress && ($(document).ready(function() {
        NProgress.start()
    }), $(window).load(function() {
        NProgress.done()
    })),
    function(e, t) {
        var n = function(e, t, n) {
            var i;
            return function() {
                function c() {
                    n || e.apply(a, o), i = null
                }
                var a = this,
                    o = arguments;
                i ? clearTimeout(i) : n && e.apply(a, o), i = setTimeout(c, t || 100)
            }
        };
        jQuery.fn[t] = function(e) {
            return e ? this.bind("resize", n(e)) : this.trigger(t)
        }
    }(jQuery, "smartresize");
    
    
    
    
    
    
    
    
    
    
    
    
    /*hight chart start*/
    
    $(function () {
    $('#trend').highcharts({
        chart: {
            type: 'spline'
        },
        title: {
            text: 'Year Trend'
        },
        
        xAxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
        },
        yAxis: {
            title: {
                text: 'Successful Full-Text Requests'
            },
            labels: {
                formatter: function () {
                    return this.value + 'k';
                }
            }
        },
        tooltip: {
            crosshairs: true,
            shared: true
        },
        plotOptions: {
            spline: {
                marker: {
                    radius: 4,
                    lineColor: '#666666',
                    lineWidth: 1
                }
            }
        },
        series: [{
            name: '2016',
            marker: {
                symbol: 'square'
            },
            data: [92281, 124525, 117684, 100263, 127121, 83802, 73739,75067,69968, 102970, 0 ,0,{
               
               
            }, ]

        }, {
            name: '2015',
            marker: {
                symbol: 'diamond'
            },
            data: [124353, 162391, 165723, 143693, 166781, 124531, 117360, 101647, 93732, 134972, 146472, 96877,{
              
               
            },  ]
        }]
    });
});







/*pie chart start*/

$(function () {

    $(document).ready(function () {

        // Build the chart
        $('#pie2').highcharts({
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            title: {
                text: 'Journal Year Trend, 2015 to May, 2015'
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: false
                    },
                    showInLegend: true
                }
            },
            series: [{
                name: 'Usages',
                colorByPoint: true,
                data: [{
                    name: 'Databases',
                    y: 96.5
                }, {
                    name: 'Journals',
                    y: 2.4,
                    sliced: true,
                    selected: true
                }, {
                    name: 'Books',
                    y: 1.1
                }]
            }]
        });
    });
});





<!--journal start-->


$(function () {
    // Create the chart
    $('#journal2').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'Top 10 Journal Titles'
        },
        subtitle: {
            text: 'Click the columns to view versions. '
        },
        xAxis: {
            type: 'category'
        },
        yAxis: {
            title: {
                text: 'Total percent market share'
            }

        },
        legend: {
            enabled: false
        },
        plotOptions: {
            series: {
                borderWidth: 0,
                dataLabels: {
                    enabled: true,
                    format: '{point.y:.1f}%'
                }
            }
        },

        tooltip: {
            headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
            pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>'
        },

        series: [{
            name: 'Brands',
            colorByPoint: true,
            data: [{
                name: 'Book',
                y: 56.33,
                drilldown: 'Databases'
            }, {
                name: 'Journal',
                y: 24.03,
                drilldown: 'Journal'
            }, {
                name: 'Firefox',
                y: 10.38,
                drilldown: 'Firefox'
            }, {
                name: 'Safari',
                y: 4.77,
                drilldown: 'Safari'
            }, {
                name: 'Opera',
                y: 0.91,
                drilldown: 'Opera'
            }, {
                name: 'Proprietary or Undetectable',
                y: 0.2,
                drilldown: null
            }]
        }],
        drilldown: {
            series: [{
                name: 'Microsoft Internet Explorer',
                id: 'Microsoft Internet Explorer',
                data: [
                    [
                        'v11.0',
                        24.13
                    ],
                    [
                        'v8.0',
                        17.2
                    ],
                    [
                        'v9.0',
                        8.11
                    ],
                    [
                        'v10.0',
                        5.33
                    ],
                    [
                        'v6.0',
                        1.06
                    ],
                    [
                        'v7.0',
                        0.5
                    ]
                ]
            }, {
                name: 'Chrome',
                id: 'Chrome',
                data: [
                    [
                        'v40.0',
                        5
                    ],
                    [
                        'v41.0',
                        4.32
                    ],
                    [
                        'v42.0',
                        3.68
                    ],
                    [
                        'v39.0',
                        2.96
                    ],
                    [
                        'v36.0',
                        2.53
                    ],
                    [
                        'v43.0',
                        1.45
                    ],
                    [
                        'v31.0',
                        1.24
                    ],
                    [
                        'v35.0',
                        0.85
                    ],
                    [
                        'v38.0',
                        0.6
                    ],
                    [
                        'v32.0',
                        0.55
                    ],
                    [
                        'v37.0',
                        0.38
                    ],
                    [
                        'v33.0',
                        0.19
                    ],
                    [
                        'v34.0',
                        0.14
                    ],
                    [
                        'v30.0',
                        0.14
                    ]
                ]
            }, {
                name: 'Firefox',
                id: 'Firefox',
                data: [
                    [
                        'v35',
                        2.76
                    ],
                    [
                        'v36',
                        2.32
                    ],
                    [
                        'v37',
                        2.31
                    ],
                    [
                        'v34',
                        1.27
                    ],
                    [
                        'v38',
                        1.02
                    ],
                    [
                        'v31',
                        0.33
                    ],
                    [
                        'v33',
                        0.22
                    ],
                    [
                        'v32',
                        0.15
                    ]
                ]
            }, {
                name: 'Safari',
                id: 'Safari',
                data: [
                    [
                        'v8.0',
                        2.56
                    ],
                    [
                        'v7.1',
                        0.77
                    ],
                    [
                        'v5.1',
                        0.42
                    ],
                    [
                        'v5.0',
                        0.3
                    ],
                    [
                        'v6.1',
                        0.29
                    ],
                    [
                        'v7.0',
                        0.26
                    ],
                    [
                        'v6.2',
                        0.17
                    ]
                ]
            }, {
                name: 'Opera',
                id: 'Opera',
                data: [
                    [
                        'v12.x',
                        0.34
                    ],
                    [
                        'v28',
                        0.24
                    ],
                    [
                        'v27',
                        0.17
                    ],
                    [
                        'v29',
                        0.16
                    ]
                ]
            }]
        }
    });
});
