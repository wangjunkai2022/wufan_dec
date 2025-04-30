package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.InterceptEventViewPager;
import com.join.mgps.customview.TabPageIndicator;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class PaPaStandAloneV2Activity_ extends PaPaStandAloneV2Activity implements g3.a, i3.a, i3.b {

    /* renamed from: j  reason: collision with root package name */
    private final i3.c f34587j = new i3.c();

    /* renamed from: k  reason: collision with root package name */
    private final Map<Class<?>, Object> f34588k = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaStandAloneV2Activity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaStandAloneV2Activity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaStandAloneV2Activity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaStandAloneV2Activity_.super.updateDownloadView();
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
                PaPaStandAloneV2Activity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class f extends org.androidannotations.api.builder.a<f> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34594a;

        public f(Context context) {
            super(context, PaPaStandAloneV2Activity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34594a;
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
            super(fragment.getActivity(), PaPaStandAloneV2Activity_.class);
            this.f34594a = fragment;
        }
    }

    public static f K0(Context context) {
        return new f(context);
    }

    public static f L0(Fragment fragment) {
        return new f(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34588k.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PaPaStandAloneV2Activity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34587j);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_papa_standalone_v2);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34578a = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f34579b = (InterceptEventViewPager) aVar.internalFindViewById(R.id.viewPager);
        this.f34580c = (TabPageIndicator) aVar.internalFindViewById(R.id.pageIndicator);
        this.f34581d = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f34582e = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        CustomerDownloadView customerDownloadView = this.f34582e;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new a());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        ImageView imageView = this.f34581d;
        if (imageView != null) {
            imageView.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34588k.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34587j.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PaPaStandAloneV2Activity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34587j.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34587j.a(this);
    }
}
