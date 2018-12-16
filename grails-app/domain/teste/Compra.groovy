package teste

class Compra {
    Date dateCreated

    static belongsTo = [user: User]


    static constraints = {
    }
}
