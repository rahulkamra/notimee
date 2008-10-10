/**
 * Save_TaskResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package com.satyam
{
    import mx.utils.ObjectProxy;
    import flash.events.Event;
    import flash.utils.ByteArray;
    import mx.rpc.soap.types.*;
    /**
     * Typed event handler for the result of the operation
     */
    
    public class Save_TaskResultEvent extends Event
    {
        /**
         * The event type value
         */
        public static var Save_Task_RESULT:String="Save_Task_result";
        /**
         * Constructor for the new event type
         */
        public function Save_TaskResultEvent()
        {
            super(Save_Task_RESULT,false,false);
        }
        
        private var _headers:Object;
        private var _result:String;
         public function get result():String
        {
            return _result;
        }
        
        public function set result(value:String):void
        {
            _result = value;
        }

        public function get headers():Object
	    {
            return _headers;
	    }
			
	    public function set headers(value:Object):void
	    {
            _headers = value;
	    }
    }
}