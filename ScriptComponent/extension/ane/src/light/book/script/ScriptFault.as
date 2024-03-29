package light.book.script
{
    import flash.events.ErrorEvent;
    import flash.events.Event;

    /**
     * Script was executed with errors
     */
    public class ScriptFault extends ErrorEvent
    {
        /**
         * Event type
         */
        public static const FAULT:String = "SCRIPT_FAULT";

        /**
         * Error description
         * @see ScriptError
         */
        public var error:ScriptError;

        /**
         * Script id
         */
        public var code:int;

        /**
         * Constructor
         * @param type event type
         * @param code script id
         * @param error script error object
         */
        public function ScriptFault(type:String, code:int, error:ScriptError)
        {
            super(type, false, false);
            this.code = code;
            this.error = error;
            this.text = error.toString();
        }

        /**
         * @inheritDoc
         */
        override public function clone():Event
        {
            var scriptFault:ScriptFault = new ScriptFault(type, code, error);
            scriptFault.text = text;
            return scriptFault;
        }
    }
}
