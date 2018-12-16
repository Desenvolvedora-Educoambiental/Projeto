package teste

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class LoginEServiceSpec extends Specification {

    LoginEService loginEService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new LoginE(...).save(flush: true, failOnError: true)
        //new LoginE(...).save(flush: true, failOnError: true)
        //LoginE loginE = new LoginE(...).save(flush: true, failOnError: true)
        //new LoginE(...).save(flush: true, failOnError: true)
        //new LoginE(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //loginE.id
    }

    void "test get"() {
        setupData()

        expect:
        loginEService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<LoginE> loginEList = loginEService.list(max: 2, offset: 2)

        then:
        loginEList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        loginEService.count() == 5
    }

    void "test delete"() {
        Long loginEId = setupData()

        expect:
        loginEService.count() == 5

        when:
        loginEService.delete(loginEId)
        sessionFactory.currentSession.flush()

        then:
        loginEService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        LoginE loginE = new LoginE()
        loginEService.save(loginE)

        then:
        loginE.id != null
    }
}
