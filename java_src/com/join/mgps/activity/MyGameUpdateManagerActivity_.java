package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MyGameUpdateManagerActivity_ extends MyGameUpdateManagerActivity implements g3.a, i3.a, i3.b {

    /* renamed from: j  reason: collision with root package name */
    private final i3.c f34318j = new i3.c();

    /* renamed from: k  reason: collision with root package name */
    private final Map<Class<?>, Object> f34319k = new HashMap();

    /* loaded from: classes3.dex */
    class a extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34320a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f34320a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGameUpdateManagerActivity_.super.L0(this.f34320a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGameUpdateManagerActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGameUpdateManagerActivity_.super.R0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34324a;

        d(String str) {
            this.f34324a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGameUpdateManagerActivity_.super.a1(this.f34324a);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HashMap f34326a;

        e(HashMap hashMap) {
            this.f34326a = hashMap;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGameUpdateManagerActivity_.super.S0(this.f34326a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34328a;

        f(String str) {
            this.f34328a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGameUpdateManagerActivity_.super.U0(this.f34328a);
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
                MyGameUpdateManagerActivity_.super.V0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class h extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f34331a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String str, long j4, String str2, List list) {
            super(str, j4, str2);
            this.f34331a = list;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGameUpdateManagerActivity_.super.W0(this.f34331a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34333a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f34333a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGameUpdateManagerActivity_.super.X0(this.f34333a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34335a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f34335a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGameUpdateManagerActivity_.super.M0(this.f34335a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class k extends org.androidannotations.api.builder.a<k> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34337a;

        public k(Context context) {
            super(context, MyGameUpdateManagerActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34337a;
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
            super(fragment.getActivity(), MyGameUpdateManagerActivity_.class);
            this.f34337a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    public static k k1(Context context) {
        return new k(context);
    }

    public static k l1(Fragment fragment) {
        return new k(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void L0(String str) {
        org.androidannotations.api.a.l(new a("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void M0(String str) {
        org.androidannotations.api.a.l(new j("", 200L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void R0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void S0(HashMap<String, Boolean> hashMap) {
        org.androidannotations.api.b.e("", new e(hashMap), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void U0(String str) {
        org.androidannotations.api.b.e("", new f(str), 100L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void V0() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void W0(List<DownloadTask> list) {
        org.androidannotations.api.a.l(new h("", 0L, "", list));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void X0(String str) {
        org.androidannotations.api.a.l(new i("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameUpdateManagerActivity
    public void a1(String str) {
        org.androidannotations.api.b.e("", new d(str), 500L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34319k.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34318j);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_plug_manager);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34306a = (TextView) aVar.internalFindViewById(R.id.forum_title_center);
        this.f34307b = (XListView2) aVar.internalFindViewById(R.id.listView);
        this.f34308c = aVar.internalFindViewById(R.id.root);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34319k.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34318j.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34318j.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34318j.a(this);
    }
}
