
<div class="scp-quizzes-main">

<div class="scp-quizzes-data">
  
<h3 class="text-center">Quiz</h3>
  <form action="<?php echo base_url('question/submit');?>" id="frm_quiz" method="POST">
  <?php
     $url =  base_url('api.json');
  ?>
  <?php 
    $data = file_get_contents($url);
    $json = json_decode($data,true);
    $i=1;
    foreach ($json['results'] as $key=>$val) {  ?>

    <h5><?php echo $val['question']; ?></h5>
    <br/>
    <input type="hidden" name="questionIds[]" value="<?php echo $val['question']; ?>">
       <label id="demo" class="<?php echo $i; ?>"  onclick="set(this,'<?php echo $i; ?>');"><input type="radio" class="<?php echo $i; ?>" name="answer_<?php echo $key.'[]'; ?>" value="<?php echo $val['correct_answer']; ?>"><?php echo $val['correct_answer']; ?></label><br/>
       <?php foreach ($val['incorrect_answers'] as $value) { ?>
       <label id="demo" class="<?php echo $i; ?>"  onclick="set(this,'<?php echo $i; ?>');"><input type="radio" class="<?php echo $i; ?>" name="answer_<?php echo $key.'[]'; ?>" value="<?php echo $value; ?>">
       <?php echo $value; ?></label><br/><br>
      <?php  } $i++; ?>
    <?php  }  ?>

    <input type="submit" value="submit" class="btn btn-warning" id="btn_quiz"><br><br>
  </form>
 </div>
</div>
</html>