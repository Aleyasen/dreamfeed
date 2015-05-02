<?php
if ($data->seen == 1)
    $bcolor = '#DFE3EE';
else
    $bcolor = 'white';
?>
<div class="row fbpost"  style =" background-color: <?php echo $bcolor ?>">
    <?php // echo $data->id; ?>
    <div class="span1"><div><a href="https://facebook.com/<?php echo $data->from_id; ?>"><img src="https://graph.facebook.com/<?php echo $data->from_id; ?>/picture"></a></div></div>
    <div>
        <div class="nameDiv"><a href="https://facebook.com/<?php echo $data->from_id; ?>"><?php echo $data->from_name; ?></a></div>
            <?php
            if (isset($data->story)) {
                if (strlen($data->story) > 60) {
                    echo "<div class='fbspacer'>" . $data->story . "</div>";
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
                echo "<img width='300px' src='" . $picture . "'></img>";
            }
            ?>
            <?php
            if (isset($data->created_time)) {
                // echo $data->created_time.'<br>';
                //echo date("l jS of F g:i A.", $data->created_time);   
                echo '<br>' . date("l jS F g:i A.", strtotime($data->created_time));
            }
            ?>
    </div>
</div>
