
/**
 * TSMSService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:TSMS= new TSMS();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addGet_Associate_TasksEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.Get_Associate_Tasks(myAssoId,myAccessKey);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="com.satyam.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:TSMS id="myService">
  *   <srv:Get_Associate_Tasks_request_var>
  *		<srv:Get_Associate_Tasks_request AssoId=myValue,AccessKey=myValue/>
  *   </srv:Get_Associate_Tasks_request_var>
  * </srv:TSMS>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.Get_Associate_Tasks_send()" />
  */
 package com.satyam{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation Get_Associate_Tasks completes with success
     * and returns some data
     * @eventType Get_Associate_TasksResultEvent
     */
    [Event(name="Get_Associate_Tasks_result", type="com.satyam.Get_Associate_TasksResultEvent")]
    
    /**
     * Dispatches when a call to the operation Get_Activity_Categories completes with success
     * and returns some data
     * @eventType Get_Activity_CategoriesResultEvent
     */
    [Event(name="Get_Activity_Categories_result", type="com.satyam.Get_Activity_CategoriesResultEvent")]
    
    /**
     * Dispatches when a call to the operation Save_Task completes with success
     * and returns some data
     * @eventType Save_TaskResultEvent
     */
    [Event(name="Save_Task_result", type="com.satyam.Save_TaskResultEvent")]
    
    /**
     * Dispatches when a call to the operation Save_TimeSheet_Header completes with success
     * and returns some data
     * @eventType Save_TimeSheet_HeaderResultEvent
     */
    [Event(name="Save_TimeSheet_Header_result", type="com.satyam.Save_TimeSheet_HeaderResultEvent")]
    
    /**
     * Dispatches when a call to the operation Submit_TimeSheet completes with success
     * and returns some data
     * @eventType Submit_TimeSheetResultEvent
     */
    [Event(name="Submit_TimeSheet_result", type="com.satyam.Submit_TimeSheetResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class TSMS extends EventDispatcher implements ITSMS
	{
    	private var _baseService:BaseTSMS;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function TSMS(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseTSMS(destination,rootURL);
        }
        
		//stub functions for the Get_Associate_Tasks operation
          

        /**
         * @see ITSMS#Get_Associate_Tasks()
         */
        public function get_Associate_Tasks(assoId:Number,accessKey:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.get_Associate_Tasks(assoId,accessKey);
            _internal_token.addEventListener("result",_Get_Associate_Tasks_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ITSMS#Get_Associate_Tasks_send()
		 */    
        public function get_Associate_Tasks_send():AsyncToken
        {
        	return get_Associate_Tasks(_Get_Associate_Tasks_request.AssoId,_Get_Associate_Tasks_request.AccessKey);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _Get_Associate_Tasks_request:Get_Associate_Tasks_request;
		/**
		 * @see ITSMS#Get_Associate_Tasks_request_var
		 */
		[Bindable]
		public function get get_Associate_Tasks_request_var():Get_Associate_Tasks_request
		{
			return _Get_Associate_Tasks_request;
		}
		
		/**
		 * @private
		 */
		public function set get_Associate_Tasks_request_var(request:Get_Associate_Tasks_request):void
		{
			_Get_Associate_Tasks_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _Get_Associate_Tasks_lastResult:Get_Associate_TasksResult_type0;
		[Bindable]
		/**
		 * @see ITSMS#Get_Associate_Tasks_lastResult
		 */	  
		public function get get_Associate_Tasks_lastResult():Get_Associate_TasksResult_type0
		{
			return _Get_Associate_Tasks_lastResult;
		}
		/**
		 * @private
		 */
		public function set get_Associate_Tasks_lastResult(lastResult:Get_Associate_TasksResult_type0):void
		{
			_Get_Associate_Tasks_lastResult = lastResult;
		}
		
		/**
		 * @see ITSMS#addGet_Associate_Tasks()
		 */
		public function addget_Associate_TasksEventListener(listener:Function):void
		{
			addEventListener(Get_Associate_TasksResultEvent.Get_Associate_Tasks_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _Get_Associate_Tasks_populate_results(event:ResultEvent):void
        {
        var e:Get_Associate_TasksResultEvent = new Get_Associate_TasksResultEvent();
		            e.result = event.result as Get_Associate_TasksResult_type0;
		                       e.headers = event.headers;
		             get_Associate_Tasks_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//stub functions for the Get_Activity_Categories operation
          

        /**
         * @see ITSMS#Get_Activity_Categories()
         */
        public function get_Activity_Categories(assocID:String,strTaskId:String,accessKey:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.get_Activity_Categories(assocID,strTaskId,accessKey);
            _internal_token.addEventListener("result",_Get_Activity_Categories_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ITSMS#Get_Activity_Categories_send()
		 */    
        public function get_Activity_Categories_send():AsyncToken
        {
        	return get_Activity_Categories(_Get_Activity_Categories_request.AssocID,_Get_Activity_Categories_request.strTaskId,_Get_Activity_Categories_request.AccessKey);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _Get_Activity_Categories_request:Get_Activity_Categories_request;
		/**
		 * @see ITSMS#Get_Activity_Categories_request_var
		 */
		[Bindable]
		public function get get_Activity_Categories_request_var():Get_Activity_Categories_request
		{
			return _Get_Activity_Categories_request;
		}
		
		/**
		 * @private
		 */
		public function set get_Activity_Categories_request_var(request:Get_Activity_Categories_request):void
		{
			_Get_Activity_Categories_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _Get_Activity_Categories_lastResult:Get_Activity_CategoriesResult_type0;
		[Bindable]
		/**
		 * @see ITSMS#Get_Activity_Categories_lastResult
		 */	  
		public function get get_Activity_Categories_lastResult():Get_Activity_CategoriesResult_type0
		{
			return _Get_Activity_Categories_lastResult;
		}
		/**
		 * @private
		 */
		public function set get_Activity_Categories_lastResult(lastResult:Get_Activity_CategoriesResult_type0):void
		{
			_Get_Activity_Categories_lastResult = lastResult;
		}
		
		/**
		 * @see ITSMS#addGet_Activity_Categories()
		 */
		public function addget_Activity_CategoriesEventListener(listener:Function):void
		{
			addEventListener(Get_Activity_CategoriesResultEvent.Get_Activity_Categories_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _Get_Activity_Categories_populate_results(event:ResultEvent):void
        {
        var e:Get_Activity_CategoriesResultEvent = new Get_Activity_CategoriesResultEvent();
		            e.result = event.result as Get_Activity_CategoriesResult_type0;
		                       e.headers = event.headers;
		             get_Activity_Categories_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//stub functions for the Save_Task operation
          

        /**
         * @see ITSMS#Save_Task()
         */
        public function save_Task(associate_Id:Number,entry_Date:Date,taskId:String,activityCategory_Id:String,hrsWorked:Number,minsWorked:Number,pOC:Number,remaining_Hrs:Number,customField1:String,customField2:String,customField3:String,accessKey:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.save_Task(associate_Id,entry_Date,taskId,activityCategory_Id,hrsWorked,minsWorked,pOC,remaining_Hrs,customField1,customField2,customField3,accessKey);
            _internal_token.addEventListener("result",_Save_Task_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ITSMS#Save_Task_send()
		 */    
        public function save_Task_send():AsyncToken
        {
        	return save_Task(_Save_Task_request.Associate_Id,_Save_Task_request.Entry_Date,_Save_Task_request.TaskId,_Save_Task_request.ActivityCategory_Id,_Save_Task_request.HrsWorked,_Save_Task_request.MinsWorked,_Save_Task_request.POC,_Save_Task_request.Remaining_Hrs,_Save_Task_request.CustomField1,_Save_Task_request.CustomField2,_Save_Task_request.CustomField3,_Save_Task_request.AccessKey);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _Save_Task_request:Save_Task_request;
		/**
		 * @see ITSMS#Save_Task_request_var
		 */
		[Bindable]
		public function get save_Task_request_var():Save_Task_request
		{
			return _Save_Task_request;
		}
		
		/**
		 * @private
		 */
		public function set save_Task_request_var(request:Save_Task_request):void
		{
			_Save_Task_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _Save_Task_lastResult:String;
		[Bindable]
		/**
		 * @see ITSMS#Save_Task_lastResult
		 */	  
		public function get save_Task_lastResult():String
		{
			return _Save_Task_lastResult;
		}
		/**
		 * @private
		 */
		public function set save_Task_lastResult(lastResult:String):void
		{
			_Save_Task_lastResult = lastResult;
		}
		
		/**
		 * @see ITSMS#addSave_Task()
		 */
		public function addsave_TaskEventListener(listener:Function):void
		{
			addEventListener(Save_TaskResultEvent.Save_Task_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _Save_Task_populate_results(event:ResultEvent):void
        {
        var e:Save_TaskResultEvent = new Save_TaskResultEvent();
		            e.result = event.result as String;
		                       e.headers = event.headers;
		             save_Task_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//stub functions for the Save_TimeSheet_Header operation
          

        /**
         * @see ITSMS#Save_TimeSheet_Header()
         */
        public function save_TimeSheet_Header(associate_Id:Number,in_Time_Hrs:Number,in_Time_Mins:Number,out_Time_Hrs:Number,out_Time_Mins:Number,timeSheetDate:Date,location:Number,shift:Number,accessKey:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.save_TimeSheet_Header(associate_Id,in_Time_Hrs,in_Time_Mins,out_Time_Hrs,out_Time_Mins,timeSheetDate,location,shift,accessKey);
            _internal_token.addEventListener("result",_Save_TimeSheet_Header_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ITSMS#Save_TimeSheet_Header_send()
		 */    
        public function save_TimeSheet_Header_send():AsyncToken
        {
        	return save_TimeSheet_Header(_Save_TimeSheet_Header_request.Associate_Id,_Save_TimeSheet_Header_request.In_Time_Hrs,_Save_TimeSheet_Header_request.In_Time_Mins,_Save_TimeSheet_Header_request.Out_Time_Hrs,_Save_TimeSheet_Header_request.Out_Time_Mins,_Save_TimeSheet_Header_request.TimeSheetDate,_Save_TimeSheet_Header_request.Location,_Save_TimeSheet_Header_request.Shift,_Save_TimeSheet_Header_request.AccessKey);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _Save_TimeSheet_Header_request:Save_TimeSheet_Header_request;
		/**
		 * @see ITSMS#Save_TimeSheet_Header_request_var
		 */
		[Bindable]
		public function get save_TimeSheet_Header_request_var():Save_TimeSheet_Header_request
		{
			return _Save_TimeSheet_Header_request;
		}
		
		/**
		 * @private
		 */
		public function set save_TimeSheet_Header_request_var(request:Save_TimeSheet_Header_request):void
		{
			_Save_TimeSheet_Header_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _Save_TimeSheet_Header_lastResult:String;
		[Bindable]
		/**
		 * @see ITSMS#Save_TimeSheet_Header_lastResult
		 */	  
		public function get save_TimeSheet_Header_lastResult():String
		{
			return _Save_TimeSheet_Header_lastResult;
		}
		/**
		 * @private
		 */
		public function set save_TimeSheet_Header_lastResult(lastResult:String):void
		{
			_Save_TimeSheet_Header_lastResult = lastResult;
		}
		
		/**
		 * @see ITSMS#addSave_TimeSheet_Header()
		 */
		public function addsave_TimeSheet_HeaderEventListener(listener:Function):void
		{
			addEventListener(Save_TimeSheet_HeaderResultEvent.Save_TimeSheet_Header_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _Save_TimeSheet_Header_populate_results(event:ResultEvent):void
        {
        var e:Save_TimeSheet_HeaderResultEvent = new Save_TimeSheet_HeaderResultEvent();
		            e.result = event.result as String;
		                       e.headers = event.headers;
		             save_TimeSheet_Header_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//stub functions for the Submit_TimeSheet operation
          

        /**
         * @see ITSMS#Submit_TimeSheet()
         */
        public function submit_TimeSheet(associate_Id:Number,entry_Date:Date,accessKey:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.submit_TimeSheet(associate_Id,entry_Date,accessKey);
            _internal_token.addEventListener("result",_Submit_TimeSheet_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ITSMS#Submit_TimeSheet_send()
		 */    
        public function submit_TimeSheet_send():AsyncToken
        {
        	return submit_TimeSheet(_Submit_TimeSheet_request.Associate_Id,_Submit_TimeSheet_request.Entry_Date,_Submit_TimeSheet_request.AccessKey);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _Submit_TimeSheet_request:Submit_TimeSheet_request;
		/**
		 * @see ITSMS#Submit_TimeSheet_request_var
		 */
		[Bindable]
		public function get submit_TimeSheet_request_var():Submit_TimeSheet_request
		{
			return _Submit_TimeSheet_request;
		}
		
		/**
		 * @private
		 */
		public function set submit_TimeSheet_request_var(request:Submit_TimeSheet_request):void
		{
			_Submit_TimeSheet_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _Submit_TimeSheet_lastResult:String;
		[Bindable]
		/**
		 * @see ITSMS#Submit_TimeSheet_lastResult
		 */	  
		public function get submit_TimeSheet_lastResult():String
		{
			return _Submit_TimeSheet_lastResult;
		}
		/**
		 * @private
		 */
		public function set submit_TimeSheet_lastResult(lastResult:String):void
		{
			_Submit_TimeSheet_lastResult = lastResult;
		}
		
		/**
		 * @see ITSMS#addSubmit_TimeSheet()
		 */
		public function addsubmit_TimeSheetEventListener(listener:Function):void
		{
			addEventListener(Submit_TimeSheetResultEvent.Submit_TimeSheet_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _Submit_TimeSheet_populate_results(event:ResultEvent):void
        {
        var e:Submit_TimeSheetResultEvent = new Submit_TimeSheetResultEvent();
		            e.result = event.result as String;
		                       e.headers = event.headers;
		             submit_TimeSheet_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//service-wide functions
		/**
		 * @see ITSMS#getWebService()
		 */
		public function getWebService():BaseTSMS
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addTSMSFaultEventListener(listener:Function):void
		{
			addEventListener("fault",listener);
		}
		
		/**
		 * Internal function to re-dispatch the fault event passed on by the base service implementation
		 * @private
		 */
		 
		 private function throwFault(event:FaultEvent):void
		 {
		 	dispatchEvent(event);
		 }
    }
}
