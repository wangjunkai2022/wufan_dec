package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.FavoritesCenterData;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class CommentSelfListActivity_ extends CommentSelfListActivity implements g3.a, i3.a, i3.b {
    public static final String B = "uid";

    /* renamed from: w  reason: collision with root package name */
    private final i3.c f29342w = new i3.c();

    /* renamed from: x  reason: collision with root package name */
    private final Map<Class<?>, Object> f29343x = new HashMap();

    /* renamed from: y  reason: collision with root package name */
    private final IntentFilter f29344y = new IntentFilter();

    /* renamed from: z  reason: collision with root package name */
    private final BroadcastReceiver f29345z = new i();
    private final BroadcastReceiver A = new j();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivity_.super.Y0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29347a;

        b(int i2) {
            this.f29347a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivity_.super.G0(this.f29347a);
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivity_.super.W0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29350a;

        d(String str) {
            this.f29350a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivity_.super.showMessage(this.f29350a);
        }
    }

    /* loaded from: classes3.dex */
    class e extends a.c {
        e(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentSelfListActivity_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29353a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f29353a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentSelfListActivity_.super.J0(this.f29353a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29355a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f29356b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f29357c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String str, long j4, String str2, int i2, String str3, int i4) {
            super(str, j4, str2);
            this.f29355a = i2;
            this.f29356b = str3;
            this.f29357c = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentSelfListActivity_.super.P0(this.f29355a, this.f29356b, this.f29357c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class h extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29359a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f29360b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f29361c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String str, long j4, String str2, int i2, String str3, int i4) {
            super(str, j4, str2);
            this.f29359a = i2;
            this.f29360b = str3;
            this.f29361c = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentSelfListActivity_.super.H0(this.f29359a, this.f29360b, this.f29361c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i extends BroadcastReceiver {
        i() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommentSelfListActivity_.this.Z0(context);
        }
    }

    /* loaded from: classes3.dex */
    class j extends BroadcastReceiver {
        j() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CommentSelfListActivity_.this.N0(intent);
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.this.U0();
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.this.V0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.this.back();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FavoritesCenterData f29369a;

        o(FavoritesCenterData favoritesCenterData) {
            this.f29369a = favoritesCenterData;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivity_.super.a1(this.f29369a);
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29371a;

        p(String str) {
            this.f29371a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivity_.super.D0(this.f29371a);
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivity_.super.O0();
        }
    }

    /* loaded from: classes3.dex */
    public static class r extends org.androidannotations.api.builder.a<r> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29374a;

        public r(Context context) {
            super(context, CommentSelfListActivity_.class);
        }

        public r a(int i2) {
            return (r) super.extra("uid", i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29374a;
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

        public r(Fragment fragment) {
            super(fragment.getActivity(), CommentSelfListActivity_.class);
            this.f29374a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        this.f29323l = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
        this.f29344y.addAction(f1.a.f65498r);
        registerReceiver(this.f29345z, this.f29344y);
        registerReceiver(this.A, this.f29344y);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("uid")) {
            return;
        }
        this.f29324m = extras.getInt("uid");
    }

    public static r n1(Context context) {
        return new r(context);
    }

    public static r o1(Fragment fragment) {
        return new r(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void D0(String str) {
        org.androidannotations.api.b.e("", new p(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void G0(int i2) {
        org.androidannotations.api.b.e("", new b(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void H0(int i2, String str, int i4) {
        org.androidannotations.api.a.l(new h("", 0L, "", i2, str, i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void J0(int i2) {
        org.androidannotations.api.a.l(new f("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void O0() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void P0(int i2, String str, int i4) {
        org.androidannotations.api.a.l(new g("", 0L, "", i2, str, i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void W0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void Y0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void a1(FavoritesCenterData favoritesCenterData) {
        org.androidannotations.api.b.e("", new o(favoritesCenterData), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f29343x.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void getData() {
        org.androidannotations.api.a.l(new e("", 100L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f29342w);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_comment_self_list);
    }

    @Override // com.join.mgps.activity.CommentSelfListActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f29345z);
        unregisterReceiver(this.A);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29312a = (RelativeLayout) aVar.internalFindViewById(R.id.actionbarLayout);
        this.f29313b = (RelativeLayout) aVar.internalFindViewById(R.id.newTitle);
        this.f29314c = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f29315d = (ImageView) aVar.internalFindViewById(R.id.back);
        this.f29316e = aVar.internalFindViewById(R.id.setting2);
        this.f29317f = aVar.internalFindViewById(R.id.setting3);
        this.f29318g = (XListView2) aVar.internalFindViewById(R.id.listview);
        this.f29319h = aVar.internalFindViewById(R.id.titleStatubar);
        this.f29320i = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        View view = this.f29316e;
        if (view != null) {
            view.setOnClickListener(new k());
        }
        View view2 = this.f29317f;
        if (view2 != null) {
            view2.setOnClickListener(new l());
        }
        ImageView imageView = this.f29315d;
        if (imageView != null) {
            imageView.setOnClickListener(new m());
        }
        ImageView imageView2 = this.f29314c;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new n());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f29343x.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f29342w.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new d(str), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f29342w.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f29342w.a(this);
    }
}
