component accessors="true" {

	property
		name  ="OnlineThrottling100perHour"     
		type  ="numeric"
		setter="false";
	property
		name  ="OnlineNoThrottling10perSecond"  
		type  ="numeric"
		setter="false";
	property
		name  ="OfflineSlowHashing1e4perSecond" 
		type  ="numeric"
		setter="false";
	property
		name  ="OfflineFastHashing1e10PerSecond"
		type  ="numeric"
		setter="false";
	property name="CrackTimeSeconds";

	/**
	 * Public constructor. Populates self from the provided CrackTimeSeconds object.
	 *
	 * @CrackTimeSeconds The original CrackTimeSeconds object in its entirey, straight from the zxcvbn library.
	 */
	public component function init( required any CrackTimeSeconds ){
		variables.CrackTimeSeconds                = arguments.CrackTimeSeconds;
		variables.OnlineThrottling100perHour      = arguments.CrackTimeSeconds.getOnlineThrottling100perHour();
		variables.OnlineNoThrottling10perSecond   = arguments.CrackTimeSeconds.getOnlineNoThrottling10perSecond();
		variables.OfflineSlowHashing1e4perSecond  = arguments.CrackTimeSeconds.getOfflineSlowHashing1e4perSecond();
		variables.OfflineFastHashing1e10PerSecond = arguments.CrackTimeSeconds.getOfflineFastHashing1e10PerSecond();
		return this;
	}

	// /**
	//  * GETTERS
	//  */
	// public numeric function getOnlineThrottling100perHour(){}
	// public numeric function getOnlineNoThrottling10perSecond(){}
	// public numeric function getOfflineSlowHashing1e4perSecond(){}
	// public numeric function getOfflineFastHashing1e10PerSecond(){}

	// /**
	//  * SETTERS
	//  */
	// public void function setOnlineThrottling100perHour(required numeric value ){}
	// public void function setOnlineNoThrottling10perSecond(required numeric value ){}
	// public void function setOfflineSlowHashing1e4perSecond(required numeric value ){}
	// public void function setOfflineFastHashing1e10PerSecond(required numeric value ){}

}
