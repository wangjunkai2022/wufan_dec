package cn.sharesdk.framework.a.a;

import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.tools.utils.SharePrefrenceHelper;
import com.tencent.bugly.Bugly;
/* compiled from: SharePrefrenceUtil.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: b  reason: collision with root package name */
    private static e f8735b;

    /* renamed from: a  reason: collision with root package name */
    private SharePrefrenceHelper f8736a;

    private e() {
        SharePrefrenceHelper sharePrefrenceHelper = new SharePrefrenceHelper(MobSDK.getContext());
        this.f8736a = sharePrefrenceHelper;
        sharePrefrenceHelper.open("share_sdk", 1);
    }

    public static e a() {
        if (f8735b == null) {
            f8735b = new e();
        }
        return f8735b;
    }

    public long b() {
        return this.f8736a.getLong("service_time");
    }

    public boolean c() {
        String string = this.f8736a.getString("upload_device_info");
        if (TextUtils.isEmpty(string)) {
            return true;
        }
        return Boolean.parseBoolean(string);
    }

    public boolean d() {
        String string = this.f8736a.getString("upload_user_info");
        if (TextUtils.isEmpty(string)) {
            return true;
        }
        return Boolean.parseBoolean(string);
    }

    public boolean e() {
        String string = this.f8736a.getString("trans_short_link");
        if (TextUtils.isEmpty(string)) {
            return false;
        }
        return Boolean.parseBoolean(string);
    }

    public int f() {
        String string = this.f8736a.getString("upload_share_content");
        if ("true".equals(string)) {
            return 1;
        }
        return Bugly.SDK_IS_DEV.equals(string) ? -1 : 0;
    }

    public boolean g() {
        String string = this.f8736a.getString("open_login_plus");
        if (TextUtils.isEmpty(string)) {
            return false;
        }
        return Boolean.parseBoolean(string);
    }

    public String h() {
        SharePrefrenceHelper sharePrefrenceHelper = this.f8736a;
        return sharePrefrenceHelper.getString("buffered_snsconf_" + MobSDK.getAppkey());
    }

    public Long i() {
        return Long.valueOf(this.f8736a.getLong("device_time"));
    }

    public boolean j() {
        return this.f8736a.getBoolean("connect_server");
    }

    public Long k() {
        return Long.valueOf(this.f8736a.getLong("connect_server_time"));
    }

    public boolean l() {
        return this.f8736a.getBoolean("sns_info_buffered");
    }

    public void b(String str) {
        this.f8736a.putString("upload_device_info", str);
    }

    public boolean h(String str) {
        return this.f8736a.getBoolean(str);
    }

    public long i(String str) {
        return this.f8736a.getLong(str);
    }

    public int j(String str) {
        return this.f8736a.getInt(str);
    }

    public Object k(String str) {
        return this.f8736a.get(str);
    }

    public void b(boolean z3) {
        this.f8736a.putBoolean("no_use_gpp", Boolean.valueOf(z3));
    }

    public void a(String str) {
        this.f8736a.putString("trans_short_link", str);
    }

    public void b(long j4) {
        this.f8736a.putLong("connect_server_time", Long.valueOf(j4));
    }

    public void c(String str) {
        this.f8736a.putString("upload_user_info", str);
    }

    public void d(String str) {
        this.f8736a.putString("upload_share_content", str);
    }

    public void e(String str) {
        this.f8736a.putString("open_login_plus", str);
    }

    public void f(String str) {
        this.f8736a.putString("open_sina_link_card", str);
    }

    public void g(String str) {
        SharePrefrenceHelper sharePrefrenceHelper = this.f8736a;
        sharePrefrenceHelper.putString("buffered_snsconf_" + MobSDK.getAppkey(), str);
    }

    public void a(boolean z3) {
        this.f8736a.putBoolean("gpp_ver_sent", Boolean.valueOf(z3));
    }

    public void c(boolean z3) {
        this.f8736a.putBoolean("connect_server", Boolean.valueOf(z3));
    }

    public void d(boolean z3) {
        this.f8736a.putBoolean("sns_info_buffered", Boolean.valueOf(z3));
    }

    public void a(long j4) {
        this.f8736a.putLong("device_time", Long.valueOf(j4));
    }

    public void a(String str, Long l4) {
        this.f8736a.putLong(str, l4);
    }

    public void a(String str, int i2) {
        this.f8736a.putInt(str, Integer.valueOf(i2));
    }

    public void a(String str, Object obj) {
        this.f8736a.put(str, obj);
    }
}
