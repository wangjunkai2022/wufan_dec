package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.dto.GameVerByBg;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class LinkProxyActivity_ extends LinkProxyActivity implements g3.a, i3.a, i3.b {

    /* renamed from: c  reason: collision with root package name */
    private final i3.c f32908c = new i3.c();

    /* renamed from: d  reason: collision with root package name */
    private final Map<Class<?>, Object> f32909d = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f32910a;

        a(boolean z3) {
            this.f32910a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            LinkProxyActivity_.super.J0(this.f32910a);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LinkProxyActivity_.super.F0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameVerByBg f32913a;

        c(GameVerByBg gameVerByBg) {
            this.f32913a = gameVerByBg;
        }

        @Override // java.lang.Runnable
        public void run() {
            LinkProxyActivity_.super.E0(this.f32913a);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f32915a;

        d(String str) {
            this.f32915a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            LinkProxyActivity_.super.showMessage(this.f32915a);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f32917a;

        e(int i2) {
            this.f32917a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            LinkProxyActivity_.super.D0(this.f32917a);
        }
    }

    /* loaded from: classes3.dex */
    class f extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f32919a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f32920b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f32921c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, long j4, String str2, String str3, int i2, String str4) {
            super(str, j4, str2);
            this.f32919a = str3;
            this.f32920b = i2;
            this.f32921c = str4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                LinkProxyActivity_.super.I0(this.f32919a, this.f32920b, this.f32921c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class g extends org.androidannotations.api.builder.a<g> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32923a;

        public g(Context context) {
            super(context, LinkProxyActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32923a;
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

        public g(Fragment fragment) {
            super(fragment.getActivity(), LinkProxyActivity_.class);
            this.f32923a = fragment;
        }
    }

    public static g Q0(Context context) {
        return new g(context);
    }

    public static g R0(Fragment fragment) {
        return new g(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LinkProxyActivity
    public void D0(int i2) {
        org.androidannotations.api.b.e("", new e(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LinkProxyActivity
    public void E0(GameVerByBg gameVerByBg) {
        org.androidannotations.api.b.e("", new c(gameVerByBg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LinkProxyActivity
    public void F0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LinkProxyActivity
    public void I0(String str, int i2, String str2) {
        org.androidannotations.api.a.l(new f("", 0L, "", str, i2, str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LinkProxyActivity
    public void J0(boolean z3) {
        org.androidannotations.api.b.e("", new a(z3), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f32909d.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f32908c);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_link_proxy);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32903a = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f32909d.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f32908c.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.LinkProxyActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new d(str), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f32908c.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f32908c.a(this);
    }
}
