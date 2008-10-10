
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.satyam{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface ITSMS
    {
    	//Stub functions for the Get_Associate_Tasks operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param AssoId
    	 * @param AccessKey
    	 * @return An AsyncToken
    	 */
    	function get_Associate_Tasks(assoId:Number,accessKey:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function get_Associate_Tasks_send():AsyncToken;
        
        /**
         * The get_Associate_Tasks operation lastResult property
         */
        function get get_Associate_Tasks_lastResult():Get_Associate_TasksResult_type0;
		/**
		 * @private
		 */
        function set get_Associate_Tasks_lastResult(lastResult:Get_Associate_TasksResult_type0):void;
       /**
        * Add a listener for the get_Associate_Tasks operation successful result event
        * @param The listener function
        */
       function addget_Associate_TasksEventListener(listener:Function):void;
       
       
        /**
         * The get_Associate_Tasks operation request wrapper
         */
        function get get_Associate_Tasks_request_var():Get_Associate_Tasks_request;
        
        /**
         * @private
         */
        function set get_Associate_Tasks_request_var(request:Get_Associate_Tasks_request):void;
                   
    	//Stub functions for the Get_Activity_Categories operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param AssocID
    	 * @param strTaskId
    	 * @param AccessKey
    	 * @return An AsyncToken
    	 */
    	function get_Activity_Categories(assocID:String,strTaskId:String,accessKey:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function get_Activity_Categories_send():AsyncToken;
        
        /**
         * The get_Activity_Categories operation lastResult property
         */
        function get get_Activity_Categories_lastResult():Get_Activity_CategoriesResult_type0;
		/**
		 * @private
		 */
        function set get_Activity_Categories_lastResult(lastResult:Get_Activity_CategoriesResult_type0):void;
       /**
        * Add a listener for the get_Activity_Categories operation successful result event
        * @param The listener function
        */
       function addget_Activity_CategoriesEventListener(listener:Function):void;
       
       
        /**
         * The get_Activity_Categories operation request wrapper
         */
        function get get_Activity_Categories_request_var():Get_Activity_Categories_request;
        
        /**
         * @private
         */
        function set get_Activity_Categories_request_var(request:Get_Activity_Categories_request):void;
                   
    	//Stub functions for the Save_Task operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param Associate_Id
    	 * @param Entry_Date
    	 * @param TaskId
    	 * @param ActivityCategory_Id
    	 * @param HrsWorked
    	 * @param MinsWorked
    	 * @param POC
    	 * @param Remaining_Hrs
    	 * @param CustomField1
    	 * @param CustomField2
    	 * @param CustomField3
    	 * @param AccessKey
    	 * @return An AsyncToken
    	 */
    	function save_Task(associate_Id:Number,entry_Date:Date,taskId:String,activityCategory_Id:String,hrsWorked:Number,minsWorked:Number,pOC:Number,remaining_Hrs:Number,customField1:String,customField2:String,customField3:String,accessKey:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function save_Task_send():AsyncToken;
        
        /**
         * The save_Task operation lastResult property
         */
        function get save_Task_lastResult():String;
		/**
		 * @private
		 */
        function set save_Task_lastResult(lastResult:String):void;
       /**
        * Add a listener for the save_Task operation successful result event
        * @param The listener function
        */
       function addsave_TaskEventListener(listener:Function):void;
       
       
        /**
         * The save_Task operation request wrapper
         */
        function get save_Task_request_var():Save_Task_request;
        
        /**
         * @private
         */
        function set save_Task_request_var(request:Save_Task_request):void;
                   
    	//Stub functions for the Save_TimeSheet_Header operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param Associate_Id
    	 * @param In_Time_Hrs
    	 * @param In_Time_Mins
    	 * @param Out_Time_Hrs
    	 * @param Out_Time_Mins
    	 * @param TimeSheetDate
    	 * @param Location
    	 * @param Shift
    	 * @param AccessKey
    	 * @return An AsyncToken
    	 */
    	function save_TimeSheet_Header(associate_Id:Number,in_Time_Hrs:Number,in_Time_Mins:Number,out_Time_Hrs:Number,out_Time_Mins:Number,timeSheetDate:Date,location:Number,shift:Number,accessKey:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function save_TimeSheet_Header_send():AsyncToken;
        
        /**
         * The save_TimeSheet_Header operation lastResult property
         */
        function get save_TimeSheet_Header_lastResult():String;
		/**
		 * @private
		 */
        function set save_TimeSheet_Header_lastResult(lastResult:String):void;
       /**
        * Add a listener for the save_TimeSheet_Header operation successful result event
        * @param The listener function
        */
       function addsave_TimeSheet_HeaderEventListener(listener:Function):void;
       
       
        /**
         * The save_TimeSheet_Header operation request wrapper
         */
        function get save_TimeSheet_Header_request_var():Save_TimeSheet_Header_request;
        
        /**
         * @private
         */
        function set save_TimeSheet_Header_request_var(request:Save_TimeSheet_Header_request):void;
                   
    	//Stub functions for the Submit_TimeSheet operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param Associate_Id
    	 * @param Entry_Date
    	 * @param AccessKey
    	 * @return An AsyncToken
    	 */
    	function submit_TimeSheet(associate_Id:Number,entry_Date:Date,accessKey:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function submit_TimeSheet_send():AsyncToken;
        
        /**
         * The submit_TimeSheet operation lastResult property
         */
        function get submit_TimeSheet_lastResult():String;
		/**
		 * @private
		 */
        function set submit_TimeSheet_lastResult(lastResult:String):void;
       /**
        * Add a listener for the submit_TimeSheet operation successful result event
        * @param The listener function
        */
       function addsubmit_TimeSheetEventListener(listener:Function):void;
       
       
        /**
         * The submit_TimeSheet operation request wrapper
         */
        function get submit_TimeSheet_request_var():Submit_TimeSheet_request;
        
        /**
         * @private
         */
        function set submit_TimeSheet_request_var(request:Submit_TimeSheet_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseTSMS;
	}
}