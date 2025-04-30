package com.androidquery.callback;

import com.androidquery.util.AQUtility;
import java.io.Closeable;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.client.CookieStore;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes2.dex */
public class AjaxStatus {
    public static final int AUTH_ERROR = -102;
    public static final int DATASTORE = 2;
    public static final int DEVICE = 5;
    public static final int FILE = 3;
    public static final int MEMORY = 4;
    public static final int NETWORK = 1;
    public static final int NETWORK_ERROR = -101;
    public static final int TRANSFORM_ERROR = -103;
    private DefaultHttpClient client;
    private Closeable close;
    private int code;
    private HttpContext context;
    private byte[] data;
    private boolean done;
    private long duration;
    private String error;
    private File file;
    private Header[] headers;
    private boolean invalid;
    private String message;
    private boolean reauth;
    private String redirect;
    private boolean refresh;
    private int source;
    private long start;
    private Date time;

    public AjaxStatus() {
        this.code = 200;
        this.message = "OK";
        this.time = new Date();
        this.source = 1;
        this.start = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AjaxStatus client(DefaultHttpClient defaultHttpClient) {
        this.client = defaultHttpClient;
        return this;
    }

    public void close() {
        AQUtility.close(this.close);
        this.close = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void closeLater(Closeable closeable) {
        this.close = closeable;
    }

    public AjaxStatus code(int i2) {
        this.code = i2;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AjaxStatus context(HttpContext httpContext) {
        this.context = httpContext;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AjaxStatus data(byte[] bArr) {
        this.data = bArr;
        return this;
    }

    public AjaxStatus done() {
        this.duration = System.currentTimeMillis() - this.start;
        this.done = true;
        this.reauth = false;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AjaxStatus error(String str) {
        this.error = str;
        return this;
    }

    public boolean expired(long j4) {
        return System.currentTimeMillis() - this.time.getTime() > j4 && getSource() != 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AjaxStatus file(File file) {
        this.file = file;
        return this;
    }

    public DefaultHttpClient getClient() {
        return this.client;
    }

    public int getCode() {
        return this.code;
    }

    public List<Cookie> getCookies() {
        HttpContext httpContext = this.context;
        if (httpContext == null) {
            return Collections.emptyList();
        }
        CookieStore cookieStore = (CookieStore) httpContext.getAttribute(HttpClientContext.COOKIE_STORE);
        if (cookieStore == null) {
            return Collections.emptyList();
        }
        return cookieStore.getCookies();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getData() {
        return this.data;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getDone() {
        return this.done;
    }

    public long getDuration() {
        return this.duration;
    }

    public String getError() {
        return this.error;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public File getFile() {
        return this.file;
    }

    public String getHeader(String str) {
        if (this.headers == null) {
            return null;
        }
        int i2 = 0;
        while (true) {
            Header[] headerArr = this.headers;
            if (i2 >= headerArr.length) {
                return null;
            }
            if (str.equalsIgnoreCase(headerArr[i2].getName())) {
                return this.headers[i2].getValue();
            }
            i2++;
        }
    }

    public List<Header> getHeaders() {
        Header[] headerArr = this.headers;
        return headerArr == null ? Collections.emptyList() : Arrays.asList(headerArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getInvalid() {
        return this.invalid;
    }

    public String getMessage() {
        return this.message;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getReauth() {
        return this.reauth;
    }

    public String getRedirect() {
        return this.redirect;
    }

    public boolean getRefresh() {
        return this.refresh;
    }

    public int getSource() {
        return this.source;
    }

    public Date getTime() {
        return this.time;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AjaxStatus headers(Header[] headerArr) {
        this.headers = headerArr;
        return this;
    }

    public AjaxStatus invalidate() {
        this.invalid = true;
        return this;
    }

    public AjaxStatus message(String str) {
        this.message = str;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AjaxStatus reauth(boolean z3) {
        this.reauth = z3;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AjaxStatus redirect(String str) {
        this.redirect = str;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AjaxStatus refresh(boolean z3) {
        this.refresh = z3;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AjaxStatus reset() {
        this.duration = System.currentTimeMillis() - this.start;
        this.done = false;
        close();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AjaxStatus source(int i2) {
        this.source = i2;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AjaxStatus time(Date date) {
        this.time = date;
        return this;
    }

    public AjaxStatus(int i2, String str) {
        this.code = 200;
        this.message = "OK";
        this.time = new Date();
        this.source = 1;
        this.start = System.currentTimeMillis();
        this.code = i2;
        this.message = str;
    }
}
