package com.join.android.app.component.album;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ClipImageLayout;
import com.join.mgps.dto.AccountBean;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes.dex */
public final class CropPicActivity_ extends CropPicActivity implements g3.a, i3.a, i3.b {

    /* renamed from: r  reason: collision with root package name */
    public static final String f17313r = "CaptureUri";

    /* renamed from: s  reason: collision with root package name */
    public static final String f17314s = "accountBean";

    /* renamed from: t  reason: collision with root package name */
    public static final String f17315t = "from";

    /* renamed from: p  reason: collision with root package name */
    private final i3.c f17316p = new i3.c();

    /* renamed from: q  reason: collision with root package name */
    private final Map<Class<?>, Object> f17317q = new HashMap();

    /* loaded from: classes.dex */
    class a extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f17318a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, long j4, String str2, File file) {
            super(str, j4, str2);
            this.f17318a = file;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CropPicActivity_.super.J0(this.f17318a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CropPicActivity_.this.back_image();
        }
    }

    /* loaded from: classes.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CropPicActivity_.this.F0();
        }
    }

    /* loaded from: classes.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CropPicActivity_.super.showLoading();
        }
    }

    /* loaded from: classes.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Bitmap f17323a;

        e(Bitmap bitmap) {
            this.f17323a = bitmap;
        }

        @Override // java.lang.Runnable
        public void run() {
            CropPicActivity_.super.G0(this.f17323a);
        }
    }

    /* loaded from: classes.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CropPicActivity_.super.C0();
        }
    }

    /* loaded from: classes.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CropPicActivity_.super.showLodingDismis();
        }
    }

    /* loaded from: classes.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CropPicActivity_.super.D0();
        }
    }

    /* loaded from: classes.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f17328a;

        i(String str) {
            this.f17328a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            CropPicActivity_.super.error(this.f17328a);
        }
    }

    /* loaded from: classes.dex */
    class j extends a.c {
        j(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CropPicActivity_.super.H0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class k extends org.androidannotations.api.builder.a<k> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f17331a;

        public k(Context context) {
            super(context, CropPicActivity_.class);
        }

        public k a(String str) {
            return (k) super.extra(CropPicActivity_.f17313r, str);
        }

        public k b(AccountBean accountBean) {
            return (k) super.extra("accountBean", accountBean);
        }

        public k c(int i2) {
            return (k) super.extra("from", i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f17331a;
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
            super(fragment.getActivity(), CropPicActivity_.class);
            this.f17331a = fragment;
        }
    }

    public static k S0(Context context) {
        return new k(context);
    }

    public static k T0(Fragment fragment) {
        return new k(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(f17313r)) {
                this.f17307i = extras.getString(f17313r);
            }
            if (extras.containsKey("accountBean")) {
                this.f17308j = (AccountBean) extras.getSerializable("accountBean");
            }
            if (extras.containsKey("from")) {
                this.f17311m = extras.getInt("from");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.component.album.CropPicActivity
    public void C0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.component.album.CropPicActivity
    public void D0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.component.album.CropPicActivity
    public void G0(Bitmap bitmap) {
        org.androidannotations.api.b.e("", new e(bitmap), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.component.album.CropPicActivity
    public void H0() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.component.album.CropPicActivity
    public void J0(File file) {
        org.androidannotations.api.a.l(new a("", 0L, "", file));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.component.album.CropPicActivity
    public void error(String str) {
        org.androidannotations.api.b.e("", new i(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f17317q.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f17316p);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.crop_pic_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f17299a = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f17300b = (Button) aVar.internalFindViewById(R.id.searchImage);
        this.f17301c = (ClipImageLayout) aVar.internalFindViewById(R.id.id_clipImageLayout);
        this.f17302d = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f17306h = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        ImageView imageView = this.f17299a;
        if (imageView != null) {
            imageView.setOnClickListener(new b());
        }
        Button button = this.f17300b;
        if (button != null) {
            button.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f17317q.put(cls, t3);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f17316p.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.component.album.CropPicActivity
    public void showLoading() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.android.app.component.album.CropPicActivity
    public void showLodingDismis() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f17316p.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f17316p.a(this);
    }
}
