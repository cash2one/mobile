<?php /* Smarty version Smarty-3.1.19, created on 2016-12-24 22:01:00 compiled from "/Users/wanglijun/WebstormProjects/m-test/src/page/_base/parts_base/page_init.tpl" */ ?>
<?php /*%%SmartyHeaderCode:154461374585e73c3b7a991-41139070%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array ( 'file_dependency' => array ( '791c30f65ea21c501f0e3ccc755d0f5fd5d9ba75' => array ( 0 => '/Users/wanglijun/WebstormProjects/m-test/src/page/_base/parts_base/page_init.tpl', 1 => 1482588058, 2 => 'file', ), ), 'nocache_hash' => '154461374585e73c3b7a991-41139070', 'function' => array ( ), 'version' => 'Smarty-3.1.19', 'unifunc' => 'content_585e73c3b7b115_96733816', 'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_585e73c3b7b115_96733816')) {function content_585e73c3b7b115_96733816($_smarty_tpl) {?><script> (function () { function createModFn(module_name) { var params = []; for (var i = 1, n = arguments.length; i < n; i++) { params.push(arguments[i]); } return function (modInitFn) { if ('function' == typeof modInitFn) { modInitFn.apply(null, params); } else if ('object' == typeof modInitFn && modInitFn.init) { modInitFn.init.apply(null, params); } } } var modFns = []; var modules = []; if (window.page_module) { modules.push(page_module); modFns.push(createModFn(page_module, page_data)); } function initMods(mods) { for (var i = 0, n = mods.length; i < n; i++) { if (modFns[i]) { modFns[i](mods[i]); } } } var req = require; req(modules, function () { var args = arguments; initMods.call(null, args); }); })();
</script><?php }} ?>