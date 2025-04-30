package cn.com.chinatelecom.account.api.e;

import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import cn.com.chinatelecom.account.api.ClientUtils;
import cn.com.chinatelecom.account.api.CtAuth;
import com.join.mgps.activity.TagGameListActivity_;
import com.umeng.analytics.pro.ai;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class e {

    /* renamed from: l  reason: collision with root package name */
    private String f8643l;

    /* renamed from: o  reason: collision with root package name */
    private int f8646o;

    /* renamed from: q  reason: collision with root package name */
    private long f8648q;

    /* renamed from: t  reason: collision with root package name */
    private int f8651t;

    /* renamed from: w  reason: collision with root package name */
    private long f8654w;

    /* renamed from: r  reason: collision with root package name */
    private long f8649r = -1;

    /* renamed from: u  reason: collision with root package name */
    private StringBuffer f8652u = new StringBuffer();

    /* renamed from: c  reason: collision with root package name */
    private String f8634c = "";

    /* renamed from: e  reason: collision with root package name */
    private String f8636e = "";

    /* renamed from: n  reason: collision with root package name */
    private String f8645n = "";

    /* renamed from: m  reason: collision with root package name */
    private String f8644m = "";

    /* renamed from: p  reason: collision with root package name */
    private String f8647p = "";

    /* renamed from: a  reason: collision with root package name */
    private String f8632a = "1.2";

    /* renamed from: v  reason: collision with root package name */
    private long f8653v = SystemClock.uptimeMillis();

    /* renamed from: b  reason: collision with root package name */
    private String f8633b = a(System.currentTimeMillis());

    /* renamed from: d  reason: collision with root package name */
    private String f8635d = CtAuth.mAppId;

    /* renamed from: f  reason: collision with root package name */
    private String f8637f = "";

    /* renamed from: g  reason: collision with root package name */
    private String f8638g = Build.BRAND;

    /* renamed from: h  reason: collision with root package name */
    private String f8639h = Build.MODEL;

    /* renamed from: i  reason: collision with root package name */
    private String f8640i = "Android";

    /* renamed from: j  reason: collision with root package name */
    private String f8641j = Build.VERSION.RELEASE;

    /* renamed from: k  reason: collision with root package name */
    private String f8642k = ClientUtils.getSdkVersion();

    /* renamed from: s  reason: collision with root package name */
    private String f8650s = "0";

    public e(String str) {
        this.f8643l = str;
    }

    public static String a(long j4) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.CHINA).format(new Date(j4));
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public e a(int i2) {
        this.f8646o = i2;
        return this;
    }

    public e a(String str) {
        this.f8636e = str;
        return this;
    }

    public String a() {
        return this.f8643l;
    }

    public e b(int i2) {
        this.f8651t = i2;
        return this;
    }

    public e b(long j4) {
        if (j4 > 0) {
            this.f8648q = j4;
        }
        return this;
    }

    public e b(String str) {
        this.f8637f = str;
        return this;
    }

    public void b() {
        long uptimeMillis = SystemClock.uptimeMillis();
        this.f8654w = uptimeMillis;
        if (this.f8649r == -1) {
            this.f8649r = uptimeMillis - this.f8653v;
        }
    }

    public e c(String str) {
        this.f8644m = str;
        return this;
    }

    public e d(String str) {
        this.f8645n = str;
        return this;
    }

    public e e(String str) {
        this.f8647p = str;
        return this;
    }

    public e f(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f8650s = str;
        }
        return this;
    }

    public e g(String str) {
        if (!TextUtils.isEmpty(str)) {
            StringBuffer stringBuffer = this.f8652u;
            stringBuffer.append(str);
            stringBuffer.append(";");
        }
        return this;
    }

    public String toString() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("v", this.f8632a);
            jSONObject.put(ai.aF, this.f8633b);
            jSONObject.put(TagGameListActivity_.f35885q0, this.f8634c);
            jSONObject.put("ai", this.f8635d);
            jSONObject.put("di", this.f8636e);
            jSONObject.put("ns", this.f8637f);
            jSONObject.put("br", this.f8638g);
            jSONObject.put("ml", this.f8639h);
            jSONObject.put(ai.f60424x, this.f8640i);
            jSONObject.put("ov", this.f8641j);
            jSONObject.put(m.a.f72572j, this.f8642k);
            jSONObject.put("ri", this.f8643l);
            jSONObject.put("api", this.f8644m);
            jSONObject.put(ai.av, this.f8645n);
            jSONObject.put("rt", this.f8646o);
            jSONObject.put("msg", this.f8647p);
            jSONObject.put("st", this.f8648q);
            jSONObject.put("tt", this.f8649r);
            jSONObject.put("ot", this.f8650s);
            jSONObject.put("rec", this.f8651t);
            jSONObject.put("ep", this.f8652u.toString());
            return jSONObject.toString();
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }
}
