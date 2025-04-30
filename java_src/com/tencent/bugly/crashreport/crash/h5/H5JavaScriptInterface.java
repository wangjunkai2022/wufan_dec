package com.tencent.bugly.crashreport.crash.h5;

import android.webkit.JavascriptInterface;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.facebook.common.util.f;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.inner.InnerApi;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public class H5JavaScriptInterface {

    /* renamed from: a  reason: collision with root package name */
    private static HashSet<Integer> f59561a = new HashSet<>();

    /* renamed from: b  reason: collision with root package name */
    private String f59562b = null;

    /* renamed from: c  reason: collision with root package name */
    private Thread f59563c = null;

    /* renamed from: d  reason: collision with root package name */
    private String f59564d = null;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, String> f59565e = null;

    private H5JavaScriptInterface() {
    }

    private static a a(String str) {
        String string;
        if (str != null && str.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                a aVar = new a();
                String string2 = jSONObject.getString("projectRoot");
                aVar.f59566a = string2;
                if (string2 == null) {
                    return null;
                }
                String string3 = jSONObject.getString("context");
                aVar.f59567b = string3;
                if (string3 == null) {
                    return null;
                }
                String string4 = jSONObject.getString("url");
                aVar.f59568c = string4;
                if (string4 == null) {
                    return null;
                }
                String string5 = jSONObject.getString(TTDownloadField.TT_USERAGENT);
                aVar.f59569d = string5;
                if (string5 == null) {
                    return null;
                }
                String string6 = jSONObject.getString("language");
                aVar.f59570e = string6;
                if (string6 == null) {
                    return null;
                }
                String string7 = jSONObject.getString("name");
                aVar.f59571f = string7;
                if (string7 == null || string7.equals("null") || (string = jSONObject.getString("stacktrace")) == null) {
                    return null;
                }
                int indexOf = string.indexOf("\n");
                if (indexOf < 0) {
                    x.d("H5 crash stack's format is wrong!", new Object[0]);
                    return null;
                }
                aVar.f59573h = string.substring(indexOf + 1);
                String substring = string.substring(0, indexOf);
                aVar.f59572g = substring;
                int indexOf2 = substring.indexOf(":");
                if (indexOf2 > 0) {
                    aVar.f59572g = aVar.f59572g.substring(indexOf2 + 1);
                }
                aVar.f59574i = jSONObject.getString(f.f11767c);
                if (aVar.f59571f == null) {
                    return null;
                }
                long j4 = jSONObject.getLong("lineNumber");
                aVar.f59575j = j4;
                if (j4 < 0) {
                    return null;
                }
                long j5 = jSONObject.getLong("columnNumber");
                aVar.f59576k = j5;
                if (j5 < 0) {
                    return null;
                }
                x.a("H5 crash information is following: ", new Object[0]);
                x.a("[projectRoot]: " + aVar.f59566a, new Object[0]);
                x.a("[context]: " + aVar.f59567b, new Object[0]);
                x.a("[url]: " + aVar.f59568c, new Object[0]);
                x.a("[userAgent]: " + aVar.f59569d, new Object[0]);
                x.a("[language]: " + aVar.f59570e, new Object[0]);
                x.a("[name]: " + aVar.f59571f, new Object[0]);
                x.a("[message]: " + aVar.f59572g, new Object[0]);
                x.a("[stacktrace]: \n" + aVar.f59573h, new Object[0]);
                x.a("[file]: " + aVar.f59574i, new Object[0]);
                x.a("[lineNumber]: " + aVar.f59575j, new Object[0]);
                x.a("[columnNumber]: " + aVar.f59576k, new Object[0]);
                return aVar;
            } catch (Throwable th) {
                if (!x.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static H5JavaScriptInterface getInstance(CrashReport.WebViewInterface webViewInterface) {
        String str = null;
        if (webViewInterface == null || f59561a.contains(Integer.valueOf(webViewInterface.hashCode()))) {
            return null;
        }
        H5JavaScriptInterface h5JavaScriptInterface = new H5JavaScriptInterface();
        f59561a.add(Integer.valueOf(webViewInterface.hashCode()));
        Thread currentThread = Thread.currentThread();
        h5JavaScriptInterface.f59563c = currentThread;
        if (currentThread != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("\n");
            for (int i2 = 2; i2 < currentThread.getStackTrace().length; i2++) {
                StackTraceElement stackTraceElement = currentThread.getStackTrace()[i2];
                if (!stackTraceElement.toString().contains("crashreport")) {
                    sb.append(stackTraceElement.toString());
                    sb.append("\n");
                }
            }
            str = sb.toString();
        }
        h5JavaScriptInterface.f59564d = str;
        HashMap hashMap = new HashMap();
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) webViewInterface.getContentDescription());
        hashMap.put("[WebView] ContentDescription", sb2.toString());
        h5JavaScriptInterface.f59565e = hashMap;
        return h5JavaScriptInterface;
    }

    @JavascriptInterface
    public void printLog(String str) {
        x.d("Log from js: %s", str);
    }

    @JavascriptInterface
    public void reportJSException(String str) {
        if (str == null) {
            x.d("Payload from JS is null.", new Object[0]);
            return;
        }
        String a4 = z.a(str.getBytes());
        String str2 = this.f59562b;
        if (str2 != null && str2.equals(a4)) {
            x.d("Same payload from js. Please check whether you've injected bugly.js more than one times.", new Object[0]);
            return;
        }
        this.f59562b = a4;
        x.d("Handling JS exception ...", new Object[0]);
        a a5 = a(str);
        if (a5 == null) {
            x.d("Failed to parse payload.", new Object[0]);
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        String str3 = a5.f59566a;
        if (str3 != null) {
            linkedHashMap2.put("[JS] projectRoot", str3);
        }
        String str4 = a5.f59567b;
        if (str4 != null) {
            linkedHashMap2.put("[JS] context", str4);
        }
        String str5 = a5.f59568c;
        if (str5 != null) {
            linkedHashMap2.put("[JS] url", str5);
        }
        String str6 = a5.f59569d;
        if (str6 != null) {
            linkedHashMap2.put("[JS] userAgent", str6);
        }
        String str7 = a5.f59574i;
        if (str7 != null) {
            linkedHashMap2.put("[JS] file", str7);
        }
        long j4 = a5.f59575j;
        if (j4 != 0) {
            linkedHashMap2.put("[JS] lineNumber", Long.toString(j4));
        }
        linkedHashMap.putAll(linkedHashMap2);
        linkedHashMap.putAll(this.f59565e);
        linkedHashMap.put("Java Stack", this.f59564d);
        InnerApi.postH5CrashAsync(this.f59563c, a5.f59571f, a5.f59572g, a5.f59573h, linkedHashMap);
    }
}
