package org.jsoup.helper;

import com.facebook.common.util.f;
import com.j256.ormlite.stmt.query.SimpleComparison;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import kotlin.text.Typography;
import org.jsoup.Connection;
import org.jsoup.HttpStatusException;
import org.jsoup.UnsupportedMimeTypeException;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Parser;
import org.jsoup.parser.TokenQueue;
/* loaded from: classes5.dex */
public class HttpConnection implements Connection {
    private Connection.Request req = new Request();
    private Connection.Response res = new Response();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static abstract class Base<T extends Connection.Base> implements Connection.Base<T> {
        Map<String, String> cookies;
        Map<String, String> headers;
        Connection.Method method;
        URL url;

        private String getHeaderCaseInsensitive(String str) {
            Map.Entry<String, String> scanHeaders;
            Validate.notNull(str, "Header name must not be null");
            String str2 = this.headers.get(str);
            if (str2 == null) {
                str2 = this.headers.get(str.toLowerCase());
            }
            return (str2 != null || (scanHeaders = scanHeaders(str)) == null) ? str2 : scanHeaders.getValue();
        }

        private Map.Entry<String, String> scanHeaders(String str) {
            String lowerCase = str.toLowerCase();
            for (Map.Entry<String, String> entry : this.headers.entrySet()) {
                if (entry.getKey().toLowerCase().equals(lowerCase)) {
                    return entry;
                }
            }
            return null;
        }

        @Override // org.jsoup.Connection.Base
        public String cookie(String str) {
            Validate.notNull(str, "Cookie name must not be null");
            return this.cookies.get(str);
        }

        @Override // org.jsoup.Connection.Base
        public Map<String, String> cookies() {
            return this.cookies;
        }

        @Override // org.jsoup.Connection.Base
        public boolean hasCookie(String str) {
            Validate.notEmpty("Cookie name must not be empty");
            return this.cookies.containsKey(str);
        }

        @Override // org.jsoup.Connection.Base
        public boolean hasHeader(String str) {
            Validate.notEmpty(str, "Header name must not be empty");
            return getHeaderCaseInsensitive(str) != null;
        }

        @Override // org.jsoup.Connection.Base
        public String header(String str) {
            Validate.notNull(str, "Header name must not be null");
            return getHeaderCaseInsensitive(str);
        }

        @Override // org.jsoup.Connection.Base
        public Map<String, String> headers() {
            return this.headers;
        }

        @Override // org.jsoup.Connection.Base
        public Connection.Method method() {
            return this.method;
        }

        @Override // org.jsoup.Connection.Base
        public T removeCookie(String str) {
            Validate.notEmpty("Cookie name must not be empty");
            this.cookies.remove(str);
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public T removeHeader(String str) {
            Validate.notEmpty(str, "Header name must not be empty");
            Map.Entry<String, String> scanHeaders = scanHeaders(str);
            if (scanHeaders != null) {
                this.headers.remove(scanHeaders.getKey());
            }
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public URL url() {
            return this.url;
        }

        private Base() {
            this.headers = new LinkedHashMap();
            this.cookies = new LinkedHashMap();
        }

        @Override // org.jsoup.Connection.Base
        public T method(Connection.Method method) {
            Validate.notNull(method, "Method must not be null");
            this.method = method;
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public T url(URL url) {
            Validate.notNull(url, "URL must not be null");
            this.url = url;
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public T cookie(String str, String str2) {
            Validate.notEmpty(str, "Cookie name must not be empty");
            Validate.notNull(str2, "Cookie value must not be null");
            this.cookies.put(str, str2);
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public T header(String str, String str2) {
            Validate.notEmpty(str, "Header name must not be empty");
            Validate.notNull(str2, "Header value must not be null");
            removeHeader(str);
            this.headers.put(str, str2);
            return this;
        }
    }

    /* loaded from: classes5.dex */
    public static class KeyVal implements Connection.KeyVal {
        private String key;
        private String value;

        private KeyVal(String str, String str2) {
            this.key = str;
            this.value = str2;
        }

        public static KeyVal create(String str, String str2) {
            Validate.notEmpty(str, "Data key must not be empty");
            Validate.notNull(str2, "Data value must not be null");
            return new KeyVal(str, str2);
        }

        public String toString() {
            return this.key + SimpleComparison.EQUAL_TO_OPERATION + this.value;
        }

        @Override // org.jsoup.Connection.KeyVal
        public KeyVal key(String str) {
            Validate.notEmpty(str, "Data key must not be empty");
            this.key = str;
            return this;
        }

        @Override // org.jsoup.Connection.KeyVal
        public KeyVal value(String str) {
            Validate.notNull(str, "Data value must not be null");
            this.value = str;
            return this;
        }

        @Override // org.jsoup.Connection.KeyVal
        public String key() {
            return this.key;
        }

        @Override // org.jsoup.Connection.KeyVal
        public String value() {
            return this.value;
        }
    }

    /* loaded from: classes5.dex */
    public static class Request extends Base<Connection.Request> implements Connection.Request {
        private Collection<Connection.KeyVal> data;
        private boolean followRedirects;
        private boolean ignoreContentType;
        private boolean ignoreHttpErrors;
        private int maxBodySizeBytes;
        private Parser parser;
        private int timeoutMilliseconds;

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ String cookie(String str) {
            return super.cookie(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map cookies() {
            return super.cookies();
        }

        @Override // org.jsoup.Connection.Request
        public boolean followRedirects() {
            return this.followRedirects;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasCookie(String str) {
            return super.hasCookie(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasHeader(String str) {
            return super.hasHeader(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ String header(String str) {
            return super.header(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map headers() {
            return super.headers();
        }

        @Override // org.jsoup.Connection.Request
        public boolean ignoreContentType() {
            return this.ignoreContentType;
        }

        @Override // org.jsoup.Connection.Request
        public boolean ignoreHttpErrors() {
            return this.ignoreHttpErrors;
        }

        @Override // org.jsoup.Connection.Request
        public int maxBodySize() {
            return this.maxBodySizeBytes;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Method method() {
            return super.method();
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ URL url() {
            return super.url();
        }

        private Request() {
            super();
            this.ignoreHttpErrors = false;
            this.ignoreContentType = false;
            this.timeoutMilliseconds = 3000;
            this.maxBodySizeBytes = 1048576;
            this.followRedirects = true;
            this.data = new ArrayList();
            this.method = Connection.Method.GET;
            this.headers.put("Accept-Encoding", "gzip");
            this.parser = Parser.htmlParser();
        }

        @Override // org.jsoup.Connection.Request
        public Request data(Connection.KeyVal keyVal) {
            Validate.notNull(keyVal, "Key val must not be null");
            this.data.add(keyVal);
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request followRedirects(boolean z3) {
            this.followRedirects = z3;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request ignoreContentType(boolean z3) {
            this.ignoreContentType = z3;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request ignoreHttpErrors(boolean z3) {
            this.ignoreHttpErrors = z3;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request maxBodySize(int i2) {
            Validate.isTrue(i2 >= 0, "maxSize must be 0 (unlimited) or larger");
            this.maxBodySizeBytes = i2;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Request parser(Parser parser) {
            this.parser = parser;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public int timeout() {
            return this.timeoutMilliseconds;
        }

        @Override // org.jsoup.Connection.Request
        public Parser parser() {
            return this.parser;
        }

        @Override // org.jsoup.Connection.Request
        public Request timeout(int i2) {
            Validate.isTrue(i2 >= 0, "Timeout milliseconds must be 0 (infinite) or greater");
            this.timeoutMilliseconds = i2;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Collection<Connection.KeyVal> data() {
            return this.data;
        }
    }

    /* loaded from: classes5.dex */
    public static class Response extends Base<Connection.Response> implements Connection.Response {
        private static final int MAX_REDIRECTS = 20;
        private ByteBuffer byteData;
        private String charset;
        private String contentType;
        private boolean executed;
        private int numRedirects;
        private Connection.Request req;
        private int statusCode;
        private String statusMessage;

        Response() {
            super();
            this.executed = false;
            this.numRedirects = 0;
        }

        private static HttpURLConnection createConnection(Connection.Request request) throws IOException {
            HttpURLConnection httpURLConnection = (HttpURLConnection) request.url().openConnection();
            httpURLConnection.setRequestMethod(request.method().name());
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setConnectTimeout(request.timeout());
            httpURLConnection.setReadTimeout(request.timeout());
            if (request.method() == Connection.Method.POST) {
                httpURLConnection.setDoOutput(true);
            }
            if (request.cookies().size() > 0) {
                httpURLConnection.addRequestProperty(HttpHeaders.Names.COOKIE, getRequestCookieString(request));
            }
            for (Map.Entry<String, String> entry : request.headers().entrySet()) {
                httpURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
            }
            return httpURLConnection;
        }

        static Response execute(Connection.Request request) throws IOException {
            return execute(request, null);
        }

        private static String getRequestCookieString(Connection.Request request) {
            StringBuilder sb = new StringBuilder();
            boolean z3 = true;
            for (Map.Entry<String, String> entry : request.cookies().entrySet()) {
                if (z3) {
                    z3 = false;
                } else {
                    sb.append("; ");
                }
                sb.append(entry.getKey());
                sb.append('=');
                sb.append(entry.getValue());
            }
            return sb.toString();
        }

        private static void serialiseRequestUrl(Connection.Request request) throws IOException {
            boolean z3;
            URL url = request.url();
            StringBuilder sb = new StringBuilder();
            sb.append(url.getProtocol());
            sb.append("://");
            sb.append(url.getAuthority());
            sb.append(url.getPath());
            sb.append("?");
            if (url.getQuery() != null) {
                sb.append(url.getQuery());
                z3 = false;
            } else {
                z3 = true;
            }
            for (Connection.KeyVal keyVal : request.data()) {
                if (z3) {
                    z3 = false;
                } else {
                    sb.append(Typography.amp);
                }
                sb.append(URLEncoder.encode(keyVal.key(), "UTF-8"));
                sb.append('=');
                sb.append(URLEncoder.encode(keyVal.value(), "UTF-8"));
            }
            request.url(new URL(sb.toString()));
            request.data().clear();
        }

        private void setupFromConnection(HttpURLConnection httpURLConnection, Connection.Response response) throws IOException {
            this.method = Connection.Method.valueOf(httpURLConnection.getRequestMethod());
            this.url = httpURLConnection.getURL();
            this.statusCode = httpURLConnection.getResponseCode();
            this.statusMessage = httpURLConnection.getResponseMessage();
            this.contentType = httpURLConnection.getContentType();
            processResponseHeaders(httpURLConnection.getHeaderFields());
            if (response != null) {
                for (Map.Entry<String, String> entry : response.cookies().entrySet()) {
                    if (!hasCookie(entry.getKey())) {
                        cookie(entry.getKey(), entry.getValue());
                    }
                }
            }
        }

        private static void writePost(Collection<Connection.KeyVal> collection, OutputStream outputStream) throws IOException {
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, "UTF-8");
            boolean z3 = true;
            for (Connection.KeyVal keyVal : collection) {
                if (z3) {
                    z3 = false;
                } else {
                    outputStreamWriter.append(Typography.amp);
                }
                outputStreamWriter.write(URLEncoder.encode(keyVal.key(), "UTF-8"));
                outputStreamWriter.write(61);
                outputStreamWriter.write(URLEncoder.encode(keyVal.value(), "UTF-8"));
            }
            outputStreamWriter.close();
        }

        @Override // org.jsoup.Connection.Response
        public String body() {
            String charBuffer;
            Validate.isTrue(this.executed, "Request must be executed (with .execute(), .get(), or .post() before getting response body");
            String str = this.charset;
            if (str == null) {
                charBuffer = Charset.forName("UTF-8").decode(this.byteData).toString();
            } else {
                charBuffer = Charset.forName(str).decode(this.byteData).toString();
            }
            this.byteData.rewind();
            return charBuffer;
        }

        @Override // org.jsoup.Connection.Response
        public byte[] bodyAsBytes() {
            Validate.isTrue(this.executed, "Request must be executed (with .execute(), .get(), or .post() before getting response body");
            return this.byteData.array();
        }

        @Override // org.jsoup.Connection.Response
        public String charset() {
            return this.charset;
        }

        @Override // org.jsoup.Connection.Response
        public String contentType() {
            return this.contentType;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ String cookie(String str) {
            return super.cookie(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map cookies() {
            return super.cookies();
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasCookie(String str) {
            return super.hasCookie(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasHeader(String str) {
            return super.hasHeader(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ String header(String str) {
            return super.header(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map headers() {
            return super.headers();
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Method method() {
            return super.method();
        }

        @Override // org.jsoup.Connection.Response
        public Document parse() throws IOException {
            Validate.isTrue(this.executed, "Request must be executed (with .execute(), .get(), or .post() before parsing response");
            Document parseByteData = DataUtil.parseByteData(this.byteData, this.charset, this.url.toExternalForm(), this.req.parser());
            this.byteData.rewind();
            this.charset = parseByteData.outputSettings().charset().name();
            return parseByteData;
        }

        void processResponseHeaders(Map<String, List<String>> map) {
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key != null) {
                    List<String> value = entry.getValue();
                    if (key.equalsIgnoreCase(HttpHeaders.Names.SET_COOKIE)) {
                        for (String str : value) {
                            if (str != null) {
                                TokenQueue tokenQueue = new TokenQueue(str);
                                String trim = tokenQueue.chompTo(SimpleComparison.EQUAL_TO_OPERATION).trim();
                                String trim2 = tokenQueue.consumeTo(";").trim();
                                if (trim2 == null) {
                                    trim2 = "";
                                }
                                if (trim != null && trim.length() > 0) {
                                    cookie(trim, trim2);
                                }
                            }
                        }
                    } else if (!value.isEmpty()) {
                        header(key, value.get(0));
                    }
                }
            }
        }

        @Override // org.jsoup.Connection.Response
        public int statusCode() {
            return this.statusCode;
        }

        @Override // org.jsoup.Connection.Response
        public String statusMessage() {
            return this.statusMessage;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ URL url() {
            return super.url();
        }

        static Response execute(Connection.Request request, Response response) throws IOException {
            InputStream inputStream;
            Validate.notNull(request, "Request must not be null");
            String protocol = request.url().getProtocol();
            if (!protocol.equals(f.f11765a) && !protocol.equals("https")) {
                throw new MalformedURLException("Only http & https protocols supported");
            }
            Connection.Method method = request.method();
            Connection.Method method2 = Connection.Method.GET;
            if (method == method2 && request.data().size() > 0) {
                serialiseRequestUrl(request);
            }
            HttpURLConnection createConnection = createConnection(request);
            try {
                createConnection.connect();
                if (request.method() == Connection.Method.POST) {
                    writePost(request.data(), createConnection.getOutputStream());
                }
                int responseCode = createConnection.getResponseCode();
                boolean z3 = false;
                if (responseCode != 200) {
                    if (responseCode != 302 && responseCode != 301 && responseCode != 303) {
                        if (!request.ignoreHttpErrors()) {
                            throw new HttpStatusException("HTTP error fetching URL", responseCode, request.url().toString());
                        }
                    }
                    z3 = true;
                }
                Response response2 = new Response(response);
                response2.setupFromConnection(createConnection, response);
                if (z3 && request.followRedirects()) {
                    request.method(method2);
                    request.data().clear();
                    request.url(new URL(request.url(), response2.header("Location")));
                    for (Map.Entry<String, String> entry : response2.cookies.entrySet()) {
                        request.cookie(entry.getKey(), entry.getValue());
                    }
                    return execute(request, response2);
                }
                response2.req = request;
                String contentType = response2.contentType();
                if (contentType != null && !request.ignoreContentType() && !contentType.startsWith("text/") && !contentType.startsWith("application/xml") && !contentType.startsWith("application/xhtml+xml")) {
                    throw new UnsupportedMimeTypeException("Unhandled content type. Must be text/*, application/xml, or application/xhtml+xml", contentType, request.url().toString());
                }
                BufferedInputStream bufferedInputStream = null;
                try {
                    inputStream = createConnection.getErrorStream() != null ? createConnection.getErrorStream() : createConnection.getInputStream();
                    try {
                        bufferedInputStream = (response2.hasHeader("Content-Encoding") && response2.header("Content-Encoding").equalsIgnoreCase("gzip")) ? new BufferedInputStream(new GZIPInputStream(inputStream)) : new BufferedInputStream(inputStream);
                        response2.byteData = DataUtil.readToByteBuffer(bufferedInputStream, request.maxBodySize());
                        response2.charset = DataUtil.getCharsetFromContentType(response2.contentType);
                        bufferedInputStream.close();
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        createConnection.disconnect();
                        response2.executed = true;
                        return response2;
                    } catch (Throwable th) {
                        th = th;
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = null;
                }
            } finally {
                createConnection.disconnect();
            }
        }

        private Response(Response response) throws IOException {
            super();
            this.executed = false;
            this.numRedirects = 0;
            if (response != null) {
                int i2 = response.numRedirects + 1;
                this.numRedirects = i2;
                if (i2 >= 20) {
                    throw new IOException(String.format("Too many redirects occurred trying to load URL %s", response.url()));
                }
            }
        }
    }

    private HttpConnection() {
    }

    public static Connection connect(String str) {
        HttpConnection httpConnection = new HttpConnection();
        httpConnection.url(str);
        return httpConnection;
    }

    @Override // org.jsoup.Connection
    public Connection cookie(String str, String str2) {
        this.req.cookie(str, str2);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection cookies(Map<String, String> map) {
        Validate.notNull(map, "Cookie map must not be null");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.req.cookie(entry.getKey(), entry.getValue());
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection data(String str, String str2) {
        this.req.data(KeyVal.create(str, str2));
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection.Response execute() throws IOException {
        Response execute = Response.execute(this.req);
        this.res = execute;
        return execute;
    }

    @Override // org.jsoup.Connection
    public Connection followRedirects(boolean z3) {
        this.req.followRedirects(z3);
        return this;
    }

    @Override // org.jsoup.Connection
    public Document get() throws IOException {
        this.req.method(Connection.Method.GET);
        execute();
        return this.res.parse();
    }

    @Override // org.jsoup.Connection
    public Connection header(String str, String str2) {
        this.req.header(str, str2);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection ignoreContentType(boolean z3) {
        this.req.ignoreContentType(z3);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection ignoreHttpErrors(boolean z3) {
        this.req.ignoreHttpErrors(z3);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection maxBodySize(int i2) {
        this.req.maxBodySize(i2);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection method(Connection.Method method) {
        this.req.method(method);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection parser(Parser parser) {
        this.req.parser(parser);
        return this;
    }

    @Override // org.jsoup.Connection
    public Document post() throws IOException {
        this.req.method(Connection.Method.POST);
        execute();
        return this.res.parse();
    }

    @Override // org.jsoup.Connection
    public Connection referrer(String str) {
        Validate.notNull(str, "Referrer must not be null");
        this.req.header("Referer", str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection.Request request() {
        return this.req;
    }

    @Override // org.jsoup.Connection
    public Connection.Response response() {
        return this.res;
    }

    @Override // org.jsoup.Connection
    public Connection timeout(int i2) {
        this.req.timeout(i2);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection url(URL url) {
        this.req.url(url);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection userAgent(String str) {
        Validate.notNull(str, "User agent must not be null");
        this.req.header("User-Agent", str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection data(Map<String, String> map) {
        Validate.notNull(map, "Data map must not be null");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.req.data(KeyVal.create(entry.getKey(), entry.getValue()));
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection request(Connection.Request request) {
        this.req = request;
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection response(Connection.Response response) {
        this.res = response;
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection url(String str) {
        Validate.notEmpty(str, "Must supply a valid URL");
        try {
            this.req.url(new URL(str));
            return this;
        } catch (MalformedURLException e4) {
            throw new IllegalArgumentException("Malformed URL: " + str, e4);
        }
    }

    public static Connection connect(URL url) {
        HttpConnection httpConnection = new HttpConnection();
        httpConnection.url(url);
        return httpConnection;
    }

    @Override // org.jsoup.Connection
    public Connection data(String... strArr) {
        Validate.notNull(strArr, "Data key value pairs must not be null");
        Validate.isTrue(strArr.length % 2 == 0, "Must supply an even number of key value pairs");
        for (int i2 = 0; i2 < strArr.length; i2 += 2) {
            String str = strArr[i2];
            String str2 = strArr[i2 + 1];
            Validate.notEmpty(str, "Data key must not be empty");
            Validate.notNull(str2, "Data value must not be null");
            this.req.data(KeyVal.create(str, str2));
        }
        return this;
    }
}
