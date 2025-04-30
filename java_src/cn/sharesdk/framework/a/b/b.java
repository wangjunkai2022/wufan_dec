package cn.sharesdk.framework.a.b;

import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.tools.utils.Data;
/* compiled from: AuthEvent.java */
/* loaded from: classes2.dex */
public class b extends c {

    /* renamed from: m  reason: collision with root package name */
    private static int f8744m;

    /* renamed from: n  reason: collision with root package name */
    private static long f8745n;

    /* renamed from: a  reason: collision with root package name */
    public int f8746a;

    /* renamed from: b  reason: collision with root package name */
    public String f8747b;

    /* renamed from: c  reason: collision with root package name */
    public String f8748c;

    /* renamed from: d  reason: collision with root package name */
    public String f8749d;

    @Override // cn.sharesdk.framework.a.b.c
    protected String a() {
        return "[AUT]";
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected void a(long j4) {
        f8745n = j4;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected int b() {
        return 5000;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected int c() {
        return 5;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected long d() {
        return f8744m;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected long e() {
        return f8745n;
    }

    @Override // cn.sharesdk.framework.a.b.c
    protected void f() {
        f8744m++;
    }

    @Override // cn.sharesdk.framework.a.b.c
    public String toString() {
        StringBuilder sb = new StringBuilder(super.toString());
        sb.append('|');
        sb.append(this.f8746a);
        sb.append('|');
        sb.append(this.f8747b);
        sb.append('|');
        if (!TextUtils.isEmpty(this.f8749d)) {
            try {
                String encodeToString = Base64.encodeToString(Data.AES128Encode(this.f8751f.substring(0, 16), this.f8749d), 0);
                if (!TextUtils.isEmpty(encodeToString) && encodeToString.contains("\n")) {
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
        if (!TextUtils.isEmpty(this.f8748c)) {
            sb.append(this.f8748c);
        }
        return sb.toString();
    }
}
