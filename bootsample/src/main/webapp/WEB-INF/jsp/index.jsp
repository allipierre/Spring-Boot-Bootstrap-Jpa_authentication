<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://apex.oracle.com/pls/apex/fw_consulting/r/1373/files/static/v21/favicon.ico">

    <title>Home</title>

    <!-- Bootstrap core CSS -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/css/style.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">





    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <style>
  
.img-wrapper {
  position: relative;
 }

.img-overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  text-align: center;
}

.img-overlay:before {
  content: ' ';
  display: block;
  /* adjust 'height' to position overlay content vertically */
  height: 50%;
}


.btn-responsive {
  /* matches 'btn-md' */
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
  border-radius: 6px;
}

@media (max-width:760px) {
    /* matches 'btn-xs' */
    .btn-responsive {
        padding: 1px 5px;
        font-size: 12px;
        line-height: 1.5;
        border-radius: 3px;
    }
}
.img-responsive{
  padding: 0 !important;
  margin: 0 auto !important;
  background-size: cover;
  overflow: hidden;
  background-size: cover;
    width: 100%;
    height: 100%;
    background-position: center center;

}
  
  </style>
  <body>
    <%@ include file = "header.jsp" %>
<div class="full" style="background-image:url('https://apex.oracle.com/pls/apex/fw_consulting/r/1373/files/static/v21/slider-2.jpg');">
  <div class="img-overlay">
        <button class="btn btn-md btn-success">Button</button>
        <button class="btn btn-md btn-success">Button</button>
      </div>
  <div class="container">
    <div class="row clearfix">
      <div style="padding: 0 0 750px 0;">
        <div class="col-xs-5 line">
          <hr>
        </div>
        <div class="col-xs-2 logo text-center">Logo</div>
        <div class="col-xs-5 line">
          <hr>
        </div>

      </div>
    </div>
  </div>
</div>

<%@ include file = "footer.jsp" %>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="/static/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>

