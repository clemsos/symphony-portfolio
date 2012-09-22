<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl"/>

<xsl:template match="data">
	<h1><xsl:value-of select="$page-title"/></h1>
	<script src="{$workspace}/assets/js/jquery.lifestream.js" type="text/javascript" charset="utf-8"></script>
	<script>
		 $(document).ready( function() {

			  $("#lifestream").lifestream({
			    list:[
			      {
			        service: "github",
			        user: "clemsos"
			      },
			      {
			        service: "twitter",
			        user: "clemsos"
			      },
			      {
			        service: "quora",
			        user: "Clément-Renaud"
			      },
			      {
			        service: "tumblr",
			        user: "clemsos"
			      },
			      {
			        service: "tumblr",
			        user: "clementrenaud"
			      }

			    ]
			  });
		  });
	</script>
	<div id="lifestream"></div>
</xsl:template>

</xsl:stylesheet>