<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="navigation">
    <xsl:apply-templates select="pages" />
    <xsl:apply-templates select="menu" />
	<xsl:apply-templates select="projects-nav/entry" />
</xsl:template>
 


<xsl:template match="data" mode="branding">
	<header id="branding">
		<h1><a href="{$root}"><xsl:value-of select="$website-name"/></a></h1>
	</header>
</xsl:template>

<xsl:template match="data" mode="menu">
	
	<ul id="menu" class="nav nav-tabs nav-stacked">
		<li class="home">
			<xsl:if test="$current-page = 'home'">
				     <xsl:attribute name="class">active</xsl:attribute>
			</xsl:if>
			<a href="{$root}" name="Back to Home">
				Home
			</a>
		</li>
		<li><a href="{$root}/projects">Projects</a></li>
		<li><a href="{$root}/publications">Publications</a></li>
		<li><a href="{$root}/blog">Blog</a></li>
		<li><a href="{$root}/lifestream">Lifestream</a></li>
		<li><a href="{$root}/languages">Languages</a></li>
		<li><a href="{$root}/contact">Contact</a></li>
	</ul>
</xsl:template>

<xsl:template match="data" mode="contacts">
	<div id="infos" class="last">
		<a href="mailto:{$email}" title="Get in touch with me"><xsl:value-of select="$email"/></a>
		<p><xsl:value-of select="$phone"/></p>
		<p>skype: <xsl:value-of select="$skype"/></p>
		<ul id='sns'>
			<li>
				<a  class="posterous" href="http://peterdixie.posterous.com">Weibo</a>
			</li>			
			<li>
				<a class="twitter" href="https://twitter.com/peterdixie">Twitter</a>
			</li>
			<li>
				<a class="weibo" href="http://blog.sina.com.cn/peterdixie">Posterous </a>
			</li>
			
		</ul>
		<div class="clear" />
	</div>
</xsl:template>

<xsl:template match="data" mode="copyright">
	<footer id="copyright" class="last">
		<p>(c) <xsl:value-of select="$name"/></p> 
		<p>No rights reserved</p>
	</footer>
</xsl:template>

<xsl:template match="pages">	
  <xsl:if test="not(types/type = 'hidden') and not(types/type = 'admin')">
    <li>
      	<a href="{$root}/{@handle}/">
	     <xsl:if test="$current-page-id = @id">
	        <xsl:attribute name="class">active</xsl:attribute>
	     </xsl:if>
        	<xsl:value-of select="name"/>
      	</a>
    </li>
  </xsl:if>
</xsl:template>

<xsl:template match="projects-nav/entry">
	<li>
		<xsl:if test="menu-top = 'Yes'">
	        <xsl:attribute name="class">top-item</xsl:attribute>
	     </xsl:if>
		<a href="{$root}/series/{title/@handle}">
	    <xsl:if test="$current-page = 'series'">
		     <xsl:if test=" ($serie-title != '') and ($serie-title = title/@handle) ">
		        <xsl:attribute name="class">active</xsl:attribute>
		     </xsl:if>
		</xsl:if>
		
		<xsl:value-of select="title"/>
		
		</a>
	</li>
</xsl:template>

</xsl:stylesheet>