package teste

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class LoginEController {


    def doLogin() {
        def user = User.findByUsername(params.username)
        if (user) {
            // adicionando um usuario na sessao
            session.user = user
            // redirecionando para a página inicial
            redirect(view: 'index.gsp' )
        } else {
            // adicionando mensagem de erro
            flash.message = g.message(code: 'login.error.message')
            flash.error = true
            // renderizando novamente a view de login.
            render view: '/login', model: [active: 'login']
        }

    }

    /**
     * Action que efetua o logout. Remove o usuário da sessão
     * e depois a invalida.
     * @return
     */
    def doLogout() {
        if (session.user) {
            // removendo o usuario da sessao
            session.user = null
            // invalidando a sessao
            session.invalidate()
        }
        // redirecionando para a página inicial
        redirect(view: 'index.gsp' )
    }


}
