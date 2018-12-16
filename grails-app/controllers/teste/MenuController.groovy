package teste

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class MenuController {

    CompraService compraService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def login() {
        render view: '/loginE', model: [active: 'loginE']
    }

    /**
     * Action que retorna a timeline do usuário da sessão. A timeline
     * é formada por todas as postagens dos usuários que o usuário da
     * sessão segue.
     * @return
     */
    def carrinho() {
        def carrinho = []
        // se houver usuário na sessão
        if (session.user) {
            // recupera todos os usuários que o da sessão segue.
            def comprar =  compraService (session.user)//Descobrir como chamar o produto cliclado
            // para cada um dos encontrados...
            comprar.each { f ->
                // adicione os rewits à timeline
                carrinho += Compra.findAllByUser(f.followed)//Descobrir como chamar o produto cliclado
            }
        }
        // ordena a timeline pela postagem mais recente.
        carrinho = carrinho.sort { it.dateCreated }.reverse()
        /* na GSP, a variável para acessar a lista 'timeline' se chama
         * rewitList */
        respond carrinho, view :'/index', model: [active: 'carrinho']
    }
}
