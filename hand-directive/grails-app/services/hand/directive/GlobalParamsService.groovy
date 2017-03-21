package hand.directive

import grails.transaction.Transactional
import org.springframework.web.context.request.RequestContextHolder

@Transactional
class GlobalParamsService {

    def getUser() {
        def session = RequestContextHolder.currentRequestAttributes().getSession()
        return session.user
    }
}
