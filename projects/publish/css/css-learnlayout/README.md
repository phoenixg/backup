# 学习CSS布局

网址见：http://zh.learnlayout.com


    #main {
      max-width: 600px; // 更好地处理小窗口
      margin: 0 auto;      // auto可以居中
    }

    .simple {
      width: 500px;
      margin: 20px auto;
        /*
       -webkit-box-sizing: border-box;  //  分别加上这3行可以让.simple和.fancy的宽度一样
       -moz-box-sizing: border-box;      //  为利于排版，可以把所有元素都应用这个样式
          box-sizing: border-box;
        */
    }

    .fancy {
      width: 500px;
      margin: 20px auto;
      padding: 50px;
      border: solid blue 10px;
        /*
       -webkit-box-sizing: border-box;
       -moz-box-sizing: border-box;
          box-sizing: border-box;
        */
    }
