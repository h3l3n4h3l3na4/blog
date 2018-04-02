<?php
/**
 * Created by PhpStorm.
 * User: kasutaja
 * Date: 02.04.2018
 * Time: 17:27
 */

namespace App;


class tags extends Controller
{
    function index(){
        $this->tags = get_all(
            "SELECT post_id, tag_name, ".
            "COUNT(post_id) AS count ".
            "FROM post_tags NATURAL JOIN tag ".
            "GROUP BY tag_id");
    }
    function view(){
        $_tags = get_all("SELECT * FROM post_tags NATURAL JOIN tag");
        foreach($_tags as $tag){
            $this->tags[$tag['post_id']][] = $tag['tag_name'];
        }
    }
}