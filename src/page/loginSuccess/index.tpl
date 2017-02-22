{{extends file="page/_base/base.tpl"}}

{{block name="page"}}
    {{$page_title = "登录成功"}}
    {{$page_module = "page/loginSuccess/index"}}
{{/block}}

{{block name="style"}}
    <link rel="stylesheet" href="{{$static_origin}}/src/page/loginSuccess/css/index.styl"/>
{{/block}}

{{block name="content"}}
    <header class="nav-bar">
        <div class="nav-wrap-left">
            <a class="nav-button" href="javascript:history.back()">
                <i class="icon icon-back"></i>
            </a>
        </div>
        <div class="nav-header h1">
            登录成功页面
        </div>
    </header>
    <section class="message">
        {{if $tpl_data.isLogin}}
            <img src="{{$static_origin}}/src/page/loginSuccess/img/success.png" />
            登录成功啦
        {{else}}
            登录失败，请重新登录
        {{/if}}
    </section>
{{/block}}
