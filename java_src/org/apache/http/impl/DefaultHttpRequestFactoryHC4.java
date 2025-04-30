package org.apache.http.impl;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestFactory;
import org.apache.http.MethodNotSupportedException;
import org.apache.http.RequestLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.methods.HttpDeleteHC4;
import org.apache.http.client.methods.HttpHeadHC4;
import org.apache.http.client.methods.HttpOptionsHC4;
import org.apache.http.client.methods.HttpPutHC4;
import org.apache.http.client.methods.HttpTraceHC4;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.util.Args;
@Immutable
/* loaded from: classes5.dex */
public class DefaultHttpRequestFactoryHC4 implements HttpRequestFactory {
    public static final DefaultHttpRequestFactoryHC4 INSTANCE = new DefaultHttpRequestFactoryHC4();
    private static final String[] RFC2616_COMMON_METHODS = {"GET"};
    private static final String[] RFC2616_ENTITY_ENC_METHODS = {"POST", HttpPutHC4.METHOD_NAME};
    private static final String[] RFC2616_SPECIAL_METHODS = {HttpHeadHC4.METHOD_NAME, HttpOptionsHC4.METHOD_NAME, HttpDeleteHC4.METHOD_NAME, HttpTraceHC4.METHOD_NAME, "CONNECT"};

    private static boolean isOneOf(String[] strArr, String str) {
        for (String str2 : strArr) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    public HttpRequest newHttpRequest(RequestLine requestLine) throws MethodNotSupportedException {
        Args.notNull(requestLine, "Request line");
        String method = requestLine.getMethod();
        if (isOneOf(RFC2616_COMMON_METHODS, method)) {
            return new BasicHttpRequest(requestLine);
        }
        if (isOneOf(RFC2616_ENTITY_ENC_METHODS, method)) {
            return new BasicHttpEntityEnclosingRequest(requestLine);
        }
        if (isOneOf(RFC2616_SPECIAL_METHODS, method)) {
            return new BasicHttpRequest(requestLine);
        }
        throw new MethodNotSupportedException(method + " method not supported");
    }

    public HttpRequest newHttpRequest(String str, String str2) throws MethodNotSupportedException {
        if (isOneOf(RFC2616_COMMON_METHODS, str)) {
            return new BasicHttpRequest(str, str2);
        }
        if (isOneOf(RFC2616_ENTITY_ENC_METHODS, str)) {
            return new BasicHttpEntityEnclosingRequest(str, str2);
        }
        if (isOneOf(RFC2616_SPECIAL_METHODS, str)) {
            return new BasicHttpRequest(str, str2);
        }
        throw new MethodNotSupportedException(str + " method not supported");
    }
}
