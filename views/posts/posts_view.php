<div class="controller">
    <div class="well">
        <div class="media">
            <div class="media-body">
                <h4 class="media-heading"><?=$post['post_subject']?></h4>
                <p class="text-right"><?=$post['name']?></p>
                <p><?=$post['post_text']?></p>
                <ul class="list-inline list-unstyled">
                    <li><span><i class="glyphicon glyphicon-calendar"></i><?php echo $post['post_created']?></span></li>
                    <li>|</li>
                    <span><i class="glyphicon glyphicon-comment"></i> ? comments</span>
                </ul>
            </div>
        </div>
    </div>
</div>
