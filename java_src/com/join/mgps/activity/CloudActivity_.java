package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CloudUploadInfo;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class CloudActivity_ extends CloudActivity implements g3.a, i3.a, i3.b {

    /* renamed from: s  reason: collision with root package name */
    private final i3.c f28672s = new i3.c();

    /* renamed from: t  reason: collision with root package name */
    private final Map<Class<?>, Object> f28673t = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f28676a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f28677b;

        c(int i2, int i4) {
            this.f28676a = i2;
            this.f28677b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudActivity_.super.I0(this.f28676a, this.f28677b);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f28679a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f28680b;

        d(int i2, int i4) {
            this.f28679a = i2;
            this.f28680b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudActivity_.super.J0(this.f28679a, this.f28680b);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudActivity_.super.K0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudActivity_.super.O0();
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
                CloudActivity_.super.P0();
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
                CloudActivity_.super.uploadSuccess();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f28686a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CloudUploadInfo f28687b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ File f28688c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String str, long j4, String str2, Context context, CloudUploadInfo cloudUploadInfo, File file) {
            super(str, j4, str2);
            this.f28686a = context;
            this.f28687b = cloudUploadInfo;
            this.f28688c = file;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudActivity_.super.M0(this.f28686a, this.f28687b, this.f28688c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class j extends org.androidannotations.api.builder.a<j> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28690a;

        public j(Context context) {
            super(context, CloudActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28690a;
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
            super(fragment.getActivity(), CloudActivity_.class);
            this.f28690a = fragment;
        }
    }

    public static j X0(Context context) {
        return new j(context);
    }

    public static j Y0(Fragment fragment) {
        return new j(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudActivity
    public void I0(int i2, int i4) {
        org.androidannotations.api.b.e("", new c(i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudActivity
    public void J0(int i2, int i4) {
        org.androidannotations.api.b.e("", new d(i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudActivity
    public void K0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // com.join.mgps.activity.CloudActivity
    public void M0(Context context, CloudUploadInfo cloudUploadInfo, File file) {
        org.androidannotations.api.a.l(new i("", 0L, "", context, cloudUploadInfo, file));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudActivity
    public void O0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudActivity
    public void P0() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f28673t.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f28672s);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.cloud);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28637a = (ListView) aVar.internalFindViewById(R.id.listview);
        this.f28642f = (Button) aVar.internalFindViewById(R.id.sub);
        TextView textView = (TextView) aVar.internalFindViewById(R.id.select_txt);
        this.f28643g = textView;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
        Button button = this.f28642f;
        if (button != null) {
            button.setOnClickListener(new b());
        }
        afterView();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f28673t.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f28672s.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudActivity
    public void uploadSuccess() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f28672s.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f28672s.a(this);
    }
}
