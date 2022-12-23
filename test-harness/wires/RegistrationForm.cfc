component extends="cbwire.models.Component" {

    property name="pStrong" inject="pstrong@pstrong";

    // Data Properties
    data = {
        "password" : ""
    };

    // Actions

    // Computed Properties
    computed = {
        "pstrength": function() {
            return variables.pStrong.measure( data.password );
        }
    };
}