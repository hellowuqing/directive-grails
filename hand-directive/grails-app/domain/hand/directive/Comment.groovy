package hand.directive

class Comment {
    String   id
    String   comment_content
    String   directive_id
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
        table 'comment'

        id                 generator: 'uuid.hex',column:'id'
        comment_content    column: 'comment_content'
        directive_id       column: 'directive_id'
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
