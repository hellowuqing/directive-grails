package hand.directive

class User {
    String   id
    String   username
    String   password
    String   createdBy
    String   updatedBy
    Date     dateCreated
    Date     lastUpdated
    Integer  version

    static constraints = {
        createdBy   nullable: true
        updatedBy   nullable: true
        dateCreated nullable: true
        lastUpdated nullable: true
    }

    static mapping = {
        table 'user'

        id                 generator: 'uuid.hex',column:'id'
        username           column: 'username'
        password           column: 'password'
        dateCreated        column:  'create_date'
        createdBy          column:  'created_by'
        updatedBy          column:  'updated_by'
        lastUpdated        column:  'update_date'
        version            column:  'version'
    }

    def globalParamsService
    def beforeInsert() {
        createdBy = globalParamsService.getUser() ? globalParamsService.getUser().id :"-1"
        updatedBy = globalParamsService.getUser() ? globalParamsService.getUser().id :"-1"
        Date time = new Date()
        dateCreated = time
        lastUpdated = time
    }

    def beforeUpdate() {
        updatedBy=globalParamsService.getUser() ? globalParamsService.getUser().id :"-1"
        lastUpdated = new Date()
    }
}
