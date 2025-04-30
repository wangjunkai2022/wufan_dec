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
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class DownLargeGameDialogActivity_ extends DownLargeGameDialogActivity implements g3.a, i3.a, i3.b {

    /* renamed from: g  reason: collision with root package name */
    private final i3.c f29587g = new i3.c();

    /* renamed from: h  reason: collision with root package name */
    private final Map<Class<?>, Object> f29588h = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownLargeGameDialogActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownLargeGameDialogActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29591a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f29592b;

        c(String str, String str2) {
            this.f29591a = str;
            this.f29592b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownLargeGameDialogActivity_.super.G0(this.f29591a, this.f29592b);
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
                DownLargeGameDialogActivity_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class e extends org.androidannotations.api.builder.a<e> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29595a;

        public e(Context context) {
            super(context, DownLargeGameDialogActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29595a;
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
            super(fragment.getActivity(), DownLargeGameDialogActivity_.class);
            this.f29595a = fragment;
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
    @Override // com.join.mgps.activity.DownLargeGameDialogActivity
    public void G0(String str, String str2) {
        org.androidannotations.api.b.e("", new c(str, str2), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f29588h.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DownLargeGameDialogActivity
    public void getData() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f29587g);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.downlarge_game_dialog_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29581a = (TextView) aVar.internalFindViewById(R.id.title);
        this.f29582b = (TextView) aVar.internalFindViewById(R.id.content);
        this.f29583c = (TextView) aVar.internalFindViewById(R.id.openH5);
        View internalFindViewById = aVar.internalFindViewById(R.id.closed);
        TextView textView = this.f29583c;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        afterviews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f29588h.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f29587g.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f29587g.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f29587g.a(this);
    }
}
