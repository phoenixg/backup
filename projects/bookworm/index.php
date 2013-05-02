<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post">
  <h3>字符：</h3>
  <input type="text" value="" id="w1" name="w1" style="width:50px;">
  <input type="text" value="" id="w2" name="w2" style="width:50px;">
  <input type="text" value="" id="w3" name="w3" style="width:50px;">
  <input type="text" value="" id="w4" name="w4" style="width:50px;">
  <input type="text" value="" id="w5" name="w5" style="width:50px;">
  <input type="text" value="" id="w6" name="w6" style="width:50px;">
  <input type="text" value="" id="w7" name="w7" style="width:50px;">
  <input type="text" value="" id="w8" name="w8" style="width:50px;">
  <input type="text" value="" id="w9" name="w9" style="width:50px;">
  <input type="text" value="" id="w10" name="w10" style="width:50px;">
  <input type="text" value="" id="w11" name="w11" style="width:50px;">
  <input type="text" value="" id="w12" name="w12" style="width:50px;">
  <input type="text" value="" id="w13" name="w13" style="width:50px;">
  <input type="text" value="" id="w14" name="w14" style="width:50px;">
  <input type="text" value="" id="w15" name="w15" style="width:50px;">
  <input type="text" value="" id="w16" name="w16" style="width:50px;">
  <input type="text" value="" id="w17" name="w17" style="width:50px;">
  <input type="text" value="" id="w18" name="w18" style="width:50px;">
  <input type="text" value="" id="w19" name="w19" style="width:50px;">
  <input type="text" value="" id="w20" name="w20" style="width:50px;">
  <input type="text" value="" id="w21" name="w21" style="width:50px;">
  <input type="text" value="" id="w22" name="w22" style="width:50px;">
  <input type="text" value="" id="w23" name="w23" style="width:50px;">
  <input type="text" value="" id="w24" name="w24" style="width:50px;">

  <br />
  <h3>占分：</h3>
  <input type="text" value="" id="v1" name="v1" style="width:50px;">
  <input type="text" value="" id="v2" name="v2" style="width:50px;">
  <input type="text" value="" id="v3" name="v3" style="width:50px;">
  <input type="text" value="" id="v4" name="v4" style="width:50px;">
  <input type="text" value="" id="v5" name="v5" style="width:50px;">
  <input type="text" value="" id="v6" name="v6" style="width:50px;">
  <input type="text" value="" id="v7" name="v7" style="width:50px;">
  <input type="text" value="" id="v8" name="v8" style="width:50px;">
  <input type="text" value="" id="v9" name="v9" style="width:50px;">
  <input type="text" value="" id="v10" name="v10" style="width:50px;">
  <input type="text" value="" id="v11" name="v11" style="width:50px;">
  <input type="text" value="" id="v12" name="v12" style="width:50px;">
  <input type="text" value="" id="v13" name="v13" style="width:50px;">
  <input type="text" value="" id="v14" name="v14" style="width:50px;">
  <input type="text" value="" id="v15" name="v15" style="width:50px;">
  <input type="text" value="" id="v16" name="v16" style="width:50px;">
  <input type="text" value="" id="v17" name="v17" style="width:50px;">
  <input type="text" value="" id="v18" name="v18" style="width:50px;">
  <input type="text" value="" id="v19" name="v19" style="width:50px;">
  <input type="text" value="" id="v20" name="v20" style="width:50px;">
  <input type="text" value="" id="v21" name="v21" style="width:50px;">
  <input type="text" value="" id="v22" name="v22" style="width:50px;">
  <input type="text" value="" id="v23" name="v23" style="width:50px;">
  <input type="text" value="" id="v24" name="v24" style="width:50px;">

  <br /><br />
  <input type="submit" value="计算" />
</form>

<hr />
</body>
</html>

<?php
// author: huangfeng

if(empty($_POST)) die;

//  接收并处理原始输入数据，w代表字符，v代表对应的分数
$data = array();
for($i=1;$i<=24;$i++){
  array_push($data, array('w' => strtoupper(trim($_POST['w'.$i])), 'v' => trim($_POST['v'.$i])));
}

// 去重以便计算求和的分数
$data_unduplicated = array();
foreach($data as $key => $value){
  $data_unduplicated[] = implode(',', $value);
}
$data_unduplicated = array_unique($data_unduplicated);

// 求每个字符的出现频次
$data_frequency = array();
foreach ($data as $arr) {
      $data_frequency[] = $arr['w'];
}
$data_frequency_result = array_count_values($data_frequency);

// 将词汇表文件读入数组
$words = file('./fullwordlist.txt', FILE_IGNORE_NEW_LINES);

// 将词汇表全部转成大写英文
$words = array_map(function ($word){
    return strtoupper($word);
}, $words);

// 对每个单词进行频次判断
$result = array();
foreach ($words as $k => $word) {
      // 遇到含有'的单词，就略过
      if(strpos($word, "'") > 0) continue;

      // 对$word做字母拆解，判断每个字母的出现频次
      $word_arr = str_split($word);
      $word_arr_frequency = array_count_values($word_arr);
      $pass = true;
      foreach ($word_arr_frequency as $character => $frequency) {
            if(!array_key_exists($character, $data_frequency_result) || ($data_frequency_result[$character] < $frequency)) {
              $pass = false;
            }
      }

      // 对筛选出的$word进行求分数操作
      if($pass) {
        $word_value = 0;
        foreach ($word_arr as $wkey => $wchar) {
          foreach($data_unduplicated as $data_item) {
            $data_item = explode(',', $data_item);
            // var_dump($data_item);  array 0 => string 'A' (length=1) 1 => string '3' (length=1)
            if($wchar != $data_item[0]) continue;
            $word_value += $data_item[1];
          }
        }
        $result[] = array('w' => $word, 'v' => $word_value);
      }
}

// 最后只选出分数最高的
$k = 0;
$highest = 0;
foreach ($result as $key => $item) {
  if(intval($item['v']) >= $highest){
    $highest = $item['v'];
    $k = $key;
  }
}

echo '最高分的词是：' . $result[$k]['w'] . '('.$result[$k]['v'].')';;
