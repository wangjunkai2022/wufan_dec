package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: DownloadCenterFragment_.java */
/* loaded from: classes4.dex */
public final class h0 extends g0 implements g3.a, i3.a, i3.b {
    private View A;

    /* renamed from: z  reason: collision with root package name */
    private final i3.c f48780z = new i3.c();
    private final Map<Class<?>, Object> B = new HashMap();
    private final IntentFilter C = new IntentFilter();
    private final BroadcastReceiver D = new h();

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.M();
        }
    }

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.w0();
        }
    }

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.f0();
        }
    }

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f48784a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f48785b;

        d(DownloadTask downloadTask, int i2) {
            this.f48784a = downloadTask;
            this.f48785b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.y0(this.f48784a, this.f48785b);
        }
    }

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    class e extends a.c {
        e(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h0.super.R();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    class f extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f48788a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f48789b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, long j4, String str2, Context context, String str3) {
            super(str, j4, str2);
            this.f48788a = context;
            this.f48789b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h0.super.u0(this.f48788a, this.f48789b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    class g extends a.c {
        g(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h0.super.q0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    class h extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f48792b = "gameData";

        h() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            h0.this.g0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.V();
        }
    }

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.o0();
        }
    }

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.p0();
        }
    }

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.setNetwork();
        }
    }

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.W();
        }
    }

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f48799a;

        n(String str) {
            this.f48799a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.x0(this.f48799a);
        }
    }

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f48801a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f48802b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f48803c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ List f48804d;

        o(List list, List list2, List list3, List list4) {
            this.f48801a = list;
            this.f48802b = list2;
            this.f48803c = list3;
            this.f48804d = list4;
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.b0(this.f48801a, this.f48802b, this.f48803c, this.f48804d);
        }
    }

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.d0();
        }
    }

    /* compiled from: DownloadCenterFragment_.java */
    /* loaded from: classes4.dex */
    public static class q extends org.androidannotations.api.builder.d<q, g0> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public g0 build() {
            h0 h0Var = new h0();
            h0Var.setArguments(this.args);
            return h0Var;
        }
    }

    public static q L0() {
        return new q();
    }

    private void init_(Bundle bundle) {
        this.f48725d = new PrefDef_(getActivity());
        i3.c.b(this);
        this.C.addAction(f1.a.H);
        this.C.addAction(f1.a.F);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g0
    public void M() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g0
    public void R() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g0
    public void W() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g0
    public void b0(List<DownloadTask> list, List<DownloadTask> list2, List<DownloadTask> list3, List<DownloadTask> list4) {
        org.androidannotations.api.b.e("", new o(list, list2, list3, list4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g0
    public void d0() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g0
    public void f0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.B.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.A;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // com.join.mgps.fragment.g0, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f48780z);
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
            this.A = layoutInflater.inflate(R.layout.fragment_download_center, viewGroup, false);
        }
        return this.A;
    }

    @Override // com.join.mgps.fragment.g0, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.D);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.A = null;
        this.f48726e = null;
        this.f48727f = null;
        this.f48728g = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48726e = (ListView) aVar.internalFindViewById(R.id.downloadListView);
        this.f48727f = (LinearLayout) aVar.internalFindViewById(R.id.noneLayout);
        this.f48728g = (LinearLayout) aVar.internalFindViewById(R.id.topTip);
        View internalFindViewById = aVar.internalFindViewById(R.id.goVip);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setting);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.topTipClose);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new i());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new j());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new k());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new l());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f48780z.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.B.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g0
    public void q0() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g0
    public void u0(Context context, String str) {
        org.androidannotations.api.a.l(new f("", 0L, "", context, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g0
    public void w0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g0
    public void x0(String str) {
        org.androidannotations.api.b.e("", new n(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g0
    public void y0(DownloadTask downloadTask, int i2) {
        org.androidannotations.api.b.e("", new d(downloadTask, i2), 0L);
    }
}
