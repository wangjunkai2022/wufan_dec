package com.join.mgps.Util;

import android.content.Context;
import android.content.Intent;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.PayGameCheckResult;
import com.join.mgps.dto.PayGameDataRequest;
/* compiled from: PayGameUtils.java */
/* loaded from: classes3.dex */
public class k1 {

    /* renamed from: a  reason: collision with root package name */
    static k1 f27663a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PayGameUtils.java */
    /* loaded from: classes3.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27664a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27665b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ c f27666c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ b f27667d;

        /* compiled from: PayGameUtils.java */
        /* renamed from: com.join.mgps.Util.k1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0144a implements com.join.android.app.common.http.b {
            C0144a() {
            }

            @Override // com.join.android.app.common.http.b
            public void a(Object obj) {
                t0.d("xxxxx", "checkPayGamePay::onFailed" + obj);
                a.this.f27666c.d(-1);
                a aVar = a.this;
                aVar.f27667d.a(aVar.f27666c);
            }

            @Override // com.join.android.app.common.http.b
            public void onSuccess(Object obj) {
                t0.d("xxxxx", "checkPayGamePay::onSuccess" + obj);
                CommentResponse commentResponse = (CommentResponse) obj;
                if (commentResponse != null) {
                    if (commentResponse.getCode() == 0) {
                        PayGameCheckResult payGameCheckResult = (PayGameCheckResult) commentResponse.getData_info();
                        if (payGameCheckResult != null) {
                            if (payGameCheckResult.isState()) {
                                a.this.f27666c.d(1);
                                a.this.f27666c.f(payGameCheckResult.getExpireTime());
                                if (a.this.f27666c.c() == 0) {
                                    a aVar = a.this;
                                    aVar.f27666c.f(k1.this.d());
                                }
                                a.this.f27666c.e(payGameCheckResult.getAppGameId());
                            } else {
                                a.this.f27666c.d(2);
                                a.this.f27666c.e(payGameCheckResult.getAppGameId());
                            }
                        } else {
                            a.this.f27666c.d(2);
                            a.this.f27666c.e(payGameCheckResult.getAppGameId());
                        }
                    } else if (commentResponse.getCode() == 100006) {
                        a.this.f27666c.d(3);
                    } else {
                        a.this.f27666c.d(-1);
                    }
                } else {
                    a.this.f27666c.d(-1);
                }
                t0.d("xxxxx", "checkPayGamePay::original result=" + a.this.f27666c);
                String json = JsonMapper.defaultAll().toJson(a.this.f27666c);
                t0.d("xxxxx", "rs=" + json);
                a aVar2 = a.this;
                aVar2.f27667d.a(aVar2.f27666c);
            }
        }

        a(Context context, String str, c cVar, b bVar) {
            this.f27664a = context;
            this.f27665b = str;
            this.f27666c = cVar;
            this.f27667d = bVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            AccountBean accountData = AccountUtil_.getInstance_(this.f27664a).getAccountData();
            int uid = accountData != null ? accountData.getUid() : 0;
            PayGameDataRequest payGameDataRequest = new PayGameDataRequest();
            payGameDataRequest.setToken(accountData.getToken());
            payGameDataRequest.setDevice_id(com.join.android.app.common.utils.j.n(this.f27664a).e(this.f27664a));
            payGameDataRequest.setUid(uid + "");
            payGameDataRequest.setApp_key(this.f27665b);
            com.join.mgps.rpc.m.b(payGameDataRequest, new C0144a());
        }
    }

    /* compiled from: PayGameUtils.java */
    /* loaded from: classes3.dex */
    public interface b {
        void a(c cVar);
    }

    /* compiled from: PayGameUtils.java */
    /* loaded from: classes3.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        private int f27670a;

        /* renamed from: b  reason: collision with root package name */
        private String f27671b;

        /* renamed from: c  reason: collision with root package name */
        private long f27672c;

        public c() {
        }

        public int a() {
            return this.f27670a;
        }

        public String b() {
            return this.f27671b;
        }

        public long c() {
            return this.f27672c;
        }

        public void d(int i2) {
            this.f27670a = i2;
        }

        public void e(String str) {
            this.f27671b = str;
        }

        public void f(long j4) {
            this.f27672c = j4;
        }

        public String toString() {
            return "{\"code\":" + this.f27670a + ",\"gid\":\"" + this.f27671b + "\",\"time\":" + this.f27672c + "}";
        }
    }

    private k1() {
    }

    public static k1 c() {
        if (f27663a == null) {
            f27663a = new k1();
        }
        return f27663a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long d() {
        return System.currentTimeMillis() + 86400000;
    }

    public void b(Context context, String str, b bVar) {
        t0.d("xxxxx", "method checkPayGameResult() called.appkey=" + str);
        c cVar = new c();
        try {
            new a(context, str, cVar, bVar).start();
        } catch (Exception e4) {
            t0.d("xxxxx", "checkPayGamePay::Exception" + e4.getLocalizedMessage());
            e4.printStackTrace();
            bVar.a(cVar);
        }
    }

    public void e(Context context, String str, String str2) {
        Intent intent = new Intent("com.join.android.wufun.sdk.wfsg.broadcast." + str);
        c cVar = new c();
        cVar.d(1);
        cVar.f(d());
        cVar.e(str2);
        intent.putExtra("result", JsonMapper.defaultAll().toJson(cVar));
        context.sendBroadcast(intent);
    }
}
