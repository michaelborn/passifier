component singleton {
    property name="zxcvbn" inject="javaloader:com.nulabinc.zxcvbn.Zxcvbn";

    public component function init(){
        return this;
    }

    public function measure( required string password ){
        return new Strength(
            variables.zxcvbn.measure( arguments.password )
        );
    }
}