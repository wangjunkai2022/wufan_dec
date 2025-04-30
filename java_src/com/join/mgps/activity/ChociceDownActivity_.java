package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameDownInfo;
import com.join.mgps.dto.UpdateIntentDataBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ChociceDownActivity_ extends ChociceDownActivity implements g3.a, i3.a, i3.b {

    /* renamed from: v  reason: collision with root package name */
    public static final String f28543v = "downloadTask";

    /* renamed from: w  reason: collision with root package name */
    public static final String f28544w = "updateIntentDataBean";

    /* renamed from: x  reason: collision with root package name */
    public static final String f28545x = "from";

    /* renamed from: t  reason: collision with root package name */
    private final i3.c f28546t = new i3.c();

    /* renamed from: u  reason: collision with root package name */
    private final Map<Class<?>, Object> f28547u = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChociceDownActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChociceDownActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChociceDownActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChociceDownActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChociceDownActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ChociceDownActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ChociceDownActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameDownInfo f28555a;

        h(GameDownInfo gameDownInfo) {
            this.f28555a = gameDownInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            ChociceDownActivity_.super.I0(this.f28555a);
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {
        i(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ChociceDownActivity_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class j extends org.androidannotations.api.builder.a<j> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28558a;

        public j(Context context) {
            super(context, ChociceDownActivity_.class);
        }

        public j a(DownloadTask downloadTask) {
            return (j) super.extra("downloadTask", downloadTask);
        }

        public j b(int i2) {
            return (j) super.extra("from", i2);
        }

        public j c(UpdateIntentDataBean updateIntentDataBean) {
            return (j) super.extra("updateIntentDataBean", updateIntentDataBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28558a;
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
            super(fragment.getActivity(), ChociceDownActivity_.class);
            this.f28558a = fragment;
        }
    }

    public static j O0(Context context) {
        return new j(context);
    }

    public static j P0(Fragment fragment) {
        return new j(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("downloadTask")) {
                this.f28525k = (DownloadTask) extras.getSerializable("downloadTask");
            }
            if (extras.containsKey("updateIntentDataBean")) {
                this.f28526l = (UpdateIntentDataBean) extras.getSerializable("updateIntentDataBean");
            }
            if (extras.containsKey("from")) {
                this.f28527m = extras.getInt("from");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ChociceDownActivity
    public void I0(GameDownInfo gameDownInfo) {
        org.androidannotations.api.b.e("", new h(gameDownInfo), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f28547u.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ChociceDownActivity
    public void getData() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f28546t);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.choice_down_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28515a = (TextView) aVar.internalFindViewById(R.id.title);
        this.f28516b = (TextView) aVar.internalFindViewById(R.id.describ);
        this.f28517c = (ImageView) aVar.internalFindViewById(R.id.closeImage);
        this.f28518d = (TextView) aVar.internalFindViewById(R.id.downFrom1);
        this.f28519e = (TextView) aVar.internalFindViewById(R.id.downFrom2);
        this.f28520f = (TextView) aVar.internalFindViewById(R.id.downFrom11);
        this.f28521g = (TextView) aVar.internalFindViewById(R.id.downFrom21);
        this.f28522h = (TextView) aVar.internalFindViewById(R.id.downFrom3);
        this.f28523i = (RelativeLayout) aVar.internalFindViewById(R.id.main);
        this.f28529o = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f28530p = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f28531q = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f28532r = (RelativeLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f28533s = (RelativeLayout) aVar.internalFindViewById(R.id.layoutq);
        View internalFindViewById = aVar.internalFindViewById(R.id.closeImage1);
        ImageView imageView = this.f28517c;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        ImageView imageView2 = this.f28531q;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new c());
        }
        TextView textView = this.f28520f;
        if (textView != null) {
            textView.setOnClickListener(new d());
        }
        TextView textView2 = this.f28521g;
        if (textView2 != null) {
            textView2.setOnClickListener(new e());
        }
        afterviews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f28547u.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f28546t.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ChociceDownActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ChociceDownActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f28546t.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f28546t.a(this);
    }
}
