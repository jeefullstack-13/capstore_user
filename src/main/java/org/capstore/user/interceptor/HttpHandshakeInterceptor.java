package org.capstore.user.interceptor;

import java.util.Map;

import javax.servlet.http.HttpSession;
 
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.HandshakeInterceptor;
 
@Component
//Interceptor for WebSocket handshake requests. Can be used to inspect the handshake request and response as well as to pass attributes to the target WebSocketHandler.
public class HttpHandshakeInterceptor implements HandshakeInterceptor {
 
    private static final Logger logger = LoggerFactory.getLogger(HttpHandshakeInterceptor.class);
     
    @Override
    public boolean beforeHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler,
            Map<String, Object> attributes) throws Exception {
    	
    /*	Parameters:
    		request - the current request
    		response - the current response
    		wsHandler - the target WebSocket handler
    		attributes - attributes from the HTTP handshake to associate with the WebSocket session; the provided attributes are copied, the original map is not used.
    		Returns:
    		whether to proceed with the handshake (true) or abort (false)
    		Throws:
    		java.lang.Exception*/
         
        logger.info("Call beforeHandshake");
       //Log a message at the info level
         
        if (request instanceof ServletServerHttpRequest) {
        	//Extends the ServletRequest interface to provide request information for HTTP servlets.
        	//The servlet container creates an HttpServletRequest object and passes it as an argument to the servlet's service methods (doGet, doPost, etc).
            ServletServerHttpRequest servletRequest = (ServletServerHttpRequest) request;
            HttpSession session = servletRequest.getServletRequest().getSession();
            attributes.put("sessionId", session.getId());
        }
        return true;
    }
 
    public void afterHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler,
            Exception ex) {
        logger.info("Call afterHandshake");
    }
}
 