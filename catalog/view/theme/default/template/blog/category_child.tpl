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
            <div class="cont">
                <div class="items services">
                 <?php foreach ($blog_category_child as $blog_cat) { ?>
                    <div class="item">
                        <div class="item_img">
                            <a href="<?php echo $blog_cat['href']; ?>"><img src="<?php echo $blog_cat['image']; ?>" alt="<?php echo $blog_cat['name']; ?>"  /></a>
                        </div>
                        <div class="item_desc">
                            <h2><a href="<?php echo $blog_cat['href']; ?>"><?php echo $blog_cat['name']; ?></a></h2>

                            <?php foreach ($blog_cat['articles'] as $r)  {   ?>

                            <p><a href="<?php echo $r['href']; ?>"><?php echo $r['title']; ?></a></p>
                            <?php } ?>
                        </div>
                    </div>
                  <?php } ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?php echo $footer; ?>
