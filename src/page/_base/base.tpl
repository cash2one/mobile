<!DOCTYPE html>

<html lang="zh-CN">
{{*{{strip}}*}}

{{$origin = rtrim($site_config.baseUri, '/')}}
{{$origin_http = $origin|replace:"https://":"http://"}}
{{$origin_https = $origin|replace:"http://":"https://"}}

{{$main_origin = rtrim($site_config.mainUri, '/')}}
{{$main_domain = $main_origin|replace:"https://":""|replace:"http://":""}}

{{$static_origin = rtrim($site_config.staticBaseUri, '/')}}
{{$static_origin_http = $static_origin|replace:"https://":"http://"}}
{{$static_origin_https = $static_origin|replace:"http://":"https://"}}

<head>
    {{*其他需要初始化的模块, 这个数组的名字不可以修改,打包脚本会用到*}}
    {{*业务逻辑不要直接只用这个数组,如需加载其他模块请直接用require,但现在还不支持*}}
    {{$g_modules = array()}}

    {{block name="page"}}
        {{$page_title = ""}}
        {{$page_description = ""}}
        {{$page_keywords = ""}}

        {{*页面入口模块*}}
        {{$page_module = ""}}

        {{*页面右下角,返回顶部按钮*}}
        {{$enable_backTopButton = true}}
    {{/block}}
    <meta charset="utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <!-- TDK -->
    <title>{{$page_title}}</title>
    {{if !empty($page_description)}}
        <meta name="description" content="{{$page_description}}"/>
    {{/if}}
    {{if !empty($page_keywords)}}
        <meta name="keywords" content="{{$page_keywords}}"/>
    {{/if}}

    <meta name="format-detection" content="telephone=no"/>

    <!--兼容老浏览器-->
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">

    <meta name="viewport"
          content="width=device-width, initial-scale=1, user-scalable=no, minimum-scale=1, maximum-scale=1">

    <!--隐藏苹果工具栏和菜单栏-->
    <meta name="apple-mobile-web-app-capable" content="yes"/>

    <meta name="theme-color" content="#FF9900">

    <meta name="baidu-site-verification" content="AwZm789POz"/>
    <meta name="format-detection" content="telephone=no">

    <meta http-equiv="x-dns-prefetch-control" content="on"/>

    <link rel="dns-prefetch" href="http://storage.genshuixue.com"/>
    <link rel="dns-prefetch" href="http://click.genshuixue.com"/>


    <meta name="gsx-page" content="{{$ext_data.page}}"/>
    {{block name="meta"}}{{/block}}

    {{*相关数据,比如script_data*}}
    {{block name="_data"}}{{/block}}
    {{block name="data"}}{{/block}}

     <script type="text/javascript">
        (function(){
            /* 一些公共的page参数 */
            window.common_page_info = {};
            common_page_info["page_type"] = "{{$ext_data.page}}";
            {{if isset($log_data)}}
                {{*上报page_str:后端用于标识当前页面路径*}}
                common_page_info["page_str"] = "{{$log_data.page_type}}";
            {{/if}}
            {{if not empty($smarty.get.source)}}
                common_page_info["url_source"] = '{{$smarty.get.source}}';
            {{/if}}
            {{if not empty($smarty.get.traffic_source)}}
                common_page_info["traffic_source"] = '{{$smarty.get.traffic_source}}';
            {{/if}}
        })();
    </script>

    <script src="{{$static_origin}}/src/loader.js"></script>
    <script label-del="true" src="{{$static_origin}}/lib/requirejs/plugin_text.js"></script>

    {{$sku_id=""}}
    {{block name="sku_id"}}{{/block}}
    <meta name="gsx-sku" content="{{$sku_id}}">

    <script>
        {{if !empty($page_module)}}
            var page_module = '{{$page_module}}';
        {{/if}}


        var page_data = null;
        {{if isset($script_data)}}
            page_data = {{json_encode($script_data)}};
        {{/if}}

    </script>
    <script label-del="true">
        {{include file="manifest.js"}}
    </script>

    {{block name="style"}}{{/block}}
</head>
<body>
{{strip}}
    {{block name="_body"}}
        {{block name="content"}}{{/block}}
    {{/block}}
{{/strip}}
{{*页面内容*}}
{{include file='page/_base/parts_base/page_init.tpl'}}
{{block name="_script"}}{{/block}}
{{block name="script"}}{{/block}}
</body>
{{*{{/strip}}*}}
</html>
