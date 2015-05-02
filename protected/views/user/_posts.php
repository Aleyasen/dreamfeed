  
<div id="post_container">
    <div class="item element-item alkali metal " data-category="alkali" style="position: absolute; left: 440px; top: 0px;">
        <h5 class="name">Potassium</h5>
        <p class="symbol">K</p>
        <p class="number">19</p>
        <p class="weight">39.0983</p>
    </div>
    <div class="item">
        <?php
        $this->widget('zii.widgets.CListView', array(
            'dataProvider' => $allPosts,
            'itemView' => '_fbview',
            'template' => '{items}',
        ));
        ?>
    </div>
    <div class="item w2">...</div>
    <div class="item">...</div>
    ...
</div>