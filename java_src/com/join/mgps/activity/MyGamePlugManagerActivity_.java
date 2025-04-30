package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MyGamePlugManagerActivity_ extends MyGamePlugManagerActivity implements g3.a, i3.a, i3.b {

    /* renamed from: i  reason: collision with root package name */
    private final i3.c f34295i = new i3.c();

    /* renamed from: j  reason: collision with root package name */
    private final Map<Class<?>, Object> f34296j = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGamePlugManagerActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyGamePlugManagerActivity_.super.I0();
        }
    }

    /* loaded from: classes3.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34299a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f34299a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGamePlugManagerActivity_.super.J0(this.f34299a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34301a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f34301a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGamePlugManagerActivity_.super.G0(this.f34301a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f34303a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f34303a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MyGamePlugManagerActivity_.super.F0(this.f34303a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class f extends org.androidannotations.api.builder.a<f> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34305a;

        public f(Context context) {
            super(context, MyGamePlugManagerActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34305a;
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
            super(fragment.getActivity(), MyGamePlugManagerActivity_.class);
            this.f34305a = fragment;
        }
    }

    public static f O0(Context context) {
        return new f(context);
    }

    public static f P0(Fragment fragment) {
        return new f(fragment);
    }

    private void init_(Bundle bundle) {
        this.f34289d = new PrefDef_(this);
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGamePlugManagerActivity
    public void F0(String str) {
        org.androidannotations.api.a.l(new e("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGamePlugManagerActivity
    public void G0(String str) {
        org.androidannotations.api.a.l(new d("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGamePlugManagerActivity
    public void I0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MyGamePlugManagerActivity
    public void J0(String str) {
        org.androidannotations.api.a.l(new c("", 0L, "", str));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34296j.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34295i);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_plug_manager);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34286a = (TextView) aVar.internalFindViewById(R.id.forum_title_center);
        this.f34287b = (XListView2) aVar.internalFindViewById(R.id.listView);
        this.f34288c = aVar.internalFindViewById(R.id.root);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34296j.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34295i.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34295i.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34295i.a(this);
    }
}
