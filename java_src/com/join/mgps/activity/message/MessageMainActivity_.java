package com.join.mgps.activity.message;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MessageMainActivity_ extends MessageMainActivity implements g3.a, i3.a, i3.b {

    /* renamed from: r  reason: collision with root package name */
    public static final String f37713r = "index";

    /* renamed from: s  reason: collision with root package name */
    public static final String f37714s = "isLike";

    /* renamed from: t  reason: collision with root package name */
    public static final String f37715t = "isMessage";

    /* renamed from: u  reason: collision with root package name */
    public static final String f37716u = "intentDateBean";

    /* renamed from: p  reason: collision with root package name */
    private final i3.c f37717p = new i3.c();

    /* renamed from: q  reason: collision with root package name */
    private final Map<Class<?>, Object> f37718q = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MessageMainActivity_.this.back();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MessageMainActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MessageMainActivity_.super.D0();
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
                MessageMainActivity_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
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
                MessageMainActivity_.super.getRedPointData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class f extends org.androidannotations.api.builder.a<f> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f37724a;

        public f(Context context) {
            super(context, MessageMainActivity_.class);
        }

        public f a(int i2) {
            return (f) super.extra("index", i2);
        }

        public f b(IntentDateBean intentDateBean) {
            return (f) super.extra("intentDateBean", intentDateBean);
        }

        public f c(boolean z3) {
            return (f) super.extra(MessageMainActivity_.f37714s, z3);
        }

        public f d(boolean z3) {
            return (f) super.extra(MessageMainActivity_.f37715t, z3);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f37724a;
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
            super(fragment.getActivity(), MessageMainActivity_.class);
            this.f37724a = fragment;
        }
    }

    public static f I0(Context context) {
        return new f(context);
    }

    public static f J0(Fragment fragment) {
        return new f(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("index")) {
                this.f37703j = extras.getInt("index");
            }
            if (extras.containsKey(f37714s)) {
                this.f37704k = extras.getBoolean(f37714s);
            }
            if (extras.containsKey(f37715t)) {
                this.f37705l = extras.getBoolean(f37715t);
            }
            if (extras.containsKey("intentDateBean")) {
                this.f37706m = (IntentDateBean) extras.getSerializable("intentDateBean");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.MessageMainActivity
    public void D0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f37718q.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.MessageMainActivity
    public void getData() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.MessageMainActivity
    public void getRedPointData() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f37717p);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_message_main);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f37694a = (SlidingTabLayout) aVar.internalFindViewById(R.id.tableLayout);
        this.f37695b = (ImageView) aVar.internalFindViewById(R.id.back);
        this.f37696c = (ViewPager) aVar.internalFindViewById(R.id.viewPager);
        View internalFindViewById = aVar.internalFindViewById(R.id.setting);
        ImageView imageView = this.f37695b;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f37718q.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f37717p.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f37717p.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f37717p.a(this);
    }
}
