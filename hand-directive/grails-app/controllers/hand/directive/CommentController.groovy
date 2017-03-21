package hand.directive

import grails.converters.JSON

import java.text.SimpleDateFormat

class CommentController {

   /* def showComment() {
        def directive_id=params.directive_id
        *//*List<Comment> comList=Comment.findAllByDirective_id(directive_id)
        params.comList=comList*//*
        List<Comment> comList =Comment.createCriteria().list(){
            eq("directive_id",directive_id)
            order("dateCreated", "desc")
        }
        params.comList=comList
    }*/
    def addComment(){
        def com=new Comment(
                comment_content:params.com_content,
                directive_id:params.directive_id
        )
        Map map = new HashMap()
        try{
            if(!com.save(flush: true)){
                log.error("评论失败:"+com.errors)
                map.put("msg","评论失败")
                map.put("code","f")
                render map as JSON
            }
        }catch (Exception e){
            log.error("评论异常"+e.getMessage())
            map.put("msg","评论异常")
            map.put("code","f")
            render map as JSON
        }
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        map.put("msg",formatter.format(com.dateCreated))
        map.put("code","s")
        render map as JSON
    }
}
