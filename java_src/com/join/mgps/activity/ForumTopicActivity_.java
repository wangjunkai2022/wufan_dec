package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.ExtBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ForumTopicActivity_ extends ForumTopicActivity implements g3.a, i3.a, i3.b {

    /* renamed from: s0  reason: collision with root package name */
    public static final String f30825s0 = "extBean";

    /* renamed from: q0  reason: collision with root package name */
    private final i3.c f30826q0 = new i3.c();

    /* renamed from: r0  reason: collision with root package name */
    private final Map<Class<?>, Object> f30827r0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30828a;

        a(String str) {
            this.f30828a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.showMessage(this.f30828a);
        }
    }

    /* loaded from: classes3.dex */
    class b extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30830a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f30830a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumTopicActivity_.super.U0(this.f30830a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30832a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f30832a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumTopicActivity_.super.f1(this.f30832a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumTopicActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30835a;

        e(String str) {
            this.f30835a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.showToast(this.f30835a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.y1();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30838a;

        g(int i2) {
            this.f30838a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.F0(this.f30838a);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.m1();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.X0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AbsListView f30842a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30843b;

        j(AbsListView absListView, int i2) {
            this.f30842a = absListView;
            this.f30843b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.E1(this.f30842a, this.f30843b);
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AbsListView f30845a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30846b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f30847c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f30848d;

        k(AbsListView absListView, int i2, int i4, int i5) {
            this.f30845a = absListView;
            this.f30846b = i2;
            this.f30847c = i4;
            this.f30848d = i5;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.D1(this.f30845a, this.f30846b, this.f30847c, this.f30848d);
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumTopicActivity_.super.u1();
        }
    }

    /* loaded from: classes3.dex */
    public static class m extends org.androidannotations.api.builder.a<m> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f30851a;

        public m(Context context) {
            super(context, ForumTopicActivity_.class);
        }

        public m a(ExtBean extBean) {
            return (m) super.extra("extBean", extBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f30851a;
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

        public m(Fragment fragment) {
            super(fragment.getActivity(), ForumTopicActivity_.class);
            this.f30851a = fragment;
        }
    }

    public static m Q1(Context context) {
        return new m(context);
    }

    public static m R1(Fragment fragment) {
        return new m(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("extBean")) {
            return;
        }
        this.f30793j = (ExtBean) extras.getSerializable("extBean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void D1(AbsListView absListView, int i2, int i4, int i5) {
        org.androidannotations.api.b.e("", new k(absListView, i2, i4, i5), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void E1(AbsListView absListView, int i2) {
        org.androidannotations.api.b.e("", new j(absListView, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void F0(int i2) {
        org.androidannotations.api.b.e("", new g(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void U0(int i2) {
        org.androidannotations.api.a.l(new b("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void X0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void f1(int i2) {
        org.androidannotations.api.a.l(new c("", 0L, "", i2));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f30827r0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void m1() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f30826q0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.mg_forum_forum_topic_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f30785b = (RelativeLayout) aVar.internalFindViewById(R.id.actionbarLayout);
        this.f30786c = (TextView) aVar.internalFindViewById(R.id.layout_title);
        this.f30787d = aVar.internalFindViewById(R.id.bottom);
        this.f30788e = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f30789f = (XListView) aVar.internalFindViewById(R.id.listView);
        this.f30804u = (FrameLayout) aVar.internalFindViewById(R.id.videoContainer);
        this.f30805v = (RelativeLayout) aVar.internalFindViewById(R.id.videoLayout);
        this.f30806w = (MyVideoView) aVar.internalFindViewById(R.id.video);
        this.f30807x = (SimpleDraweeView) aVar.internalFindViewById(R.id.cover);
        this.f30808y = (ImageView) aVar.internalFindViewById(R.id.play);
        this.f30809z = (LinearLayout) aVar.internalFindViewById(R.id.loadingLayout);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new d());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f30827r0.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f30826q0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new a(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new e(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void u1() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumTopicActivity
    public void y1() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f30826q0.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f30826q0.a(this);
    }
}
