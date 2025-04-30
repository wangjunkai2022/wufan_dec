package com.join.mgps.ad;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.MApplication;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.i2;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.dialog.DownloadHighSpeedingDialog_;
import java.util.Map;
/* compiled from: BaseRewardVideo.java */
/* loaded from: classes.dex */
public abstract class c extends i {

    /* renamed from: l  reason: collision with root package name */
    protected static boolean f38637l;

    /* renamed from: a  reason: collision with root package name */
    protected Context f38638a;

    /* renamed from: b  reason: collision with root package name */
    protected String f38639b;

    /* renamed from: c  reason: collision with root package name */
    protected String f38640c;

    /* renamed from: d  reason: collision with root package name */
    protected String f38641d;

    /* renamed from: e  reason: collision with root package name */
    protected Activity f38642e;

    /* renamed from: f  reason: collision with root package name */
    protected String f38643f;

    /* renamed from: g  reason: collision with root package name */
    protected int f38644g;

    /* renamed from: h  reason: collision with root package name */
    protected int f38645h;

    /* renamed from: i  reason: collision with root package name */
    protected long f38646i = 0;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f38647j = false;

    /* renamed from: k  reason: collision with root package name */
    protected Map<String, Object> f38648k;

    static {
        f38637l = com.join.android.app.common.http.c.f17006c;
    }

    public c(String str, Context context, String str2, String str3) {
        this.f38641d = str + "RewardVideo";
        this.f38638a = context;
        this.f38639b = str2;
        this.f38640c = str3;
    }

    public static void i(Context context, int i2) {
        Intent intent = new Intent();
        intent.setAction("com.emu.ad.result");
        intent.putExtra(DownloadHighSpeedingDialog_.a.f47372b, i2);
        context.sendBroadcast(intent);
    }

    public static void j(Context context, int i2, Map<String, Object> map) {
        Intent intent = new Intent();
        intent.setAction("com.emu.ad.result");
        intent.putExtra(DownloadHighSpeedingDialog_.a.f47372b, i2);
        intent.putExtra(MGMainActivity.KEY_EXTRAS, JsonMapper.toJsonString(map));
        context.sendBroadcast(intent);
    }

    public static void k(Context context, int i2, String str) {
        Intent intent = new Intent();
        intent.setAction("com.join.android.app.mgsim.wufun.ad.result");
        intent.putExtra(DownloadHighSpeedingDialog_.a.f47372b, i2);
        intent.putExtra("gameId", str);
        context.sendBroadcast(intent);
    }

    @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
    public void a(String str, int i2, int i4) {
        super.a(str, i2, i4);
    }

    @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
    public void b(boolean z3) {
        Activity activity;
        super.b(z3);
        Activity activity2 = this.f38642e;
        if (activity2 == null || activity2.isFinishing()) {
            this.f38642e = MApplication.f9223q.getActivity();
        }
        if (!z3 || (activity = this.f38642e) == null || activity.isFinishing()) {
            return;
        }
        s(this.f38642e, this.f38643f, this.f38644g, this.f38645h, this.f38648k);
    }

    @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
    public void c(String str) {
        super.c(str);
    }

    @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
    public void d(String str, int i2, int i4, Map<String, Object> map) {
        super.d(str, i2, i4, map);
    }

    public abstract void e();

    protected boolean f() {
        return false;
    }

    public void g() {
        h(false);
    }

    public abstract void h(boolean z3);

    public void l(Map<String, Object> map) {
        this.f38648k = map;
    }

    public void m(String str) {
        this.f38643f = str;
    }

    public void n(int i2) {
        this.f38644g = i2;
    }

    public void o(int i2) {
        this.f38645h = i2;
    }

    @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
    public void onADClick() {
        super.onADClick();
    }

    @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
    public void onADClose() {
        super.onADClose();
    }

    @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
    public void onADExpose() {
        super.onADExpose();
    }

    @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
    public void onADShow() {
        super.onADShow();
    }

    @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
    public void onError(int i2, String str) {
        super.onError(i2, str);
        if (f38637l) {
            StringBuilder sb = new StringBuilder();
            sb.append("onError:");
            sb.append(str);
        }
    }

    @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
    public void onInitSuccess() {
        super.onInitSuccess();
        if (f38637l) {
            StringBuilder sb = new StringBuilder();
            sb.append("onInitSuccess appID:[");
            sb.append(this.f38639b);
            sb.append("],posID:[");
            sb.append(this.f38640c);
            sb.append("]");
        }
    }

    @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
    public void onReward(Map<String, Object> map) {
        super.onReward(map);
    }

    @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
    public void onVideoCached() {
        super.onVideoCached();
    }

    @Override // com.join.mgps.ad.i, com.join.mgps.ad.f
    public void onVideoComplete() {
        super.onVideoComplete();
    }

    public void p(Activity activity) {
        q(activity, "");
    }

    public void q(Activity activity, String str) {
        r(activity, str, 0, 0);
    }

    public void r(Activity activity, String str, int i2, int i4) {
        s(activity, str, i2, i4, null);
    }

    public void s(Activity activity, String str, int i2, int i4, Map<String, Object> map) {
        this.f38643f = str;
        this.f38645h = i4;
        this.f38644g = i2;
        this.f38648k = map;
        this.f38642e = activity;
        if (com.join.android.app.common.utils.f.j(activity)) {
            if (f()) {
                t(this.f38642e);
                return;
            } else if (Math.abs(System.currentTimeMillis() - this.f38646i) < 2000) {
                this.f38646i = System.currentTimeMillis();
                onError(-1, "视频加载中,请稍候...");
                return;
            } else {
                this.f38646i = System.currentTimeMillis();
                h(true);
                return;
            }
        }
        i2.a(activity).b("网络异常，请联网重试");
        onError(-1, "网络异常，请联网重试");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void t(Activity activity) {
    }
}
