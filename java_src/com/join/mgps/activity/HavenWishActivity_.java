package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.HavenWishResultBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class HavenWishActivity_ extends HavenWishActivity implements g3.a, i3.a, i3.b {

    /* renamed from: h  reason: collision with root package name */
    public static final String f32655h = "downloadTask";

    /* renamed from: f  reason: collision with root package name */
    private final i3.c f32656f = new i3.c();

    /* renamed from: g  reason: collision with root package name */
    private final Map<Class<?>, Object> f32657g = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HavenWishActivity_.this.back();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HavenWishActivity_.this.D0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HavenWishActivity_.super.F0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HavenWishResultBean f32661a;

        d(HavenWishResultBean havenWishResultBean) {
            this.f32661a = havenWishResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            HavenWishActivity_.super.G0(this.f32661a);
        }
    }

    /* loaded from: classes3.dex */
    class e extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f32663a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f32663a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                HavenWishActivity_.super.E0(this.f32663a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class f extends org.androidannotations.api.builder.a<f> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32665a;

        public f(Context context) {
            super(context, HavenWishActivity_.class);
        }

        public f a(DownloadTask downloadTask) {
            return (f) super.extra("downloadTask", downloadTask);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32665a;
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
            super(fragment.getActivity(), HavenWishActivity_.class);
            this.f32665a = fragment;
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
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("downloadTask")) {
            return;
        }
        this.f32654e = (DownloadTask) extras.getSerializable("downloadTask");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HavenWishActivity
    public void E0(String str) {
        org.androidannotations.api.a.l(new e("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HavenWishActivity
    public void F0() {
        org.androidannotations.api.b.e("", new c(), 300L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HavenWishActivity
    public void G0(HavenWishResultBean havenWishResultBean) {
        org.androidannotations.api.b.e("", new d(havenWishResultBean), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f32657g.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f32656f);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.haven_wish_acitivity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32650a = (ImageView) aVar.internalFindViewById(R.id.back);
        this.f32651b = (TextView) aVar.internalFindViewById(R.id.sennd);
        this.f32652c = (EditText) aVar.internalFindViewById(R.id.edittext);
        ImageView imageView = this.f32650a;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        TextView textView = this.f32651b;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        afterviews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f32657g.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f32656f.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f32656f.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f32656f.a(this);
    }
}
