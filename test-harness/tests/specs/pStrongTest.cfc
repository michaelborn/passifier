/**
 * The base model test case will use the 'model' annotation as the instantiation path
 * and then create it, prepare it for mocking and then place it in the variables scope as 'model'. It is your
 * responsibility to update the model annotation instantiation path and init your model.
 */
component
	extends      ="coldbox.system.testing.BaseModelTest"
	appMapping   ="root"
	loadColdBox  =true
	unloadColdBox=false
	model        ="pstrong.models.pStrong"
{

	function beforeAll(){
		super.beforeAll();

		// setup the model
		super.setup();

		if ( structKeyExists( variables, "model" ) ) {
			// init the model object
			model.init();

			// wire me up!
			getWirebox().autowire( model );
		}
	}

	function run(){
		describe( "pStrong", function(){
			it( "can instantiate via wirebox", function(){
				expect( getWirebox().getInstance( "pStrong@pstrong" ) ).toBeTypeOf( "component" );
			} );
			it( "can instantiate via hard path", function(){
				// Just to ensure users can use this lib with a manual instantiation if they really need to.
				expect( new pstrong.models.pStrong() ).toBeTypeOf( "component" );
			} );

			it( "can measure password complexity", function(){
				var strength = variables.model.measure( "password" );

				expect( strength ).toBeTypeOf( "Component" );
				expect( strength.getGuessesLog10() ).toBeNumeric();
				expect( strength.getCalcTime() ).toBeNumeric();
				expect( strength.getGuesses() ).toBeNumeric();
				expect( strength.getScore() ).toBeNumeric();
				expect( strength.getPassword() ).toBeString().toBe( "password" );


				/**
				 * Other components
				 */
				expect( strength.getCrackTimeSeconds() ).toBeComponent();
				expect( strength.getCrackTimesDisplay() ).toBeComponent();
				expect( strength.getFeedback() ).toBeComponent();
				// expect( strength.getSequence() ).toBeNumeric();
			} );
		} );
	}

}
