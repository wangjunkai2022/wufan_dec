package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.ForumProfileMessageBean;
import com.join.mgps.dto.GivePriaceBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class GivePraiceActivity_ extends GivePraiceActivity implements g3.a, i3.a, i3.b {

    /* renamed from: s  reason: collision with root package name */
    private final i3.c f32140s = new i3.c();

    /* renamed from: t  reason: collision with root package name */
    private final Map<Class<?>, Object> f32141t = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.M0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.N0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.P0();
        }
    }

    /* loaded from: classes3.dex */
    class f extends a.c {
        f(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GivePraiceActivity_.super.L0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g extends a.c {
        g(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GivePraiceActivity_.super.K0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GivePraiceActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.E0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f32151a;

        j(List list) {
            this.f32151a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.I0(this.f32151a);
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f32153a;

        k(List list) {
            this.f32153a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.J0(this.f32153a);
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.F0();
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f32157a;

        n(int i2) {
            this.f32157a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.O0(this.f32157a);
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f32159a;

        o(List list) {
            this.f32159a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.G0(this.f32159a);
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f32161a;

        p(List list) {
            this.f32161a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            GivePraiceActivity_.super.H0(this.f32161a);
        }
    }

    /* loaded from: classes3.dex */
    public static class q extends org.androidannotations.api.builder.a<q> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32163a;

        public q(Context context) {
            super(context, GivePraiceActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32163a;
            if (fragment != null) {
                fragment.startActivityForResult(this.intent, i2);
            } else {
                Context context = this.context;
                if (context instanceof Activity) {
                    ActivityCompat.startActivityForResult((Activity) context, this.intent, i2, this.lastOptions);
                } else {
                    context.startActivity(this.intent);
                }
            }
            return new org.androidannotations.api.builder.f(this.context);
        }

        public q(Fragment fragment) {
            super(fragment.getActivity(), GivePraiceActivity_.class);
            this.f32163a = fragment;
        }
    }

    public static q g1(Context context) {
        return new q(context);
    }

    public static q h1(Fragment fragment) {
        return new q(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void E0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void F0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void G0(List<ForumProfileMessageBean> list) {
        org.androidannotations.api.b.e("", new o(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void H0(List<GivePriaceBean.MessagesBean.DataBean> list) {
        org.androidannotations.api.b.e("", new p(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void I0(List<ForumProfileMessageBean> list) {
        org.androidannotations.api.b.e("", new j(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void J0(List<GivePriaceBean.MessagesBean.DataBean> list) {
        org.androidannotations.api.b.e("", new k(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void K0() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void L0() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void M0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void N0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void O0(int i2) {
        org.androidannotations.api.b.e("", new n(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void P0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void Q0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f32141t.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f32140s);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_give_price);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32109a = (LinearLayout) aVar.internalFindViewById(R.id.ll_finsh);
        this.f32110b = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.myswip);
        this.f32111c = (XListView2) aVar.internalFindViewById(R.id.listview);
        this.f32112d = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f32113e = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f32116h = (LinearLayout) aVar.internalFindViewById(R.id.iv_nome);
        this.f32117i = (LinearLayout) aVar.internalFindViewById(R.id.ll_title);
        Button button = (Button) aVar.internalFindViewById(R.id.setNetwork);
        this.f32126r = button;
        if (button != null) {
            button.setOnClickListener(new h());
        }
        D0();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f32141t.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f32140s.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GivePraiceActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f32140s.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f32140s.a(this);
    }
}
