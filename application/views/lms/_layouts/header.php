<!DOCTYPE html>
<html lang="en-us">
<head>

	<?php echo $site['meta']; ?>

	<!-- CSS template -->
	<link rel="stylesheet" href="<?php echo base_url('storage/app/css/all-modules.css') ?>"/> 
	<link rel="stylesheet" href="<?php echo base_url('storage/app/css/main.min.css') ?>"/>
	<link rel="stylesheet" href="<?php echo base_url('storage/app/css/custom.css') ?>"/>

	<style>
	.responsive-video {position: relative; padding-bottom: 56.25%; padding-top: 60px; overflow: hidden; } .responsive-video iframe, .responsive-video object, .responsive-video embed {position: absolute; top: 0; left: 0; width: 100%; height: 100%; } 

	.post-body { 
		color: #000;
		font-family: Helvetica, Arial, sans-serif;
	}
	.post-body p {
		margin-bottom: 1rem;
	}   

	.post-body ol, .post-body ul {padding: 0 20px; }

	.post-body ol, .post-body ul {display: block; -webkit-margin-before: 1em; -webkit-margin-after: 1em; -webkit-margin-start: 0; -webkit-margin-end: 0; -webkit-padding-start: 40px; } .post-body ol li {list-style-type: decimal; padding-left: 5px; } .post-body ul li {list-style-type: square; padding-left: 5px; }

	code,pre{font-family:Menlo,Monaco,Consolas,"Courier New",monospace;font-size:16px;color:rgba(0,0,0,.8)} pre{background:#efefef;margin:16px 0;white-space:pre-wrap;margin:10px 0;padding:10px 15px;border:1px solid #ddd;overflow:auto} code{line-height:inherit;word-break:break-all;word-wrap:break-word}

	hr{border-top:1px solid rgba(0,0,0,0.12);display:block;margin-bottom:16px;width:100%} small{color:rgba(0,0,0,0.54);vertical-align:bottom} figcaption{font-family:Georgia,Times,"Times New Roman",serif} u{text-decoration:underline} s{text-decoration:line-through} sup{font-size:14px;vertical-align:super} sub{font-size:14px;vertical-align:sub} mark{background:#ffeb3b} hr{border-top:1px solid rgba(0,0,0,0.12);display:block;margin-bottom:16px;width:100%} img{height:auto;max-width:100%;vertical-align:baseline} 
	.post-body {word-wrap: break-word;}		
</style>

</head>
<body class="o-page <?php if(!empty($classbody)) echo $classbody;?>">

<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->
