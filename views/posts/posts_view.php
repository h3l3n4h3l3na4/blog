<div class="container">
    <div class="well">
        <div class="media">
            <div class="media-body">
                <h4 class="media-heading"><?=$post['post_subject']?></h4>
                <p class="text-right"><?=$post['name']?></p>
                <p><?=$post['post_text']?></p>
                <ul class="list-inline list-unstyled">
                    <li><span><i class="glyphicon glyphicon-calendar"></i><?=$post['post_created']?></span></li>
                    <li>|</li>
                    <?php foreach ($tags as $tag):?>
                        <li><a href="<?=BASE_URL?>tags/view/<?=$tag['tag_id']?>
                        <span class="label label-info">
                            <?=$tag['tag_name']?>
                        </span>
                            </a>&nbsp;</li>
                    <?php endforeach?>
                    <li>|</li>
                    <span><i class="glyphicon glyphicon-comment"></i> ? comments</span>
                </ul>
            </div>
        </div>
    </div>
</div>



<div class="container">
    <div class="row">
        <div class="media comment-box">
            <div class="media-body">

                <?php foreach($comments as $comment): ?>
                    <h4 class="media-heading"></h4>
                    <p><?php echo $comment['comment_text']?></p>
                    <span class="badge badge-success">Commented on <?php echo $comment['comment_created']?></span> <span class="badge badge-success">Author: <?php echo $comment['comment_author']?></span>

                    <br>
                <?php endforeach?>

            </div>
        </div>
    </div>
</div>

postsview