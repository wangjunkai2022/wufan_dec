package com.mob.tools.network;

import android.os.Build;
import com.mob.commons.a.o;
import com.mob.tools.MobLog;
import com.mob.tools.utils.ReflectHelper;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes4.dex */
public class HttpConnectionImpl implements HttpConnection {

    /* renamed from: a  reason: collision with root package name */
    private Object f53864a;

    static {
        try {
            ReflectHelper.importClass("org.apache.http.HttpResponse");
            ReflectHelper.importClass("org.apache.http.Header");
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
    }

    public HttpConnectionImpl(Object obj) {
        this.f53864a = obj;
    }

    @Override // com.mob.tools.network.HttpConnection
    public InputStream getErrorStream() throws IOException {
        return getInputStream();
    }

    @Override // com.mob.tools.network.HttpConnection
    public Map<String, List<String>> getHeaderFields() throws IOException {
        try {
            HashMap hashMap = new HashMap();
            Object invokeInstanceMethod = ReflectHelper.invokeInstanceMethod(this.f53864a, "getAllHeaders", new Object[0]);
            if (invokeInstanceMethod != null) {
                int intValue = ((Integer) ReflectHelper.getInstanceField(invokeInstanceMethod, o.a("006_feJjJelggUed"))).intValue();
                Object[] objArr = new Object[intValue];
                System.arraycopy(invokeInstanceMethod, 0, objArr, 0, intValue);
                for (int i2 = 0; i2 < intValue; i2++) {
                    Object obj = objArr[i2];
                    String str = (String) ReflectHelper.invokeInstanceMethod(obj, o.a("007[ggXjeJfgeg[mj"), new Object[0]);
                    String str2 = (String) ReflectHelper.invokeInstanceMethod(obj, "getValue", new Object[0]);
                    if (str2 == null) {
                        str2 = "";
                    }
                    hashMap.put(str, Arrays.asList(str2.split(",")));
                }
            }
            return hashMap;
        } catch (Throwable th) {
            if (Build.VERSION.SDK_INT < 9) {
                throw new IOException(th.getMessage());
            }
            throw new IOException(th);
        }
    }

    @Override // com.mob.tools.network.HttpConnection
    public InputStream getInputStream() throws IOException {
        try {
            return (InputStream) ReflectHelper.invokeInstanceMethod(ReflectHelper.invokeInstanceMethod(this.f53864a, "getEntity", new Object[0]), "getContent", new Object[0]);
        } catch (Throwable th) {
            if (Build.VERSION.SDK_INT < 9) {
                throw new IOException(th.getMessage());
            }
            throw new IOException(th);
        }
    }

    @Override // com.mob.tools.network.HttpConnection
    public int getResponseCode() throws IOException {
        try {
            return ((Integer) ReflectHelper.invokeInstanceMethod(ReflectHelper.invokeInstanceMethod(this.f53864a, "getStatusLine", new Object[0]), "getStatusCode", new Object[0])).intValue();
        } catch (Throwable th) {
            if (Build.VERSION.SDK_INT < 9) {
                throw new IOException(th.getMessage());
            }
            throw new IOException(th);
        }
    }
}
