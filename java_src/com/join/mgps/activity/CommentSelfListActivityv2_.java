package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class CommentSelfListActivityv2_ extends CommentSelfListActivityv2 implements g3.a, i3.a, i3.b {

    /* renamed from: q  reason: collision with root package name */
    private final i3.c f29399q = new i3.c();

    /* renamed from: r  reason: collision with root package name */
    private final Map<Class<?>, Object> f29400r = new HashMap();

    /* loaded from: classes3.dex */
    class a extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29401a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f29402b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f29403c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, long j4, String str2, int i2, String str3, int i4) {
            super(str, j4, str2);
            this.f29401a = i2;
            this.f29402b = str3;
            this.f29403c = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentSelfListActivityv2_.super.G0(this.f29401a, this.f29402b, this.f29403c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivityv2_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29406a;

        c(String str) {
            this.f29406a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivityv2_.super.D0(this.f29406a);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivityv2_.super.M0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivityv2_.super.U0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29410a;

        f(int i2) {
            this.f29410a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivityv2_.super.F0(this.f29410a);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivityv2_.super.S0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29413a;

        h(String str) {
            this.f29413a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentSelfListActivityv2_.super.showMessage(this.f29413a);
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29415a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f29415a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentSelfListActivityv2_.super.I0(this.f29415a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29417a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f29418b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f29419c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String str, long j4, String str2, int i2, String str3, int i4) {
            super(str, j4, str2);
            this.f29417a = i2;
            this.f29418b = str3;
            this.f29419c = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentSelfListActivityv2_.super.N0(this.f29417a, this.f29418b, this.f29419c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class k extends org.androidannotations.api.builder.a<k> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29421a;

        public k(Context context) {
            super(context, CommentSelfListActivityv2_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29421a;
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

        public k(Fragment fragment) {
            super(fragment.getActivity(), CommentSelfListActivityv2_.class);
            this.f29421a = fragment;
        }
    }

    public static k f1(Context context) {
        return new k(context);
    }

    public static k g1(Fragment fragment) {
        return new k(fragment);
    }

    private void init_(Bundle bundle) {
        this.f29383i = new PrefDef_(this);
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void D0(String str) {
        org.androidannotations.api.b.e("", new c(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void F0(int i2) {
        org.androidannotations.api.b.e("", new f(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void G0(int i2, String str, int i4) {
        org.androidannotations.api.a.l(new a("", 0L, "", i2, str, i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void I0(int i2) {
        org.androidannotations.api.a.l(new i("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void M0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void N0(int i2, String str, int i4) {
        org.androidannotations.api.a.l(new j("", 0L, "", i2, str, i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void S0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void U0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f29400r.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f29399q);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_comment_self_list_v2);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29375a = (RelativeLayout) aVar.internalFindViewById(R.id.actionbarLayout);
        this.f29376b = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f29377c = (TextView) aVar.internalFindViewById(R.id.forum_title_center);
        this.f29378d = (TextView) aVar.internalFindViewById(R.id.layout_title);
        this.f29379e = (XListView2) aVar.internalFindViewById(R.id.listview);
        this.f29380f = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f29381g = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        ImageView imageView = this.f29376b;
        if (imageView != null) {
            imageView.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f29400r.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f29399q.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentSelfListActivityv2
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new h(str), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f29399q.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f29399q.a(this);
    }
}
