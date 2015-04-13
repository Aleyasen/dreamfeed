<?php

/**
 * This is the model base class for the table "user".
 * DO NOT MODIFY THIS FILE! It is automatically generated by giix.
 * If any changes are necessary, you must set or override the required
 * property or method in class "User".
 *
 * Columns in table "user" available as properties of the model,
 * followed by relations of table "user" available as properties of the model.
 *
 * @property string $id
 * @property string $fbid
 * @property string $name
 * @property string $start_time
 * @property string $end_time
 * @property string $code
 * @property string $created_at
 *
 * @property Friend[] $friends
 * @property PostData[] $postDatas
 */
abstract class BaseUser extends GxActiveRecord {

	public static function model($className=__CLASS__) {
		return parent::model($className);
	}

	public function tableName() {
		return 'user';
	}

	public static function label($n = 1) {
		return Yii::t('app', 'User|Users', $n);
	}

	public static function representingColumn() {
		return 'id';
	}

	public function rules() {
		return array(
			array('fbid', 'required'),
			array('fbid', 'length', 'max'=>30),
			array('name', 'length', 'max'=>255),
			array('code', 'length', 'max'=>100),
			array('start_time, end_time, created_at', 'safe'),
			array('name, start_time, end_time, code, created_at', 'default', 'setOnEmpty' => true, 'value' => null),
			array('id, fbid, name, start_time, end_time, code, created_at', 'safe', 'on'=>'search'),
		);
	}

	public function relations() {
		return array(
			'friends' => array(self::HAS_MANY, 'Friend', 'user'),
			'postDatas' => array(self::HAS_MANY, 'PostData', 'user', 'order'=>'created_time DESC'),
		);
	}

	public function pivotModels() {
		return array(
		);
	}

	public function attributeLabels() {
		return array(
			'id' => Yii::t('app', 'ID'),
			'fbid' => Yii::t('app', 'Fbid'),
			'name' => Yii::t('app', 'Name'),
			'start_time' => Yii::t('app', 'Start Time'),
			'end_time' => Yii::t('app', 'End Time'),
			'code' => Yii::t('app', 'Code'),
			'created_at' => Yii::t('app', 'Created At'),
			'friends' => null,
			'postDatas' => null,
		);
	}

	public function search() {
		$criteria = new CDbCriteria;

		$criteria->compare('id', $this->id, true);
		$criteria->compare('fbid', $this->fbid, true);
		$criteria->compare('name', $this->name, true);
		$criteria->compare('start_time', $this->start_time, true);
		$criteria->compare('end_time', $this->end_time, true);
		$criteria->compare('code', $this->code, true);
		$criteria->compare('created_at', $this->created_at, true);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}
}