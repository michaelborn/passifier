component {
    property name="Feedback";

    /**
     * Public constructor. Populates self from the provided Feedback object.
     *
     * @Feedback The original Feedback object in its entirey, straight from the zxcvbn library.
     */
    public component function init( required any Feedback ){
        variables.Feedback = arguments.Feedback;

        variables.warning = arguments.Feedback.getWarning();
        variables.suggestions = arguments.Feedback.getSuggestions();

        return this;
    }

    /**
     * GETTERS
     */
    public string function getWarning(){
        return variables.warning;
    }
    public string function getWarning( string locale ){}
    public string function getSuggestions(){
        return variables.suggestions;
    }
    public string function getSuggestions( string locale ){}
}