package com.umeng.analytics.pro;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.pro.h;
import com.umeng.analytics.vshelper.PageNameMonitor;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: ViewPageTracker.java */
/* loaded from: classes4.dex */
public class u {

    /* renamed from: c  reason: collision with root package name */
    private static final int f60905c = 5;

    /* renamed from: d  reason: collision with root package name */
    private static JSONArray f60906d = new JSONArray();

    /* renamed from: e  reason: collision with root package name */
    private static Object f60907e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, Long> f60910f = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    Stack<String> f60908a = new Stack<>();

    /* renamed from: b  reason: collision with root package name */
    com.umeng.analytics.vshelper.a f60909b = PageNameMonitor.getInstance();

    public static void a(Context context) {
        String jSONArray;
        if (context != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                synchronized (f60907e) {
                    jSONArray = f60906d.toString();
                    f60906d = new JSONArray();
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("__a", new JSONArray(jSONArray));
                    if (jSONObject.length() > 0) {
                        h.a(context).a(t.a().c(), jSONObject, h.a.PAGE);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    protected int a() {
        return 2;
    }

    public void b(String str) {
        Long l4;
        Context appContext;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f60910f.containsKey(str)) {
            synchronized (this.f60910f) {
                l4 = this.f60910f.get(str);
            }
            if (l4 == null) {
                return;
            }
            if (UMConfigure.isDebugLog() && this.f60908a.size() > 0 && str.equals(this.f60908a.peek())) {
                this.f60908a.pop();
            }
            long currentTimeMillis = System.currentTimeMillis() - l4.longValue();
            synchronized (f60907e) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(c.f60645v, str);
                    jSONObject.put("duration", currentTimeMillis);
                    jSONObject.put(c.f60647x, l4);
                    jSONObject.put("type", a());
                    f60906d.put(jSONObject);
                    if (f60906d.length() >= 5 && (appContext = UMGlobalContext.getAppContext(null)) != null) {
                        UMWorkDispatch.sendEvent(appContext, 4099, CoreProtocol.getInstance(appContext), null);
                    }
                } catch (Throwable unused) {
                }
            }
            if (!UMConfigure.isDebugLog() || this.f60908a.size() == 0) {
                return;
            }
            UMLog.aq(i.E, 0, "\\|", new String[]{"@"}, new String[]{str}, null, null);
        } else if (UMConfigure.isDebugLog() && this.f60908a.size() == 0) {
            UMLog.aq(i.G, 0, "\\|", new String[]{"@"}, new String[]{str}, null, null);
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (UMConfigure.isDebugLog() && this.f60908a.size() != 0) {
            UMLog.aq(i.F, 0, "\\|", new String[]{"@"}, new String[]{this.f60908a.peek()}, null, null);
        }
        this.f60909b.customPageBegin(str);
        synchronized (this.f60910f) {
            this.f60910f.put(str, Long.valueOf(System.currentTimeMillis()));
            if (UMConfigure.isDebugLog()) {
                this.f60908a.push(str);
            }
        }
    }

    public void b() {
        String str;
        synchronized (this.f60910f) {
            str = null;
            long j4 = 0;
            for (Map.Entry<String, Long> entry : this.f60910f.entrySet()) {
                if (entry.getValue().longValue() > j4) {
                    long longValue = entry.getValue().longValue();
                    str = entry.getKey();
                    j4 = longValue;
                }
            }
        }
        if (str != null) {
            b(str);
        }
    }
}
