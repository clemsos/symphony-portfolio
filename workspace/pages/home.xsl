<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<h1><xsl:value-of select="$page-title"/></h1>
	<div class="hero-unit">
		<p>
			I write <a href="http://wwww.github.com" title="Github profile">code</a>, <a href="{$root}/publications" title="Publications">articles</a> and <a href="http://mendeley.com" title="Publications">research papers</a>. I play with data and words to create <a >visualizations </a>. Now I am in <a>Shanghai</a>. You can read me
		</p>
	</div>
</xsl:template>

</xsl:stylesheet>