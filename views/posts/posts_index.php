<div class="span8">
    <?php foreach($posts as $post):?>
        <a href="<?=BASE_URL?>posts/view/<?=$post['post_id']?>"><h1><?=$post['post_subject']?></h1></a>
        <p><?=$post['post_text']?></p>

        <div>
            <span class="badge badge-success">Posted <?=$post['post_created']?></span>
        </div>



        <div>
        <?php foreach ($tags[$post['post_id']] as $tag):?>
            <a href="<?=BASE_URL?>posts/view/<?=$post['post_id']?>"></a>

            <div>
                <? foreach ($tags[$post['post_id']] as $tag): ?>
                <a href="<?=BASE_URL?>tags/view/<?=$tag['tag_id']?>"><span class="label label-primary"><?=$tag['tag_name']?></span></a>
                <?endforeach?>
            </div>

        <?php endforeach?>
        </div>
    <?php endforeach?>
</div>

postindex