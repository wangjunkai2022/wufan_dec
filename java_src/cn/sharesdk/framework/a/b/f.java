package cn.sharesdk.framework.a.b;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.Hashon;
import java.util.ArrayList;
import java.util.HashMap;
/* compiled from: ShareEvent.java */
/* loaded from: classes2.dex */
public class f extends c {

    /* renamed from: o  reason: collision with root package name */
    private static int f8766o;

    /* renamed from: p  reason: collision with root package name */
    private static long f8767p;

    /* renamed from: a  reason: collision with root package name */
    public int f8768a;

    /* renamed from: b  reason: collision with root package name */
    public String f8769b;

    /* renamed from: c  reason: collision with root package name */
    public String f8770c;

    /* renamed from: d  reason: collision with root package name */
    public a f8771d = new a();

    /* renamed from: m  reason: collision with root package name */
    public String f8772m;

    /* renamed from: n  reason: collision with root package name */
    public String[] f8773n;

    /* compiled from: ShareEvent.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: b  reason: collision with root package name */
        public String f8775b;

        /* renamed from: g  reason: collision with root package name */
        public HashMap<String, Object> f8780g;

        /* renamed from: a  reason: collision with root package name */
        public String f8774a = "";

        /* renamed from: c  reason: collision with root package name */
        public ArrayList<String> f8776c = new ArrayList<>();

        /* renamed from: d  reason: collision with root package name */
        public ArrayList<String> f8777d = new ArrayList<>();

        /* renamed from: e  reason: collision with root package name */
        public ArrayList<String> f8778e = new ArrayList<>();

        /* renamed from: f  reason: collision with root package name */
        public ArrayList<Bitmap> f8779f = new ArrayList<>();

        public String toString() {
            HashMap hashMap = new HashMap();
            if (!TextUtils.isEmpty(this.f8775b)) {
                String replaceAll = this.f8775b.trim().replaceAll("\r", "");
                this.f8775b = replaceAll;
                String replaceAll2 = replaceAll.trim().replaceAll("\n", "");
                this.f8775b = replaceAll2;
                this.f8775b = replaceAll2.trim().replaceAll("\r\n", "");
            }
            hashMap.put("text", this.f8775b);
            hashMap.put("url", this.f8776c);
            ArrayList<String> arrayList = this.f8777d;
            if (arrayList != null && arrayList.size() > 0) {
                hashMap.put("imgs", this.f8777d);
            }
            if (this.f8780g != null) {
                hashMap.put("attch", new Hashon().fromHashMap(this.f8780g));
            }
            return new Hashon().fromHashMap(hashMap);
        }
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected String a() {
        return "[SHR]";
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected void a(long j4) {
        f8767p = j4;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected int b() {
        return 5000;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected int c() {
        return 30;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected long d() {
        return f8766o;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected long e() {
        return f8767p;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected void f() {
        f8766o++;
    }

    @Override // cn.sharesdk.framework.a.b.c
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder(super.toString());
        sb.append('|');
        sb.append(this.f8768a);
        sb.append('|');
        sb.append(this.f8769b);
        sb.append('|');
        sb.append(TextUtils.isEmpty(this.f8770c) ? "" : this.f8770c);
        String[] strArr = this.f8773n;
        if (strArr == null || strArr.length <= 0) {
            str = "";
        } else {
            str = "[\"" + TextUtils.join("\",\"", this.f8773n) + "\"]";
        }
        sb.append('|');
        sb.append(str);
        sb.append('|');
        a aVar = this.f8771d;
        if (aVar != null) {
            try {
                String encodeToString = Base64.encodeToString(Data.AES128Encode(this.f8751f.substring(0, 16), aVar.toString()), 0);
                if (encodeToString.contains("\n")) {
                    encodeToString = encodeToString.replace("\n", "");
                }
                sb.append(encodeToString);
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
        }
        sb.append('|');
        if (!TextUtils.isEmpty(this.f8757l)) {
            sb.append(this.f8757l);
        }
        sb.append('|');
        if (!TextUtils.isEmpty(this.f8772m)) {
            try {
                String encodeToString2 = Base64.encodeToString(Data.AES128Encode(this.f8751f.substring(0, 16), this.f8772m), 0);
                if (!TextUtils.isEmpty(encodeToString2) && encodeToString2.contains("\n")) {
                    encodeToString2 = encodeToString2.replace("\n", "");
                }
                sb.append(encodeToString2);
            } catch (Throwable th2) {
                SSDKLog.b().b(th2);
            }
        }
        return sb.toString();
    }
}
