package hand.directive

import grails.converters.JSON

class UserController {

    def checkLogin() {
        def user=User.findByUsernameAndPassword(params.username,params.password)
        Map map = new HashMap()
        if(user!=null){
            map.put("msg","登陆成功")
            map.put("code","s")
            session.user=user
        }else{
            map.put("msg","登陆失败！用户名或密码有误")
            map.put("code","f")
        }
        render map as JSON
    }
    def logout(){
        session.user=null
        redirect controller: 'directive', action: 'index'
    }
}
