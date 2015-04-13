<?php

/**
 * This is the model base class for the table "post_data".
 * DO NOT MODIFY THIS FILE! It is automatically generated by giix.
 * If any changes are necessary, you must set or override the required
 * property or method in class "Post".
 *
 * Columns in table "post_data" available as properties of the model,
 * followed by relations of table "post_data" available as properties of the model.
 *
 * @property string $id
 * @property string $friend
 * @property string $post_id
 * @property integer $seen
 * @property string $from_id
 * @property string $from_name
 * @property string $story
 * @property string $link
 * @property string $picture
 * @property string $source
 * @property string $name
 * @property string $description
 * @property string $message
 * @property string $user
 * @property string $created_time
 * @property integer $chosen
 * @property integer $changed
 * @property string $type
 * @property string $from_img
 * @property string $from_text
 * @property string $group_name
 * @property string $link_desc
 * @property string $link_domain
 * @property string $link_img_url
 * @property integer $like_count
 * @property integer $comment_count
 * @property integer $is_share
 * @property string $video_img
 *
 * @property Category $category0
 * @property Friend $friend0
 * @property User $user0
 */
abstract class BasePost extends GxActiveRecord {

	public static function model($className=__CLASS__) {
		return parent::model($className);
	}

	public function tableName() {
		return 'post_data';
	}

	public static function label($n = 1) {
		return Yii::t('app', 'Post|Posts', $n);
	}

	public static function representingColumn() {
		return 'from_img';
	}

	public function rules() {
		return array(
			array('from_img, from_text, group_name, link_desc, link_domain, link_img_url, like_count, comment_count, is_share, video_img', 'required'),
			array('seen, chosen, changed, like_count, comment_count, is_share', 'numerical', 'integerOnly'=>true),
			array('friend, user, type', 'length', 'max'=>20),
			array('post_id', 'length', 'max'=>100),
			array('from_id', 'length', 'max'=>64),
			array('from_name', 'length', 'max'=>200),
			array('from_img, from_text, group_name, link_desc, link_domain, link_img_url, video_img', 'length', 'max'=>1024),
			array('story, link, picture, source, name, description, message, created_time', 'safe'),
			array('friend, post_id, seen, from_id, from_name, story, link, picture, source, name, description, message, user, created_time, chosen, changed, type', 'default', 'setOnEmpty' => true, 'value' => null),
			array('id, friend, post_id, seen, from_id, from_name, story, link, picture, source, name, description, message, user, created_time, chosen, changed, type, from_img, from_text, group_name, link_desc, link_domain, link_img_url, like_count, comment_count, is_share, video_img', 'safe', 'on'=>'search'),
		);
	}

	public function relations() {
		return array(
			'category0' => array(self::BELONGS_TO, 'Category', 'category'),
			'friend0' => array(self::BELONGS_TO, 'Friend', 'friend'),
			'user0' => array(self::BELONGS_TO, 'User', 'user'),
		);
	}

	public function pivotModels() {
		return array(
		);
	}

	public function attributeLabels() {
		return array(
			'id' => Yii::t('app', 'ID'),
			'friend' => null,
			'post_id' => Yii::t('app', 'Post'),
			'seen' => Yii::t('app', 'Seen'),
			'from_id' => Yii::t('app', 'From'),
			'from_name' => Yii::t('app', 'From Name'),
			'story' => Yii::t('app', 'Story'),
			'link' => Yii::t('app', 'Link'),
			'picture' => Yii::t('app', 'Picture'),
			'source' => Yii::t('app', 'Source'),
			'name' => Yii::t('app', 'Name'),
			'description' => Yii::t('app', 'Description'),
			'message' => Yii::t('app', 'Message'),
			'user' => null,
			'created_time' => Yii::t('app', 'Created Time'),
			'chosen' => Yii::t('app', 'Chosen'),
			'changed' => Yii::t('app', 'Changed'),
			'type' => Yii::t('app', 'Type'),
			'from_img' => Yii::t('app', 'From Img'),
			'from_text' => Yii::t('app', 'From Text'),
			'group_name' => Yii::t('app', 'Group Name'),
			'link_desc' => Yii::t('app', 'Link Desc'),
			'link_domain' => Yii::t('app', 'Link Domain'),
			'link_img_url' => Yii::t('app', 'Link Img Url'),
			'like_count' => Yii::t('app', 'Like Count'),
			'comment_count' => Yii::t('app', 'Comment Count'),
			'is_share' => Yii::t('app', 'Is Share'),
			'video_img' => Yii::t('app', 'Video Img'),
			'category0' => null,
			'friend0' => null,
			'user0' => null,
		);
	}

	public function search() {
		$criteria = new CDbCriteria;

		$criteria->compare('id', $this->id, true);
		$criteria->compare('friend', $this->friend);
		$criteria->compare('post_id', $this->post_id, true);
		$criteria->compare('seen', $this->seen);
		$criteria->compare('from_id', $this->from_id, true);
		$criteria->compare('from_name', $this->from_name, true);
		$criteria->compare('story', $this->story, true);
		$criteria->compare('link', $this->link, true);
		$criteria->compare('picture', $this->picture, true);
		$criteria->compare('source', $this->source, true);
		$criteria->compare('name', $this->name, true);
		$criteria->compare('description', $this->description, true);
		$criteria->compare('message', $this->message, true);
		$criteria->compare('user', $this->user);
		$criteria->compare('created_time', $this->created_time, true);
		$criteria->compare('chosen', $this->chosen);
		$criteria->compare('changed', $this->changed);
		$criteria->compare('type', $this->type, true);
		$criteria->compare('from_img', $this->from_img, true);
		$criteria->compare('from_text', $this->from_text, true);
		$criteria->compare('group_name', $this->group_name, true);
		$criteria->compare('link_desc', $this->link_desc, true);
		$criteria->compare('link_domain', $this->link_domain, true);
		$criteria->compare('link_img_url', $this->link_img_url, true);
		$criteria->compare('like_count', $this->like_count);
		$criteria->compare('comment_count', $this->comment_count);
		$criteria->compare('is_share', $this->is_share);
		$criteria->compare('video_img', $this->video_img, true);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}
}