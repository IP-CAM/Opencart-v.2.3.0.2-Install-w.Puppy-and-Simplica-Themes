<?php echo $header; ?>
<div class="breadcrumbs">
  <div class="container">
    <nav class="click_path border_bott">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
    </nav>
  </div>
</div>
<div class="contend">
  <div class="container">
    <div class="topic_txt">
      <h1><?php echo $heading_title; ?></h1>
    </div>
    <div class="cont white">
      <div class="article_img">
        <img src="/image/img/article/article_img_02.jpg" alt="Манікюр">
      </div>
      <div class="article">
        <?php echo $description; ?>
      </div>
    </div>
  </div>
</div>





<?php echo $footer; ?>