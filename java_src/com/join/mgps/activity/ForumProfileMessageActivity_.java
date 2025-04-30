package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.ForumBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ForumProfileMessageActivity_ extends ForumProfileMessageActivity implements g3.a, i3.a, i3.b {

    /* renamed from: w  reason: collision with root package name */
    private final i3.c f30554w = new i3.c();

    /* renamed from: x  reason: collision with root package name */
    private final Map<Class<?>, Object> f30555x = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileMessageActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f30557a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30558b;

        b(List list, int i2) {
            this.f30557a = list;
            this.f30558b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageActivity_.super.V0(this.f30557a, this.f30558b);
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30560a;

        c(int i2) {
            this.f30560a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageActivity_.super.I0(this.f30560a);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageActivity_.super.U0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageActivity_.super.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30564a;

        f(String str) {
            this.f30564a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageActivity_.super.showToast(this.f30564a);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageActivity_.super.T0();
        }
    }

    /* loaded from: classes3.dex */
    class h extends a.c {
        h(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageActivity_.super.O0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30568a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f30568a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageActivity_.super.L0(this.f30568a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class j extends org.androidannotations.api.builder.a<j> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f30570a;

        public j(Context context) {
            super(context, ForumProfileMessageActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f30570a;
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

        public j(Fragment fragment) {
            super(fragment.getActivity(), ForumProfileMessageActivity_.class);
            this.f30570a = fragment;
        }
    }

    public static j e1(Context context) {
        return new j(context);
    }

    public static j f1(Fragment fragment) {
        return new j(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f30531h = resources.getString(R.string.net_excption);
        this.f30532i = resources.getString(R.string.connect_server_excption);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageActivity
    public void I0(int i2) {
        org.androidannotations.api.b.e("", new c(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageActivity
    public void L0(int i2) {
        org.androidannotations.api.a.l(new i("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageActivity
    public void O0() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageActivity
    public void Q0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageActivity
    public void T0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageActivity
    public void U0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageActivity
    public void V0(List<ForumBean.ForumProfileMessageBean> list, int i2) {
        org.androidannotations.api.b.e("", new b(list, i2), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f30555x.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f30554w);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.mg_forum_profile_message_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f30524a = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f30525b = (TextView) aVar.internalFindViewById(R.id.layout_title);
        this.f30526c = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f30527d = (XListView2) aVar.internalFindViewById(R.id.mg_forum_profile_message_list);
        ImageView imageView = this.f30524a;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f30555x.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f30554w.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f30554w.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f30554w.a(this);
    }
}
