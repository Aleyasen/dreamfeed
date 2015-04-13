<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class API {
    /*
     *   Feed API ***************************************
     */

    public static function addNewFeeds($userId, $feeds) {
        $feeds_arr = json_decode($feeds, true);
        foreach ($feeds_arr as $f) {
            $pd = new PostData();
            $pd->user = $userId;
            $pd->name = $f['author']['name'];
            $pd->from_id = $f['author']['name'];
            $pd->from_img = $f['author']['img'];
            $pd->from_text = $f['author']['text'];
            $pd->group_name = $f['author']['groupName']; //
            $pd->created_time = date('Y-m-d H:i:s', $f['time'] / 1000); //
            $pd->message = $f['textContent'];
            if (isset($f['photos'][0])) {
                $pd->picture = $f['photos'][0];
            }
            $pd->link = $f['sharedLink']['url'];
            $pd->link_desc = $f['sharedLink']['desc'];
            $pd->link_domain = $f['sharedLink']['domain'];
            $pd->link_img_url = $f['sharedLink']['imgUrl'];
            $pd->like_count = $f['likeCount'];
            $pd->comment_count = $f['commentCount'];
            $pd->is_share = $f['isShared'];
            $pd->video_img = $f['videoImg'];
            if (!$pd->save()) {
                print_r($pd->getErrors());
                return false;
            }
        }
        return true;
    }

    public static function getFeeds($userId, $start_timestamp, $end_timestamp, $start_index, $count) {
        //$user = User::model()->findByPK($userId);
        $posts = PostData::model()->findAll(array(
            'condition' => 'user=' . $userId,
            'limit' => $count,
            'order' => 'id ASC',
            'offset' => $start_index));
        $result = array();
        foreach ($posts as $pd) {
            $f = array();
            $f['author']['name'] = $pd->name;
            $f['author']['name'] = $pd->from_id;
            $f['author']['img'] = $pd->from_img;
            $f['author']['text'] = $pd->from_text;
            $f['author']['groupName'] = $pd->group_name; //
            $f['time'] = strtotime($pd->created_time); //
            $f['textContent'] = $pd->message;
            $f['photos'] = array();
            $f['photos'][0] = $pd->picture;
            $f['sharedLink']['url'] = $pd->link;
            $f['sharedLink']['desc'] = $pd->link_desc;
            $f['sharedLink']['domain'] = $pd->link_domain;
            $f['sharedLink']['imgUrl'] = $pd->link_img_url;
            $f['likeCount'] = $pd->like_count;
            $f['commentCount'] = $pd->comment_count;
            $f['isShared'] = $pd->is_share;
            $f['videoImg'] = $pd->video_img;
            $result[] = $f;
        }
        return json_encode($result);
    }

    /*
     *   Note API ***************************************
     */

    public static function getNotes($userId) {
        $notes = Note::model()->findAll('user=:user', array(':user' => $userId));
        $result = array();
        foreach ($notes as $nt) {
            $arr = array();
            $arr['id'] = $nt->id;
            $arr['goalId'] = $nt->goal_id;
            $arr['date'] = strtotime($nt->created_timestamp);
            $arr['activity'] = $nt->activity;
            $arr['result'] = $nt->result;
            $arr['resultType'] = $nt->result_type;
            $result[] = $arr;
        }
        return json_encode($result);
    }

    public static function addorUpdateNote($userId, $note_obj) {
        if (!isset($userId)) {
            $error_msg = "userId is null.";
        } else
        if (!isset($note_obj)) {
            $error_msg = "note_obj is null.";
        } else {
            $note = json_decode($note_obj, true);
            $note_db = new Note();
            $note_db->id = $note['id'];
            $note_db->goal_id = $note['goalId'];
            $note_db->user = $userId;
            $note_db->created_timestamp = date('Y-m-d H:i:s', $note['date'] / 1000);
            $note_db->activity = $note['activity'];
            $note_db->result = $note['result'];
            $note_db->result_type = $note['resultType'];
            if (!$note_db->save()) {
                print_r($note_db->getErrors());
            }
        }
        if (isset($error_msg)) {
            return $error_msg;
        } else {
            return $note_db->id;
        }
    }

    public static function removeNote($userId, $noteId) {
        if (!isset($userId)) {
            $error_msg = "userId is null.";
        } else
        if (!isset($noteId)) {
            $error_msg = "noteId is null.";
        } else {
            $note = Note::model()->find('user=:user and id=:id ', array(':user' => $userId, ':id' => $noteId));
            if (isset($note)) {
                $note->delete();
            } else {
                $error_msg = "no note with id=" . $noteId . " and userId=" . $userId;
            }
        }
        if (isset($error_msg)) {
            return $error_msg;
        } else {
            return $noteId;
        }
    }

    /*
     *   Goal API ***************************************
     */

    public static function getGoals($userId) {
        $goals = Goal::model()->findAll('user=:user', array(':user' => $userId));
        $result = array();
        foreach ($goals as $gl) {
            $arr = array();
            $arr['id'] = $gl->id;
            $arr['desc'] = $gl->desc;
            $arr['date'] = strtotime($gl->created_timestamp);
            $arr['title'] = $gl->title;
            $result[] = $arr;
        }
        return json_encode($result);
    }

    public static function addorUpdateGoal($userId, $goal_obj) {
        if (!isset($userId)) {
            $error_msg = "userId is null.";
        } else
        if (!isset($goal_obj)) {
            $error_msg = "goal_obj is null.";
        } else {
            $goal = json_decode($goal_obj, true);
            $goal_db = new Goal();
            $goal_db->id = $goal['id'];
            $note_db->user = $userId;
            $goal_db->desc = $goal['desc'];
            $goal_db->created_timestamp = date('Y-m-d H:i:s', $goal['date'] / 1000);
            $goal_db->title = $goal['title'];
            if (!$goal_db->save()) {
                print_r($goal_db->getErrors());
            }
        }
        if (isset($error_msg)) {
            return $error_msg;
        } else {
            return $goal_db->id;
        }
    }

    public static function removeGoal($userId, $goalId) {
        if (!isset($userId)) {
            $error_msg = "userId is null.";
        } else
        if (!isset($goalId)) {
            $error_msg = "goalId is null.";
        } else {
            $goal = Goal::model()->find('user=:user and id=:id ', array(':user' => $userId, ':id' => $goalId));
            if (isset($goal)) {
                $goal->delete();
            } else {
                $error_msg = "no goal with id=" . $goalId . " and userId=" . $userId;
            }
        }
        if (isset($error_msg)) {
            return $error_msg;
        } else {
            return $goalId;
        }
    }

}
