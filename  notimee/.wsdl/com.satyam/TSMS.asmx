<?xml version="1.0" encoding="UTF-8" standalone="no"?><wsdl:definitions xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:tns="http://tempuri.org/" targetNamespace="http://tempuri.org/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://tempuri.org/">
      <s:element name="Get_Associate_Tasks">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="1" name="AssoId" type="s:int"/>
            <s:element maxOccurs="1" minOccurs="0" name="AccessKey" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Get_Associate_TasksResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="Get_Associate_TasksResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema"/>
                  <s:any/>
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Get_Activity_Categories">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="AssocID" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="strTaskId" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="AccessKey" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Get_Activity_CategoriesResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="Get_Activity_CategoriesResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema"/>
                  <s:any/>
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Save_Task">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="1" name="Associate_Id" type="s:int"/>
            <s:element maxOccurs="1" minOccurs="1" name="Entry_Date" type="s:dateTime"/>
            <s:element maxOccurs="1" minOccurs="0" name="TaskId" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="ActivityCategory_Id" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="1" name="HrsWorked" type="s:int"/>
            <s:element maxOccurs="1" minOccurs="1" name="MinsWorked" type="s:int"/>
            <s:element maxOccurs="1" minOccurs="1" name="POC" type="s:int"/>
            <s:element maxOccurs="1" minOccurs="1" name="Remaining_Hrs" type="s:double"/>
            <s:element maxOccurs="1" minOccurs="0" name="CustomField1" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="CustomField2" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="CustomField3" type="s:string"/>
            <s:element maxOccurs="1" minOccurs="0" name="AccessKey" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Save_TaskResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="Save_TaskResult" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Save_TimeSheet_Header">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="1" name="Associate_Id" type="s:int"/>
            <s:element maxOccurs="1" minOccurs="1" name="In_Time_Hrs" type="s:int"/>
            <s:element maxOccurs="1" minOccurs="1" name="In_Time_Mins" type="s:int"/>
            <s:element maxOccurs="1" minOccurs="1" name="Out_Time_Hrs" type="s:int"/>
            <s:element maxOccurs="1" minOccurs="1" name="Out_Time_Mins" type="s:int"/>
            <s:element maxOccurs="1" minOccurs="1" name="TimeSheetDate" type="s:dateTime"/>
            <s:element maxOccurs="1" minOccurs="1" name="Location" type="s:int"/>
            <s:element maxOccurs="1" minOccurs="1" name="Shift" type="s:int"/>
            <s:element maxOccurs="1" minOccurs="0" name="AccessKey" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Save_TimeSheet_HeaderResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="Save_TimeSheet_HeaderResult" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Submit_TimeSheet">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="1" name="Associate_Id" type="s:int"/>
            <s:element maxOccurs="1" minOccurs="1" name="Entry_Date" type="s:dateTime"/>
            <s:element maxOccurs="1" minOccurs="0" name="AccessKey" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Submit_TimeSheetResponse">
        <s:complexType>
          <s:sequence>
            <s:element maxOccurs="1" minOccurs="0" name="Submit_TimeSheetResult" type="s:string"/>
          </s:sequence>
        </s:complexType>
      </s:element>
    </s:schema>
  </wsdl:types>
  <wsdl:message name="Get_Associate_TasksSoapIn">
    <wsdl:part element="tns:Get_Associate_Tasks" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="Save_TaskSoapOut">
    <wsdl:part element="tns:Save_TaskResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="Save_TaskSoapIn">
    <wsdl:part element="tns:Save_Task" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="Get_Activity_CategoriesSoapOut">
    <wsdl:part element="tns:Get_Activity_CategoriesResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="Get_Activity_CategoriesSoapIn">
    <wsdl:part element="tns:Get_Activity_Categories" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="Submit_TimeSheetSoapIn">
    <wsdl:part element="tns:Submit_TimeSheet" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="Save_TimeSheet_HeaderSoapIn">
    <wsdl:part element="tns:Save_TimeSheet_Header" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="Get_Associate_TasksSoapOut">
    <wsdl:part element="tns:Get_Associate_TasksResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="Save_TimeSheet_HeaderSoapOut">
    <wsdl:part element="tns:Save_TimeSheet_HeaderResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:message name="Submit_TimeSheetSoapOut">
    <wsdl:part element="tns:Submit_TimeSheetResponse" name="parameters">
    </wsdl:part>
  </wsdl:message>
  <wsdl:portType name="TSMSSoap">
    <wsdl:operation name="Get_Associate_Tasks">
<wsdl:documentation>Get Associate Tasks</wsdl:documentation>
      <wsdl:input message="tns:Get_Associate_TasksSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:Get_Associate_TasksSoapOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Get_Activity_Categories">
<wsdl:documentation>Activies</wsdl:documentation>
      <wsdl:input message="tns:Get_Activity_CategoriesSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:Get_Activity_CategoriesSoapOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Save_Task">
<wsdl:documentation>Save Each Task</wsdl:documentation>
      <wsdl:input message="tns:Save_TaskSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:Save_TaskSoapOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Save_TimeSheet_Header">
<wsdl:documentation>Save Header</wsdl:documentation>
      <wsdl:input message="tns:Save_TimeSheet_HeaderSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:Save_TimeSheet_HeaderSoapOut">
    </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Submit_TimeSheet">
<wsdl:documentation>Submit Timesheet</wsdl:documentation>
      <wsdl:input message="tns:Submit_TimeSheetSoapIn">
    </wsdl:input>
      <wsdl:output message="tns:Submit_TimeSheetSoapOut">
    </wsdl:output>
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="TSMSSoap" type="tns:TSMSSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http"/>
    <wsdl:operation name="Get_Associate_Tasks">
      <soap:operation soapAction="http://tempuri.org/Get_Associate_Tasks" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Get_Activity_Categories">
      <soap:operation soapAction="http://tempuri.org/Get_Activity_Categories" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Save_Task">
      <soap:operation soapAction="http://tempuri.org/Save_Task" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Save_TimeSheet_Header">
      <soap:operation soapAction="http://tempuri.org/Save_TimeSheet_Header" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Submit_TimeSheet">
      <soap:operation soapAction="http://tempuri.org/Submit_TimeSheet" style="document"/>
      <wsdl:input>
        <soap:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="TSMSSoap12" type="tns:TSMSSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http"/>
    <wsdl:operation name="Get_Associate_Tasks">
      <soap12:operation soapAction="http://tempuri.org/Get_Associate_Tasks" style="document"/>
      <wsdl:input>
        <soap12:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Get_Activity_Categories">
      <soap12:operation soapAction="http://tempuri.org/Get_Activity_Categories" style="document"/>
      <wsdl:input>
        <soap12:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Save_Task">
      <soap12:operation soapAction="http://tempuri.org/Save_Task" style="document"/>
      <wsdl:input>
        <soap12:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Save_TimeSheet_Header">
      <soap12:operation soapAction="http://tempuri.org/Save_TimeSheet_Header" style="document"/>
      <wsdl:input>
        <soap12:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Submit_TimeSheet">
      <soap12:operation soapAction="http://tempuri.org/Submit_TimeSheet" style="document"/>
      <wsdl:input>
        <soap12:body use="literal"/>
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal"/>
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="TSMS">
    <wsdl:port binding="tns:TSMSSoap12" name="TSMSSoap12">
      <soap12:address location="http://ontime.satyam.com/Webservices/TSMS.asmx"/>
    </wsdl:port>
    <wsdl:port binding="tns:TSMSSoap" name="TSMSSoap">
      <soap:address location="http://ontime.satyam.com/Webservices/TSMS.asmx"/>
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>