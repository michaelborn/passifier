component accessors="true" {
    property name="OnlineThrottling100perHour" type="string" setter="false";
    property name="OnlineNoThrottling10perSecond" type="string" setter="false";
    property name="OfflineSlowHashing1e4perSecond" type="string" setter="false";
    property name="OfflineFastHashing1e10PerSecond" type="string" setter="false";
    property name="CrackTimesDisplay";

    /**
     * Public constructor. Populates self from the provided CrackTimesDisplay object.
     *
     * @CrackTimesDisplay The original CrackTimesDisplay object in its entirey, straight from the zxcvbn library.
     */
    public component function init( required any CrackTimesDisplay ){
        variables.CrackTimesDisplay = arguments.CrackTimesDisplay;

        variables.OnlineThrottling100perHour = arguments.CrackTimesDisplay.getOnlineThrottling100perHour();
        variables.OnlineNoThrottling10perSecond = arguments.CrackTimesDisplay.getOnlineNoThrottling10perSecond();
        variables.OfflineSlowHashing1e4perSecond = arguments.CrackTimesDisplay.getOfflineSlowHashing1e4perSecond();
        variables.OfflineFastHashing1e10PerSecond = arguments.CrackTimesDisplay.getOfflineFastHashing1e10PerSecond();

        return this;
    }

    // /**
    //  * GETTERS
    //  */
    // public string function getOnlineThrottling100perHour(){}
    // public string function getOnlineNoThrottling10perSecond(){}
    // public string function getOfflineSlowHashing1e4perSecond(){}
    // public string function getOfflineFastHashing1e10PerSecond(){}
    // /**
    //  * SETTERS
    //  */
    // public void function setOnlineThrottling100perHour( required string value ){}
    // public void function setOnlineNoThrottling10perSecond( required string value ){}
    // public void function setOfflineSlowHashing1e4perSecond( required string value ){}
    // public void function setOfflineFastHashing1e10PerSecond( required string value ){}
}