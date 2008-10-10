/**
 * Get_Activity_CategoriesResultEvent.as
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
    
    public class Get_Activity_CategoriesResultEvent extends Event
    {
        /**
         * The event type value
         */
        public static var Get_Activity_Categories_RESULT:String="Get_Activity_Categories_result";
        /**
         * Constructor for the new event type
         */
        public function Get_Activity_CategoriesResultEvent()
        {
            super(Get_Activity_Categories_RESULT,false,false);
        }
        
        private var _headers:Object;
        private var _result:Get_Activity_CategoriesResult_type0;
         public function get result():Get_Activity_CategoriesResult_type0
        {
            return _result;
        }
        
        public function set result(value:Get_Activity_CategoriesResult_type0):void
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