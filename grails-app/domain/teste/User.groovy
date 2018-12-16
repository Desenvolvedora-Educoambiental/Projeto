package teste

class User {
    String username
    static hasMany = [compra: Compra]

    static constraints = {
        username(nullable: false, blank: false, unique: true)
    }
}
