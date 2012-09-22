<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:import href="page-title.xsl"/>
	<xsl:import href="navigation.xsl"/>

	<xsl:variable name="member-is-logged-in" select="boolean(//events/member-login-info/@logged-in = 'yes')"/>
	<xsl:param name="serie-title" value=''/>

	<xsl:output method="xml"
		doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
		omit-xml-declaration="yes"
		encoding="UTF-8"
		indent="yes" />
	
	<xsl:template match="/">

		<html lang="en" class="no-js">
			<head>
				<title><xsl:call-template name="page-title"/></title>
				<xsl:apply-templates mode="meta"/>
				<meta name="author" content="{$root}/humans.txt"/>
				<link rel="stylesheet" href="{$workspace}/assets/css/bootstrap.css"/>
				<link rel="stylesheet" href="{$workspace}/assets/css/bootstrap-responsive.css"/>
				<link rel="stylesheet" href="{$workspace}/assets/css/style.css"/>
				<xsl:apply-templates mode="styles"/>
				<script>
					var head_conf = { screens: [480, 768] };
				</script>
				<script src="{$workspace}/assets/js/head.js"></script>
				<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
			</head>
			<body class="{$current-page} container-fluid">
				<div id="wrapper" class="row-fluid ">

					<aside id="sidebar" class="span2">
						<xsl:apply-templates mode="branding"/>
						<xsl:apply-templates mode="menu"/>
						<xsl:apply-templates mode="contacts"/>
						<xsl:apply-templates mode="copyright"/>							
					</aside>

					<div id="content" role="main" class="span7">
						<xsl:apply-templates/>
					</div>
					
					<aside id="featured" class="span3">
						<xsl:apply-templates mode="featured" />
					</aside>

					<div class="clear"></div>	
				</div>
				<script>
					head.js(
						{jquery: "http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"},
						{site: "<xsl:value-of select="$workspace"/>/assets/js/site.js"},
						<xsl:apply-templates mode="loader"/>
						{analytics: "http://www.google-analytics.com/ga.js"}
					);
					head.ready(function(){
						<xsl:apply-templates mode="scripts"/>
						window._gaq = [['_setAccount','UA-XXXXX-X'],['_trackPageview'],['_trackPageLoadTime']];
					});
				</script>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="data" mode="loader"/>
	
	<xsl:template match="data" mode="featured"/>

	<xsl:template match="data" mode="meta">
		<meta name="description" content="{$meta}" />
		<meta name="keywords" content="{$keywords}" />
		<meta name="author" content="{$author}" />
		<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
	</xsl:template>
	
	<xsl:template match="data" mode="styles">
		<!--[if lt IE 8]>
		  <link rel="stylesheet" href="{$workspace}/ie.css" type="text/css" media="screen, projection">
		<![endif]-->
		<link rel="stylesheet" href="{$workspace}/assets/css/lifestream.css"/>
	</xsl:template>
	
	<xsl:template match="data" mode="scripts">
		<!--
			<script src="{$workspace}/js/jquery.cycle.all.min.js" type="text/javascript"></script>
			<script src="{$workspace}/js/peterdixie.js" type="text/javascript"></script>
		-->
	</xsl:template>

</xsl:stylesheet>
