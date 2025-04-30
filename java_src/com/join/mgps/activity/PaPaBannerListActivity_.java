package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class PaPaBannerListActivity_ extends PaPaBannerListActivity implements g3.a, i3.a, i3.b {

    /* renamed from: p  reason: collision with root package name */
    public static final String f34554p = "type";

    /* renamed from: q  reason: collision with root package name */
    public static final String f34555q = "titleName";

    /* renamed from: r  reason: collision with root package name */
    public static final String f34556r = "enableSearchDownload";

    /* renamed from: s  reason: collision with root package name */
    public static final String f34557s = "params";

    /* renamed from: t  reason: collision with root package name */
    public static final String f34558t = "isSingle";

    /* renamed from: n  reason: collision with root package name */
    private final i3.c f34559n = new i3.c();

    /* renamed from: o  reason: collision with root package name */
    private final Map<Class<?>, Object> f34560o = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaBannerListActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaBannerListActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaBannerListActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaBannerListActivity_.super.updateDownloadView();
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
                PaPaBannerListActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class f extends org.androidannotations.api.builder.a<f> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34566a;

        public f(Context context) {
            super(context, PaPaBannerListActivity_.class);
        }

        public f a(boolean z3) {
            return (f) super.extra(PaPaBannerListActivity_.f34556r, z3);
        }

        public f b(boolean z3) {
            return (f) super.extra("isSingle", z3);
        }

        public f c(String str) {
            return (f) super.extra("params", str);
        }

        public f d(String str) {
            return (f) super.extra(PaPaBannerListActivity_.f34555q, str);
        }

        public f e(int i2) {
            return (f) super.extra("type", i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34566a;
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

        public f(Fragment fragment) {
            super(fragment.getActivity(), PaPaBannerListActivity_.class);
            this.f34566a = fragment;
        }
    }

    public static f I0(Context context) {
        return new f(context);
    }

    public static f J0(Fragment fragment) {
        return new f(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("type")) {
                this.f34542a = extras.getInt("type");
            }
            if (extras.containsKey(f34555q)) {
                this.f34543b = extras.getString(f34555q);
            }
            if (extras.containsKey(f34556r)) {
                this.f34544c = extras.getBoolean(f34556r);
            }
            if (extras.containsKey("params")) {
                this.f34545d = extras.getString("params");
            }
            if (extras.containsKey("isSingle")) {
                this.f34546e = extras.getBoolean("isSingle");
            }
        }
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34560o.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PaPaBannerListActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34559n);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_papa_banner_list);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34547f = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f34548g = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f34549h = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        ImageView imageView = this.f34548g;
        if (imageView != null) {
            imageView.setOnClickListener(new b());
        }
        CustomerDownloadView customerDownloadView = this.f34549h;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34560o.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34559n.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PaPaBannerListActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34559n.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34559n.a(this);
    }
}
