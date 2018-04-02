<ul class="list-group">
    <? foreach($tags as $tag): ?>
        <a href="#"><li class="list-group-item">php<?=$tag['tag_name']; ?></li></a>
    <? endforeach ?>
</ul>