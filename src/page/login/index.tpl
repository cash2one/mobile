{{extends file="page/_base/base.tpl"}}

{{block name="page"}}
    {{$page_title = "登录"}}
    {{$page_module = "page/login/index"}}
{{/block}}

{{block name="style"}}
    <link rel="stylesheet" href="{{$static_origin}}/src/page/login/css/index.styl"/>
{{/block}}

{{block name="content"}}
    <header class="nav-bar">
        <div class="nav-wrap-left">
            <a class="nav-button" href="javascript:history.back()">
                <i class="icon icon-back"></i>
            </a>
        </div>
        <div class="nav-header h1">
            {{$tpl_data.data.title}}
        </div>
    </header>
    <section class="form">
        <div class="item">
            <div class="title">
                用户名：
            </div>
            <div class="set">
                <input type="text" class="user-name" />
            </div>
        </div>
        <div class="item">
            <div class="title">
                密码：
            </div>
            <div class="set">
                <input type="text" class="password"/>
            </div>
        </div>
        <div class="item">
            <div class="item">
                <input type="button" value="登录" class="submit" />
            </div>
        </div>
    </section>
{{/block}}
