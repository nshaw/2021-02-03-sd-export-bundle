<#assign c=JspTaglibs[ "http://java.sun.com/jsp/jstl/core" ]>
<#assign wp=JspTaglibs[ "/aps-core" ]>
<@wp.currentPage param="code" var="currentPageCode" />
<@wp.freemarkerTemplateParameter var="currentPageCode" valueName="currentPageCode" />
<ul class="navbar-nav navbar-menu">
   <#assign homeClass=''class="home"''>
   <#if (currentPageCode=="home" )>
       <#assign homeClass=''class="home active"''>
   </#if>
   <@wp.nav var="page">
       <#if (previousPage?? && previousPage.code??)>
           <#assign previousLevel=previousPage.level>
           <#assign level=page.level>
           <@wp.freemarkerTemplateParameter var="level" valueName="level" />
           <@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
           <@wp.fragment code="entando-widget-navigation_bar_include" escapeXml=false />
       </#if>
       <@wp.freemarkerTemplateParameter var="previousPage" valueName="page" />
   </@wp.nav>
   <#if (previousPage??)>
       <#assign previousLevel=previousPage.level>
       <#assign level=0>
       <@wp.freemarkerTemplateParameter var="level" valueName="level" />
       <@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
       <@wp.fragment code="entando-widget-navigation_bar_include" escapeXml=false />
       <#if (previousLevel !=0 )><#list 0..(previousLevel - 1) as ignoreMe></ul></li></#list><#else></ul></#if>
   </#if>
   <@wp.freemarkerTemplateParameter var="previousPage" valueName="" removeOnEndTag=true />