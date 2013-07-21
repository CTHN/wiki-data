<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Chaostreff Heilbronn -- awesome seit 2009</title>
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <link href="/assets/css/layout.css" rel="stylesheet" media="screen" />
  </head>
  <body>
    <script src="/assets/js/jquery.min.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script>

    <div class="navbar navbar-fixed-top navbar">
      <div class="navbar-inner">
        <?php content('navigation') ?>
      </div>
    </div>

    <div class="container" id="startpage">
      <?php content(active_page()) ?>
    </div>
  </body>
</html>

