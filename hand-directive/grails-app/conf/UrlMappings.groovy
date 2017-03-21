class UrlMappings {

	static mappings = {
        "/"(controller:"directive",action:"index")
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

       // "/"(view:"/index")
        "500"(view:'/error')
	}
}
