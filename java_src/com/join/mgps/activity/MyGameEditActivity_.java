package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MyGameEditActivity_ extends MyGameEditActivity implements g3.a, i3.a, i3.b {

    /* renamed from: s  reason: collision with root package name */
    private final i3.c f34266s = new i3.c();

    /* renamed from: t  reason: collision with root package name */
    private final Map<Class<?>, Object> f34267t = new HashMap();

    /* loaded from: classes3.dex */
    class a extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f34268a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f34268a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGameEditActivity_.super.P0(this.f34268a);
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
            MyGameEditActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGameEditActivity_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGameEditActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGameEditActivity_.this.M0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGameEditActivity_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34275a;

        g(String str) {
            this.f34275a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGameEditActivity_.super.S0(this.f34275a);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGameEditActivity_.super.L0();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGameEditActivity_.super.W0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGameEditActivity_.super.O0();
        }
    }

    /* loaded from: classes3.dex */
    public static class k extends org.androidannotations.api.builder.a<k> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34280a;

        public k(Context context) {
            super(context, MyGameEditActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34280a;
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
            super(fragment.getActivity(), MyGameEditActivity_.class);
            this.f34280a = fragment;
        }
    }

    public static k d1(Context context) {
        return new k(context);
    }

    public static k e1(Fragment fragment) {
        return new k(fragment);
    }

    private void init_(Bundle bundle) {
        this.f34243g = new PrefDef_(this);
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameEditActivity
    public void L0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameEditActivity
    public void O0() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameEditActivity
    public void P0(int i2) {
        org.androidannotations.api.a.l(new a("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameEditActivity
    public void S0(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGameEditActivity
    public void W0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34267t.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34266s);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_mygame_edit);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34238b = (ImageView) aVar.internalFindViewById(R.id.isSelector);
        this.f34239c = (ListView) aVar.internalFindViewById(R.id.listView);
        this.f34240d = (Button) aVar.internalFindViewById(R.id.editGameNumber);
        this.f34241e = (LinearLayout) aVar.internalFindViewById(R.id.noneLayout);
        View internalFindViewById = aVar.internalFindViewById(R.id.editAll);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.editCancel);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        Button button = this.f34240d;
        if (button != null) {
            button.setOnClickListener(new c());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new d());
        }
        ImageView imageView = this.f34238b;
        if (imageView != null) {
            imageView.setOnClickListener(new e());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new f());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34267t.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34266s.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34266s.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34266s.a(this);
    }
}
