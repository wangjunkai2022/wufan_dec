package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: UserCenterFragment_.java */
/* loaded from: classes4.dex */
public final class v4 extends u4 implements g3.a, i3.a, i3.b {
    private View A;

    /* renamed from: z  reason: collision with root package name */
    private final i3.c f50573z = new i3.c();
    private final Map<Class<?>, Object> B = new HashMap();
    private final IntentFilter C = new IntentFilter();
    private final BroadcastReceiver D = new f();

    /* compiled from: UserCenterFragment_.java */
    /* loaded from: classes4.dex */
    class a extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50574a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f50575b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, long j4, String str2, String str3, int i2) {
            super(str, j4, str2);
            this.f50574a = str3;
            this.f50575b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                v4.super.changeMgState(this.f50574a, this.f50575b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: UserCenterFragment_.java */
    /* loaded from: classes4.dex */
    class b extends a.c {
        b(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                v4.super.touristLogin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: UserCenterFragment_.java */
    /* loaded from: classes4.dex */
    class c extends a.c {
        c(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                v4.super.getViewConfigs();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: UserCenterFragment_.java */
    /* loaded from: classes4.dex */
    class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                v4.super.getUserInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: UserCenterFragment_.java */
    /* loaded from: classes4.dex */
    class e extends a.c {
        e(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                v4.super.pullMyProfileInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: UserCenterFragment_.java */
    /* loaded from: classes4.dex */
    class f extends BroadcastReceiver {
        f() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            v4.this.updateInfo(context);
        }
    }

    /* compiled from: UserCenterFragment_.java */
    /* loaded from: classes4.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v4.this.ll_copper();
        }
    }

    /* compiled from: UserCenterFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v4.super.refreshViews();
        }
    }

    /* compiled from: UserCenterFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v4.super.showNotifUi();
        }
    }

    /* compiled from: UserCenterFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v4.super.loadViewConfigsFromLocal();
        }
    }

    /* compiled from: UserCenterFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v4.super.hideRedPoint();
        }
    }

    /* compiled from: UserCenterFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v4.super.tokenFailure();
        }
    }

    /* compiled from: UserCenterFragment_.java */
    /* loaded from: classes4.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50588a;

        m(String str) {
            this.f50588a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            v4.super.showToast(this.f50588a);
        }
    }

    /* compiled from: UserCenterFragment_.java */
    /* loaded from: classes4.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f50590a;

        n(int i2) {
            this.f50590a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            v4.super.updateAdapterByNewMsgCount(this.f50590a);
        }
    }

    /* compiled from: UserCenterFragment_.java */
    /* loaded from: classes4.dex */
    public static class o extends org.androidannotations.api.builder.d<o, u4> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public u4 build() {
            v4 v4Var = new v4();
            v4Var.setArguments(this.args);
            return v4Var;
        }
    }

    public static o e0() {
        return new o();
    }

    private void init_(Bundle bundle) {
        this.f50471t = new PrefDef_(getActivity());
        i3.c.b(this);
        this.C.addAction(f1.a.B);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u4
    public void changeMgState(String str, int i2) {
        org.androidannotations.api.a.l(new a("", 0L, "", str, i2));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.B.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u4
    public void getUserInfo() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u4
    public void getViewConfigs() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u4
    public void hideRedPoint() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.A;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u4
    public void loadViewConfigsFromLocal() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f50573z);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.D, this.C);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.A = onCreateView;
        if (onCreateView == null) {
            this.A = layoutInflater.inflate(R.layout.fragment_usercenter, viewGroup, false);
        }
        return this.A;
    }

    @Override // com.join.mgps.fragment.u4, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.D);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.A = null;
        this.f50452a = null;
        this.f50453b = null;
        this.f50454c = null;
        this.f50455d = null;
        this.f50456e = null;
        this.f50457f = null;
        this.f50458g = null;
        this.f50459h = null;
        this.f50460i = null;
        this.f50461j = null;
        this.f50462k = null;
        this.f50463l = null;
        this.f50464m = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50452a = (SimpleDraweeView) aVar.internalFindViewById(R.id.iv_user_avatar);
        this.f50453b = (ImageView) aVar.internalFindViewById(R.id.iv_arrow);
        this.f50454c = (TextView) aVar.internalFindViewById(R.id.tv_user_nickname);
        this.f50455d = (ImageView) aVar.internalFindViewById(R.id.iv_user_vip);
        this.f50456e = (TextView) aVar.internalFindViewById(R.id.tv_user_rank);
        this.f50457f = (TextView) aVar.internalFindViewById(R.id.tv_user_account);
        this.f50458g = (TextView) aVar.internalFindViewById(R.id.tv_user_coppers);
        this.f50459h = (TextView) aVar.internalFindViewById(R.id.tv_user_member);
        this.f50460i = (TextView) aVar.internalFindViewById(R.id.tv_user_svip);
        this.f50461j = (LinearLayout) aVar.internalFindViewById(R.id.ll_userinfo);
        this.f50462k = (LinearLayout) aVar.internalFindViewById(R.id.ll_svip);
        this.f50463l = (LinearLayout) aVar.internalFindViewById(R.id.ll_members);
        this.f50464m = (GridView) aVar.internalFindViewById(R.id.mGridView);
        View internalFindViewById = aVar.internalFindViewById(R.id.ll_copper);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new g());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f50573z.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u4
    public void pullMyProfileInfo() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.B.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u4
    public void refreshViews() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u4
    public void showNotifUi() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u4
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new m(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u4
    public void tokenFailure() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u4
    public void touristLogin() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u4
    public void updateAdapterByNewMsgCount(int i2) {
        org.androidannotations.api.b.e("", new n(i2), 0L);
    }
}
