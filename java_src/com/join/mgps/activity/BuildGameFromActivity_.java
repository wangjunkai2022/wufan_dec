package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class BuildGameFromActivity_ extends BuildGameFromActivity implements g3.a, i3.a, i3.b {

    /* renamed from: j  reason: collision with root package name */
    private final i3.c f28413j = new i3.c();

    /* renamed from: k  reason: collision with root package name */
    private final Map<Class<?>, Object> f28414k = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BuildGameFromActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BuildGameFromActivity_.this.iv_back();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28417a;

        c(String str) {
            this.f28417a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            BuildGameFromActivity_.super.F0(this.f28417a);
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                BuildGameFromActivity_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class e extends org.androidannotations.api.builder.a<e> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28420a;

        public e(Context context) {
            super(context, BuildGameFromActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28420a;
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

        public e(Fragment fragment) {
            super(fragment.getActivity(), BuildGameFromActivity_.class);
            this.f28420a = fragment;
        }
    }

    public static e J0(Context context) {
        return new e(context);
    }

    public static e K0(Fragment fragment) {
        return new e(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.BuildGameFromActivity
    public void F0(String str) {
        org.androidannotations.api.b.e("", new c(str), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f28414k.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.BuildGameFromActivity
    public void getData() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f28413j);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_build_game_from);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28404a = (RelativeLayout) aVar.internalFindViewById(R.id.iv_back);
        this.f28405b = (TextView) aVar.internalFindViewById(R.id.tv_finish);
        this.f28406c = (EditText) aVar.internalFindViewById(R.id.ed_game);
        TextView textView = this.f28405b;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
        RelativeLayout relativeLayout = this.f28404a;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new b());
        }
        E0();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f28414k.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f28413j.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f28413j.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f28413j.a(this);
    }
}
