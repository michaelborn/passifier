
/**
 * # estimated guesses needed to crack password
    strength.guesses

    # order of magnitude of strength.guesses
    strength.guessesLog10

    # dictionary of back-of-the-envelope crack time
    # estimations, in seconds, based on a few scenarios
    strength.crackTimeSeconds
    {
    # online attack on a service that ratelimits password auth attempts.
    onlineThrottling100PerHour

    # online attack on a service that doesn't ratelimit,
    # or where an attacker has outsmarted ratelimiting.
    onlineNoThrottling10PerSecond

    # offline attack. assumes multiple attackers,
    # proper user-unique salting, and a slow hash function
    # w/ moderate work factor, such as bcrypt, scrypt, PBKDF2.
    offlineSlowHashing1e4PerSecond

    # offline attack with user-unique salting but a fast hash
    # function like SHA-1, SHA-256 or MD5. A wide range of
    # reasonable numbers anywhere from one billion - one trillion
    # guesses per second, depending on number of cores and machines.
    # ballparking at 10B/sec.
    offlineFastHashing1e10PerSecond
    }

    # same keys as result.crack_time_seconds,
    # with friendlier display string values:
    # "less than a second", "3 hours", "centuries", etc.
    strength.crackTimeDisplay

    # Integer from 0-4 (useful for implementing a strength bar)
    # 0 Weak        （guesses < 10^3 + 5）
    # 1 Fair        （guesses < 10^6 + 5）
    # 2 Good        （guesses < 10^8 + 5）
    # 3 Strong      （guesses < 10^10 + 5）
    # 4 Very strong （guesses >= 10^10 + 5）
    strength.score

    # verbal feedback to help choose better passwords. set when score <= 2.
    strength.feedback
    {
    # explains what's wrong, eg. 'this is a top-10 common password'.
    # not always set -- sometimes an empty string
    warning

    # a possibly-empty list of suggestions to help choose a less
    # guessable password. eg. 'Add another word or two'
    suggestions
    }

    # the list of patterns that zxcvbn based the guess calculation on.
    strength.sequence

    # how long it took zxcvbn to calculate an answer, in milliseconds.
    strength.calc_time
*/
component accessors="true" {


    /**
     * Undocumented property
     */
    property name="GuessesLog10" setter="false";

    /**
     * Undocumented property
     */
    property name="CalcTime" setter="false";

    /**
     * Undocumented property
     */;
    property name="Guesses" setter="false";

    /**
     * Undocumented property
     */
    property name="CrackTimeSeconds" setter="false";

    /**
     * Undocumented property
     */
    property name="CrackTimesDisplay" setter="false";

    /**
     * Undocumented property
     */
    property name="Score" setter="false";

    /**
     * Undocumented property
     */
    property name="Sequence" setter="false";

    /**
     * Undocumented property
     */
    property name="Feedback" setter="false";

    /**
     * Undocumented property
     */
    property name="Password" setter="false";

    /**
     * The original Strength object in its entirey, straight from the zxcvbn library.
     */
    property name="Strength" type="component" setter="false";

    /**
     * Public constructor. Populates self from the provided Strength object.
     *
     * @strength The original Strength object in its entirey, straight from the zxcvbn library.
     */
    public component function init( required any strength ){
        variables.Strength = arguments.strength;

        variables.GuessesLog10 = arguments.strength.getGuessesLog10();
        variables.CalcTime = arguments.strength.getCalcTime();
        variables.Guesses = arguments.strength.getGuesses();
        variables.CrackTimeSeconds = new CrackTimeSeconds( arguments.strength.getCrackTimeSeconds() );
        variables.CrackTimesDisplay = new CrackTimesDisplay( arguments.strength.getCrackTimesDisplay() );
        variables.Score = arguments.strength.getScore();
        variables.Sequence = arguments.strength.getSequence();
        variables.Feedback = new Feedback( arguments.strength.getFeedback() );
        variables.Password = arguments.strength.getPassword();

        return this;
    }

    // /**
    //  * GETTERS
    //  */
    // public numeric function getGuessesLog10(){}
    // public numeric function getCalcTime(){}
    // public void function wipe(){}
    // public numeric function getGuesses(){}
    // public AttackTimes$CrackTimeSeconds	function getCrackTimeSeconds(){}
    // public AttackTimes	function getCrackTimesDisplay(){}
    // public integer function getScore(){}
    // public any function getSequence(){}
    // public Feedback	function getFeedback(){}
    // public any function getPassword(){}

    // /**
    //  * SETTERS
    //  */
    // public void function setGuesses( numeric value ){}
    // public void function setGuessesLog10( numeric value ){}
    // public void function setCalcTime( numeric value ){}
    // public void function setScore( numeric value ){}
    // public void function setSequence( ){}
    // public void function setCrackTimeSeconds( AttackTimes ){}
    // public void function setCrackTimesDisplay( AttackTimes ){}
    // public void function setFeedback( Feedback ){}
    // public void function setPassword( ){}
}