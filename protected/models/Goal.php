<?php

Yii::import('application.models._base.BaseGoal');

class Goal extends BaseGoal
{
	public static function model($className=__CLASS__) {
		return parent::model($className);
	}
}