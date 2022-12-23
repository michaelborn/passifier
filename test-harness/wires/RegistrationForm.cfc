component extends="cbwire.models.Component" {

    property name="Passifier" inject="Passifier@passifier";

    // Data Properties
    data = {
        "password" : ""
    };

    // Actions

    // Computed Properties
    computed = {
        "pstrength": function() {
            return variables.Passifier.measure( data.password );
        }
    };
}