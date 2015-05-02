<?php
if ($data->from_id % 2 == 0) {
    $f = 'filter1';
} else {
    $f = 'filter2';
}
?>
<div class="item fbhighlight <?php echo $f ?>" data-category="<?php echo $f ?>">
    <?php // echo $data->id; ?>
    <div class="span1"><div><a href="https://facebook.com/<?php echo $data->from_id; ?>"><img src="https://graph.facebook.com/<?php echo $data->from_id; ?>/picture"></a></div></div>
    <div>
        <div class="nameDiv sender"><a href="https://facebook.com/<?php echo $data->from_id; ?>"><?php echo $data->from_name; ?></a></div>
            <?php
            if (isset($data->story)) {
                if (strlen($data->story) > 60) {
                    echo "<div class='fbspacer type'>" . $data->story . "</div>";
                } else {
                    echo "<div class='muted fbspacer'>" . $data->story . "</div>";
                }
            }
            ?>
            <?php
            if (isset($data->message)) {
                echo "<div class='fbbox fbspacer'>" . $data->message . "</div>";
            } else if (isset($data->description)) {
                echo "<div class='fbbox fbspacer'>" . $data->description . "</div>";
            }
            ?>
            <?php
            if (isset($data->picture)) {
                $picture = str_replace("_s.jpg", "_n.jpg", $data->picture);
                echo "<img width='100px' src='" . $picture . "'></img>";
            }
            ?>
            <?php
            if (isset($data->created_time)) {
                // echo $data->created_time.'<br>';
                //echo date("l jS of F g:i A.", $data->created_time);   
                echo '<br><div class="date">' . date("l jS F g:i A.", strtotime($data->created_time)) . "</div>";
            }
            ?>
    </div>
</div>
