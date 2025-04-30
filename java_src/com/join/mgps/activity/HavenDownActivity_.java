package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.HavenForumListbean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class HavenDownActivity_ extends HavenDownActivity implements g3.a, i3.a, i3.b {

    /* renamed from: v  reason: collision with root package name */
    public static final String f32637v = "downloadTask";

    /* renamed from: t  reason: collision with root package name */
    private final i3.c f32638t = new i3.c();

    /* renamed from: u  reason: collision with root package name */
    private final Map<Class<?>, Object> f32639u = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HavenDownActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HavenDownActivity_.this.D0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HavenDownActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HavenDownActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HavenDownActivity_.super.H0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f32645a;

        f(List list) {
            this.f32645a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            HavenDownActivity_.super.updateUi(this.f32645a);
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
                HavenDownActivity_.super.E0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
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
                HavenDownActivity_.super.I0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class i extends org.androidannotations.api.builder.a<i> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32649a;

        public i(Context context) {
            super(context, HavenDownActivity_.class);
        }

        public i a(DownloadTask downloadTask) {
            return (i) super.extra("downloadTask", downloadTask);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32649a;
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

        public i(Fragment fragment) {
            super(fragment.getActivity(), HavenDownActivity_.class);
            this.f32649a = fragment;
        }
    }

    public static i O0(Context context) {
        return new i(context);
    }

    public static i P0(Fragment fragment) {
        return new i(fragment);
    }

    private void init_(Bundle bundle) {
        this.f32616k = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("downloadTask")) {
            return;
        }
        this.f32615j = (DownloadTask) extras.getSerializable("downloadTask");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HavenDownActivity
    public void E0() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HavenDownActivity
    public void H0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HavenDownActivity
    public void I0() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f32639u.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f32638t);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_haven_down);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32606a = aVar.internalFindViewById(R.id.topLayout);
        this.f32607b = aVar.internalFindViewById(R.id.showView);
        this.f32608c = aVar.internalFindViewById(R.id.downFrom);
        this.f32609d = aVar.internalFindViewById(R.id.forumData);
        this.f32610e = aVar.internalFindViewById(R.id.layoutq);
        this.f32611f = aVar.internalFindViewById(R.id.goVow);
        this.f32612g = (TextView) aVar.internalFindViewById(R.id.downFromText);
        this.f32613h = (TextView) aVar.internalFindViewById(R.id.appName);
        this.f32614i = (RecyclerView) aVar.internalFindViewById(R.id.recycleView);
        View internalFindViewById = aVar.internalFindViewById(R.id.goforumTagList);
        View view = this.f32611f;
        if (view != null) {
            view.setOnClickListener(new a());
        }
        View view2 = this.f32608c;
        if (view2 != null) {
            view2.setOnClickListener(new b());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new c());
        }
        afterviews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f32639u.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f32638t.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HavenDownActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HavenDownActivity
    public void updateUi(List<HavenForumListbean> list) {
        org.androidannotations.api.b.e("", new f(list), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f32638t.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f32638t.a(this);
    }
}
