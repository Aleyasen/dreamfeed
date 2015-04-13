<?php

class APIController extends Controller {

    public function actionTest() {
        $this->renderPartial('feed', array(
            'feeds' => json_encode($feeds),
        ));
    }

    /*
     *   Feed API ***************************************
     */

    public function actionAddNewFeeds(){
        if (isset($_POST['userId'])) {
            $userId = $_POST['userId'];
        }
        if (isset($_POST['feeds'])) {
            $feeds = $_POST['feeds'];
        }
        $result = API::addNewFeeds($userId, $feeds);
        echo $result;
    }
    
    /*
     * Example: http://localhost:8080/fiddler-backend/index.php/API/feed?userId=159&start_timestamp=0&end_timestamp=0&start_index=0&count=10
     * 
     */
    public function actionFeed($userId, $start_timestamp, $end_timestamp, $start_index, $count) {
        $feeds = API::getFeeds($userId, $start_timestamp, $end_timestamp, $start_index, $count);
        echo $feeds;
    }

    /*
     *   Goal API ***************************************
     */

    public function actionGetGoals($userId) {
        $result = API::getGoals($userId);
        echo $result;
    }

    public function actionAddorUpdateGoal() {
        if (isset($_POST['userId'])) {
            $userId = $_POST['userId'];
        }
        if (isset($_POST['goal_obj'])) {
            $goal_obj = $_POST['goal_obj'];
        }
        $result = API::addorUpdateGoal($userId, $goal_obj);
        echo $result;
    }

    public function actionRemoveGoal($userId, $goal_id) {
        $result = API::removeGoal($userId, $goal_id);
        echo $result;
    }

    /*
     *   Note API ***************************************
     */

    
    public function actionGetNotes($userId) {
        $result = API::getNotes($userId);
        echo $result;
    }
    
    public function actionAddorUpdateNote() {
        if (isset($_POST['userId'])) {
            $userId = $_POST['userId'];
        }
        if (isset($_POST['note_obj'])) {
            $note_obj = $_POST['note_obj'];
        }
        $result = API::addorUpdateNote($userId, $note_obj);
        echo $result;
    }

    public function actionRemoveNote($userId, $note_id) {
        $result = API::removeNote($userId, $note_id);
        echo $result;
    }

    // Uncomment the following methods and override them if needed
    /*
      public function filters()
      {
      // return the filter configuration for this controller, e.g.:
      return array(
      'inlineFilterName',
      array(
      'class'=>'path.to.FilterClass',
      'propertyName'=>'propertyValue',
      ),
      );
      }

      public function actions()
      {
      // return external action classes, e.g.:
      return array(
      'action1'=>'path.to.ActionClass',
      'action2'=>array(
      'class'=>'path.to.AnotherActionClass',
      'propertyName'=>'propertyValue',
      ),
      );
      }
     */
}
