<?php '<?xml version="1.0" encoding="UTF-8" ?>' ?>

<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
	<url>
		<loc><?= base_url('root.xml');?></loc> 
		<priority>1.0</priority>
	</url>

	<?php if ($sitemap_courses): ?>	
		<?php foreach($sitemap_courses as $sitemap) { ?>
			<url>
				<loc><?= base_url("{$sitemap}");?></loc> 
				<priority>0.5</priority>
			</url>    
		<?php } ?>    
	<?php endif ?>	

	<?php if ($sitemap_blog_post): ?>	
		<?php foreach($sitemap_blog_post as $sitemap) { ?>
			<url>
				<loc><?= base_url("{$sitemap}");?></loc> 
				<priority>0.5</priority>
			</url>    
		<?php } ?>    
	<?php endif ?>

	<?php if ($sitemap_blog_pages): ?>	
		<?php foreach($sitemap_blog_pages as $sitemap) { ?>
			<url>
				<loc><?= base_url("{$sitemap}");?></loc> 
				<priority>0.5</priority>
			</url>    
		<?php } ?>    
	<?php endif ?>	
</urlset>
