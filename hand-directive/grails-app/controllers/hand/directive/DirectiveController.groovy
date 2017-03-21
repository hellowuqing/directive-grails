package hand.directive

import grails.converters.JSON


class DirectiveController {
    def index(){
        //List<Directive> direList=Directive.findAll()
        List<Directive> direList =Directive.createCriteria().list(){
            order("like_num", "desc")
        }
        List dire_comList=new ArrayList()
        //params.direList=direList
        /*指令相对应的评论*/
        for(def dire:direList){
            Map map = new HashMap()
            List<Comment> comList =Comment.createCriteria().list(){
                eq("directive_id",dire.id)
                order("dateCreated", "desc")
            }
            map.put("direObj",dire)
            map.put("comList",comList)
            dire_comList.add(map)
        }
        params.dire_comList=dire_comList
    }
    def addDirective() {
        def dire=Directive.findById(params.directive_id);
        if(!params.directive_id){
            dire=new Directive()
            dire.like_num=0
        }
        dire.author=params.author
        dire.directive_loc=params.directive_loc
        dire.directive_explain=params.directive_explain
        dire.directive_version=params.directive_version
        dire.is_directive_flag=params.is_directive_flag
        Map map = new HashMap()
        try{
            if(!dire.save(flush: true)){
                log.error(dire.errors)
                map.put("msg","保存指令失败")
                map.put("code","f")
                render map as JSON
            }
        }catch (Exception e){
            log.error(e.getMessage())
            map.put("msg","系统异常")
            map.put("code","f")
            render map as JSON
        }
        map.put("msg","保存指令成功")
        map.put("code","s")
        render map as JSON
    }
    def delDirective(){
        def dire=Directive.findById(params.directive_id)
        Map map = new HashMap();
        try {
            if(dire.delete(flush: true)){
                log.error(dire.errors)
                map.put("msg","数据删除不成功")
                map.put("code","f")
                render map as JSON
            }
            //Comment.executeUpdate("delete from hand.directive.Comment c where c.directive_id='${params.directive_id}'");
            List comList=Comment.findAllByDirective_id(params.directive_id)
           for(Comment com:comList){
               if(com){
                   if(com.delete(flush: true)){
                       log.error(com.errors)
                       map.put("msg","数据删除不成功")
                       map.put("code","f")
                       render map as JSON
                   }
               }
           }

        }catch (Exception e){
            log.error(e.getMessage())
            map.put("msg","数据删除异常")
            map.put("code","f")
            render map as JSON
        }
        map.put("msg","数据删除成功")
        map.put("code","s")
        render map as JSON
    }
    def addLikeNum(){
        def dire=Directive.findById(params.dire_id)
        Map map = new HashMap()
        try{
            dire.like_num=Integer.parseInt(params.like_num)
            if(!dire.save(flush: true)){
                log.error("点赞失败"+dire.errors)
                map.put("msg","点赞失败")
                map.put("code","f")
                render map as JSON
            }
        }catch (Exception e){
            log.error("系统异常:"+e.getMessage())
            map.put("msg","系统异常")
            map.put("code","f")
            render map as JSON
        }
        map.put("msg","点赞成功")
        map.put("code","s")
        render map as JSON
    }
    def editDirective(){
        def dire=Directive.findById(params.directive_id)
        Map map = new HashMap()
        if(dire){
            map.put("code","s")
            map.put("dire_obj",dire)
        }else{
            map.put("code","f")
        }
        render map as JSON
    }

}
