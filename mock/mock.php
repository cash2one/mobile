<?php

require('./bootstrap.php');

$data = json_decode($_GET['___data___'], true);

$ext_data = array(
    "page" => "local_mock_page",
    "is_app" => false,
    "is_tapp" => false,
    "curr_city" => array(
        "id" => "17039360",
        "name" => "北京",
        "domain"=>""
    )
);

if (isset($data['data']['ext_data'])) {
    array_merge($ext_data, $data['data']['ext_data']);
}

$tpl_data = array();

if (isset($data["data"]["tpl_data"])) {
    $tpl_data = $data["data"]["tpl_data"];
}

render(
    $data['tpl'],
    array(
        "tpl_data" => $tpl_data,
        "ext_data" => $ext_data
    )
);
