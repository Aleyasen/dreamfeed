<?php

Yii::import('application.models._base.BaseNote');

class Note extends BaseNote
{
	public static function model($className=__CLASS__) {
		return parent::model($className);
	}
}