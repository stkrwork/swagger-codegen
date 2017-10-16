//
// FakeClassnameTags123API.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class FakeClassnameTags123API: APIBase {
    /**
     To test class name in snake case
     - parameter body: (body) client model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func testClassname(body: Client, completion: @escaping ((_ data: Client?, _ error: ErrorResponse?) -> Void)) {
        testClassnameWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     To test class name in snake case
     - PATCH /fake_classname_test
     - API Key:
       - type: apiKey api_key_query (QUERY)
       - name: api_key_query
     - examples: [{contentType=application/json, example={
  "client" : "client"
}}]
     - parameter body: (body) client model 
     - returns: RequestBuilder<Client> 
     */
    open class func testClassnameWithRequestBuilder(body: Client) -> RequestBuilder<Client> {
        let path = "/fake_classname_test"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON()

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Client>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
