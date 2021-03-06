<?php

$this->breadcrumbs = array(
	$model->label(2) => array('index'),
	GxHtml::valueEx($model),
);

$this->menu=array(
	array('label'=>Yii::t('app', 'List') . ' ' . $model->label(2), 'url'=>array('index')),
	array('label'=>Yii::t('app', 'Create') . ' ' . $model->label(), 'url'=>array('create')),
	array('label'=>Yii::t('app', 'Update') . ' ' . $model->label(), 'url'=>array('update', 'id' => $model->id)),
	array('label'=>Yii::t('app', 'Delete') . ' ' . $model->label(), 'url'=>'#', 'linkOptions' => array('submit' => array('delete', 'id' => $model->id), 'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>Yii::t('app', 'Manage') . ' ' . $model->label(2), 'url'=>array('admin')),
);
?>

<h1><?php echo Yii::t('app', 'View') . ' ' . GxHtml::encode($model->label()) . ' ' . GxHtml::encode(GxHtml::valueEx($model)); ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data' => $model,
	'attributes' => array(
'id',
array(
			'name' => 'friend0',
			'type' => 'raw',
			'value' => $model->friend0 !== null ? GxHtml::link(GxHtml::encode(GxHtml::valueEx($model->friend0)), array('friend/view', 'id' => GxActiveRecord::extractPkValue($model->friend0, true))) : null,
			),
array(
			'name' => 'category0',
			'type' => 'raw',
			'value' => $model->category0 !== null ? GxHtml::link(GxHtml::encode(GxHtml::valueEx($model->category0)), array('category/view', 'id' => GxActiveRecord::extractPkValue($model->category0, true))) : null,
			),
'post_id',
'seen:boolean',
'from_id',
'from_name',
'story',
'link',
'picture',
'source',
'name',
'description',
'message',
array(
			'name' => 'user0',
			'type' => 'raw',
			'value' => $model->user0 !== null ? GxHtml::link(GxHtml::encode(GxHtml::valueEx($model->user0)), array('user/view', 'id' => GxActiveRecord::extractPkValue($model->user0, true))) : null,
			),
	),
)); ?>

