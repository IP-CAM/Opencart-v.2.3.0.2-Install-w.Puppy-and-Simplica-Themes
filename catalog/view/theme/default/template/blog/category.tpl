<?php echo $header; ?>
<div class="servisespage">
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
        <?php if ($thumb || $description) { ?>
        <?php if ($thumb) { ?>
        <div class="article_img">
          <img src="<?php echo $thumb; ?>" alt="Манікюр">
        <?php } ?>
        <?php } ?>
        <div class="article">
          <?php echo $description; ?>
        </div>
      </div>
    </div>
  </div>
 </div>
</div>
<?php echo $footer; ?>