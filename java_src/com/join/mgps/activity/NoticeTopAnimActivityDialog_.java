package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class NoticeTopAnimActivityDialog_ extends NoticeTopAnimActivityDialog implements g3.a, i3.a, i3.b {

    /* renamed from: m  reason: collision with root package name */
    public static final String f34401m = "message";

    /* renamed from: n  reason: collision with root package name */
    public static final String f34402n = "state";

    /* renamed from: o  reason: collision with root package name */
    public static final String f34403o = "coinNumber";

    /* renamed from: k  reason: collision with root package name */
    private final i3.c f34404k = new i3.c();

    /* renamed from: l  reason: collision with root package name */
    private final Map<Class<?>, Object> f34405l = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NoticeTopAnimActivityDialog_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NoticeTopAnimActivityDialog_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NoticeTopAnimActivityDialog_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NoticeTopAnimActivityDialog_.super.G0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f34410a;

        e(int i2) {
            this.f34410a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            NoticeTopAnimActivityDialog_.super.E0(this.f34410a);
        }
    }

    /* loaded from: classes3.dex */
    public static class f extends org.androidannotations.api.builder.a<f> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34412a;

        public f(Context context) {
            super(context, NoticeTopAnimActivityDialog_.class);
        }

        public f a(int i2) {
            return (f) super.extra(NoticeTopAnimActivityDialog_.f34403o, i2);
        }

        public f b(String str) {
            return (f) super.extra("message", str);
        }

        public f c(int i2) {
            return (f) super.extra(NoticeTopAnimActivityDialog_.f34402n, i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34412a;
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
            super(fragment.getActivity(), NoticeTopAnimActivityDialog_.class);
            this.f34412a = fragment;
        }
    }

    public static f L0(Context context) {
        return new f(context);
    }

    public static f M0(Fragment fragment) {
        return new f(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("message")) {
                this.f34398h = extras.getString("message");
            }
            if (extras.containsKey(f34402n)) {
                this.f34399i = extras.getInt(f34402n);
            }
            if (extras.containsKey(f34403o)) {
                this.f34400j = extras.getInt(f34403o);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.NoticeTopAnimActivityDialog
    public void E0(int i2) {
        org.androidannotations.api.b.e("", new e(i2), 2000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.NoticeTopAnimActivityDialog
    public void G0() {
        org.androidannotations.api.b.e("", new d(), 500L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34405l.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.join.mgps.activity.NoticeTopAnimActivityDialog, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34404k);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.nontice_top_anim_dialog_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34391a = (RelativeLayout) aVar.internalFindViewById(R.id.dialogLayout);
        this.f34392b = (TextView) aVar.internalFindViewById(R.id.nonticeText);
        this.f34393c = (TextView) aVar.internalFindViewById(R.id.tv_position);
        this.f34394d = (TextView) aVar.internalFindViewById(R.id.sub_content);
        this.f34395e = (TextView) aVar.internalFindViewById(R.id.dialog_content);
        this.f34396f = (LinearLayout) aVar.internalFindViewById(R.id.iv_close);
        this.f34397g = (Button) aVar.internalFindViewById(R.id.dialog_button_ok);
        LinearLayout linearLayout = this.f34396f;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new a());
        }
        TextView textView = this.f34392b;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        Button button = this.f34397g;
        if (button != null) {
            button.setOnClickListener(new c());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34405l.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34404k.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34404k.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34404k.a(this);
    }
}
