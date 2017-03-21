package hand.directive

class Directive {
    String   id
    String   directive_loc
    String   directive_explain
    String   directive_version
    String   author
    String   like_num
    String   is_directive_flag
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
        table 'directive'

        id                 generator: 'uuid.hex',column:'id'
        directive_loc      column: 'directive_loc'
        directive_explain  column: 'directive_explain'
        directive_version  column: 'directive_version'
        like_num           column: 'like_num'
        is_directive_flag  column: 'is_directive_flag'
        author             column:  'author'
        dateCreated        column:  'create_date'
        createdBy          column:  'created_by'
        updatedBy          column:  'updated_by'
        lastUpdated        column:  'update_date'
        version            column:  'version'
    }

    def globalParamsService
    def beforeInsert() {
        createdBy=globalParamsService.getUser() ? globalParamsService.getUser().id :"-1"
        updatedBy=globalParamsService.getUser() ? globalParamsService.getUser().id :"-1"
        Date time = new Date()
        dateCreated = time
        lastUpdated = time
    }

    def beforeUpdate() {
        updatedBy=globalParamsService.getUser() ? globalParamsService.getUser().id :"-1"
        lastUpdated = new Date()
    }
}
