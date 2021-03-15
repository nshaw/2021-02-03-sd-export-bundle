<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign liClass='' class="nav-item dropdown no-son-page">
<#assign homeIcon="">
<#assign caret="">
<#assign ulClass="">
<#assign aClassAndData="">
<#assign aURL=previousPage.url>
<#if (previousPage.voidPage)>
    <#assign aURL="#"/>
</#if>
<#if (previousPage.code?contains("homepage"))>
    <#assign homeIcon='<i class="icon-home"></i>&#32;'>
</#if>
<#if (previousPage.code==currentPageCode)>
    <#assign liClass='' class="nav-item active dropdown ">
</#if>
<#if (previousLevel < level)>
    <#assign liClass='' class="nav-item dropdown ">
    <#if (previousPage.code==currentPageCode)>
        <#assign liClass='' class="dropdown active">
    </#if>
    <#if previousPage.voidPage>
        <#assign liClass='' class="dropdown">
    </#if>
    <#if (previousLevel> 0) >
        <#assign liClass='' class="dropdown-submenu">
        <#if (previousPage.code==currentPageCode)>
            <#assign liClass='' class="dropdown-submenu active">
        </#if>
        <#assign ulClass='' class="dropdown-menu">
    </#if>
    <#assign aClassAndData='' class="nav-link dropdown-toggle" data-toggle="dropdown">
    <#if (previousLevel==0)>
        <#assign caret=" ">
        <#assign liClass='' class="nav-item dropdown ">
    </#if>
</#if>
<#if (previousLevel==0)>
    <li ${liClass} padre>
</#if>
<#if (aURL != "")>
    <a href="${aURL}" ${aClassAndData} class="nav-link no-son-page">${homeIcon}${previousPage.title}${caret}</a>
</#if>
<#if (aURL=="" )>
    <a href="#"></#if>
<#if (previousLevel==level)>
    <#if (previousLevel==0)>
       </li>
    </#if>
</#if>
<#if (previousLevel < level)>
    <ul class="dropdown-menu">
</#if>
<#if (previousLevel> level)>
    <#list 1..(previousLevel - level) as ignoreMe>
    </ul></#list></li>
</#if>

