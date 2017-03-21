import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_handDirectiveindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',4,['gsp_sm_xmlClosingForEmptyTag':(""),'charset':("utf-8")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("X-UA-Compatible"),'content':("IE=edge")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',7,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("description"),'content':("")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',8,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("author"),'content':("")],-1)
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',9,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',9,[:],2)
printHtmlPart(3)
invokeTag('stylesheet','asset',11,['src':("css/theme-core.min.css")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',12,['src':("bootstrap.min.css")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',13,['src':("css/module-essentials.min.css")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',14,['src':("css/module-layout.min.css")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',15,['src':("css/module-sidebar.min.css")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',16,['src':("css/module-sidebar-skins.min.css")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',17,['src':("css/module-navbar.min.css")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',18,['src':("css/module-timeline.min.css")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',19,['src':("css/module-cover.min.css")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',20,['src':("css/module-chat.min.css")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',21,['src':("css/animate.css")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',22,['src':("css/style.css")],-1)
printHtmlPart(4)
})
invokeTag('captureHead','sitemesh',24,[:],1)
printHtmlPart(5)
createClosureForHtmlPart(6, 1)
invokeTag('captureBody','sitemesh',27,[:],1)
printHtmlPart(7)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1471414142841L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
