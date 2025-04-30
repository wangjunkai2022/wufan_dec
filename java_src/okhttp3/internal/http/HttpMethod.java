package okhttp3.internal.http;

import org.apache.http.client.methods.HttpDeleteHC4;
import org.apache.http.client.methods.HttpHeadHC4;
import org.apache.http.client.methods.HttpPatch;
import org.apache.http.client.methods.HttpPutHC4;
/* loaded from: classes5.dex */
public final class HttpMethod {
    private HttpMethod() {
    }

    public static boolean invalidatesCache(String str) {
        return str.equals("POST") || str.equals(HttpPatch.METHOD_NAME) || str.equals(HttpPutHC4.METHOD_NAME) || str.equals(HttpDeleteHC4.METHOD_NAME) || str.equals("MOVE");
    }

    public static boolean permitsRequestBody(String str) {
        return (str.equals("GET") || str.equals(HttpHeadHC4.METHOD_NAME)) ? false : true;
    }

    public static boolean redirectsToGet(String str) {
        return !str.equals("PROPFIND");
    }

    public static boolean redirectsWithBody(String str) {
        return str.equals("PROPFIND");
    }

    public static boolean requiresRequestBody(String str) {
        return str.equals("POST") || str.equals(HttpPutHC4.METHOD_NAME) || str.equals(HttpPatch.METHOD_NAME) || str.equals("PROPPATCH") || str.equals("REPORT");
    }
}
