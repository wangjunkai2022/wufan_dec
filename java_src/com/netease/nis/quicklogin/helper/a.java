package com.netease.nis.quicklogin.helper;

import android.content.Context;
import com.netease.nis.basesdk.HttpUtil;
import com.netease.nis.quicklogin.listener.QuickLoginPreMobileListener;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;
import com.netease.nis.quicklogin.utils.g;
/* compiled from: AbstractLoginHelper.java */
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f54211a = true;

    /* compiled from: AbstractLoginHelper.java */
    /* renamed from: com.netease.nis.quicklogin.helper.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0254a implements HttpUtil.ResponseCallBack {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f54212a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ QuickLoginTokenListener f54213b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f54214c;

        C0254a(String str, QuickLoginTokenListener quickLoginTokenListener, String str2) {
            this.f54212a = str;
            this.f54213b = quickLoginTokenListener;
            this.f54214c = str2;
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i2, String str) {
            g.c().b().h(this.f54214c);
            a.this.a(i2, str, this.f54212a, this.f54213b);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            a.this.a(str, this.f54212a, this.f54213b);
        }
    }

    /* compiled from: AbstractLoginHelper.java */
    /* loaded from: classes4.dex */
    class b implements HttpUtil.ResponseCallBack {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f54216a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ QuickLoginTokenListener f54217b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f54218c;

        b(String str, QuickLoginTokenListener quickLoginTokenListener, String str2) {
            this.f54216a = str;
            this.f54217b = quickLoginTokenListener;
            this.f54218c = str2;
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i2, String str) {
            g.c().b().h(this.f54218c);
            a.this.a(i2, str, this.f54216a, this.f54217b);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            a.this.a(str, this.f54216a, this.f54217b);
        }
    }

    protected void a(int i2, String str, String str2, QuickLoginTokenListener quickLoginTokenListener) {
    }

    public void a(Context context, String str, String str2, QuickLoginTokenListener quickLoginTokenListener) {
        if (this.f54211a) {
            HttpUtil.doGetRequestByMobileNet(context, str, new C0254a(str2, quickLoginTokenListener, str));
        } else {
            HttpUtil.doGetRequestByForm(str, new b(str2, quickLoginTokenListener, str));
        }
    }

    public abstract void a(String str, QuickLoginPreMobileListener quickLoginPreMobileListener);

    public abstract void a(String str, QuickLoginTokenListener quickLoginTokenListener);

    protected void a(String str, String str2, QuickLoginTokenListener quickLoginTokenListener) {
    }
}
