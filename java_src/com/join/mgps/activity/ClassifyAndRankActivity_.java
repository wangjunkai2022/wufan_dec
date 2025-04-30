package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ClassifyAndRankActivity_ extends ClassifyAndRankActivity implements g3.a, i3.a, i3.b {

    /* renamed from: l  reason: collision with root package name */
    public static final String f28568l = "intentFrom";

    /* renamed from: m  reason: collision with root package name */
    public static final String f28569m = "currentIndex";

    /* renamed from: n  reason: collision with root package name */
    public static final String f28570n = "isFormNewRank";

    /* renamed from: j  reason: collision with root package name */
    private final i3.c f28571j = new i3.c();

    /* renamed from: k  reason: collision with root package name */
    private final Map<Class<?>, Object> f28572k = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyAndRankActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyAndRankActivity_.this.D0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ClassifyAndRankActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ClassifyAndRankActivity_.super.updateDownloadView();
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
                ClassifyAndRankActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class f extends org.androidannotations.api.builder.a<f> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28578a;

        public f(Context context) {
            super(context, ClassifyAndRankActivity_.class);
        }

        public f a(int i2) {
            return (f) super.extra(ClassifyAndRankActivity_.f28569m, i2);
        }

        public f b(int i2) {
            return (f) super.extra("intentFrom", i2);
        }

        public f c(boolean z3) {
            return (f) super.extra(ClassifyAndRankActivity_.f28570n, z3);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28578a;
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
            super(fragment.getActivity(), ClassifyAndRankActivity_.class);
            this.f28578a = fragment;
        }
    }

    public static f H0(Context context) {
        return new f(context);
    }

    public static f I0(Fragment fragment) {
        return new f(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("intentFrom")) {
                this.f28559a = extras.getInt("intentFrom");
            }
            if (extras.containsKey(f28569m)) {
                this.f28560b = extras.getInt(f28569m);
            }
            if (extras.containsKey(f28570n)) {
                this.f28561c = extras.getBoolean(f28570n);
            }
        }
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f28572k.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ClassifyAndRankActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f28571j);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.classify_and_rank_activity_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28562d = (RelativeLayout) aVar.internalFindViewById(R.id.fragment);
        this.f28563e = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f28564f = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f28565g = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        ImageView imageView = this.f28564f;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        CustomerDownloadView customerDownloadView = this.f28565g;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new b());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new c());
        }
        afterviews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f28572k.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f28571j.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ClassifyAndRankActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f28571j.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f28571j.a(this);
    }
}
