package teste

import grails.gorm.services.Service

@Service(LoginE)
interface LoginEService {

    LoginE get(Serializable id)

    List<LoginE> list(Map args)

    Long count()

    void delete(Serializable id)

    LoginE save(LoginE loginE)

}