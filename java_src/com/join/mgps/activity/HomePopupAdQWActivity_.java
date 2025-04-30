package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomCircleProgressBar;
import com.join.mgps.dto.EverdayLogin;
import java.util.HashMap;
import java.util.Map;
import me.relex.circleindicator.CircleIndicator;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class HomePopupAdQWActivity_ extends HomePopupAdQWActivity implements g3.a, i3.a, i3.b {
    public static final String B = "adJson";
    public static final String C = "everdayLogin";
    public static final String D = "isFromAccountCenter";

    /* renamed from: v  reason: collision with root package name */
    private final i3.c f32745v = new i3.c();

    /* renamed from: w  reason: collision with root package name */
    private final Map<Class<?>, Object> f32746w = new HashMap();

    /* renamed from: x  reason: collision with root package name */
    private final IntentFilter f32747x = new IntentFilter();

    /* renamed from: y  reason: collision with root package name */
    private final BroadcastReceiver f32748y = new a();

    /* renamed from: z  reason: collision with root package name */
    private final IntentFilter f32749z = new IntentFilter();
    private final BroadcastReceiver A = new b();

    /* loaded from: classes3.dex */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            HomePopupAdQWActivity_.this.f(intent);
        }
    }

    /* loaded from: classes3.dex */
    class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            HomePopupAdQWActivity_.this.d();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HomePopupAdQWActivity_.this.l();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f32753a;

        d(String str) {
            this.f32753a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            HomePopupAdQWActivity_.super.m(this.f32753a);
        }
    }

    /* loaded from: classes3.dex */
    class e extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f32755a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f32756b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, long j4, String str2, String str3, String str4) {
            super(str, j4, str2);
            this.f32755a = str3;
            this.f32756b = str4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                HomePopupAdQWActivity_.super.g(this.f32755a, this.f32756b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class f extends org.androidannotations.api.builder.a<f> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32758a;

        public f(Context context) {
            super(context, HomePopupAdQWActivity_.class);
        }

        public f a(String str) {
            return (f) super.extra("adJson", str);
        }

        public f b(EverdayLogin everdayLogin) {
            return (f) super.extra("everdayLogin", everdayLogin);
        }

        public f c(boolean z3) {
            return (f) super.extra("isFromAccountCenter", z3);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32758a;
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
            super(fragment.getActivity(), HomePopupAdQWActivity_.class);
            this.f32758a = fragment;
        }
    }

    private void p(Bundle bundle) {
        i3.c.b(this);
        q();
        this.f32747x.addAction(f1.a.f65492o);
        this.f32749z.addAction(f1.a.A);
        registerReceiver(this.f32748y, this.f32747x);
        registerReceiver(this.A, this.f32749z);
    }

    private void q() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("adJson")) {
                this.f32711h = extras.getString("adJson");
            }
            if (extras.containsKey("everdayLogin")) {
                this.f32712i = (EverdayLogin) extras.getSerializable("everdayLogin");
            }
            if (extras.containsKey("isFromAccountCenter")) {
                this.f32713j = extras.getBoolean("isFromAccountCenter");
            }
        }
    }

    public static f r(Context context) {
        return new f(context);
    }

    public static f s(Fragment fragment) {
        return new f(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HomePopupAdQWActivity
    public void g(String str, String str2) {
        org.androidannotations.api.a.l(new e("", 0L, "", str, str2));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f32746w.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HomePopupAdQWActivity
    public void m(String str) {
        org.androidannotations.api.b.e("", new d(str), 0L);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f32745v);
        p(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.home_popup_adqw_activity);
    }

    @Override // com.join.mgps.activity.HomePopupAdQWActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f32748y);
        unregisterReceiver(this.A);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32704a = (SimpleDraweeView) aVar.internalFindViewById(R.id.more);
        this.f32705b = (MultiTouchViewPager) aVar.internalFindViewById(R.id.viewPager);
        this.f32706c = (CircleIndicator) aVar.internalFindViewById(R.id.indicator);
        this.f32707d = (CustomCircleProgressBar) aVar.internalFindViewById(R.id.progressBar);
        this.f32708e = (TextView) aVar.internalFindViewById(R.id.downFileName);
        this.f32709f = (TextView) aVar.internalFindViewById(R.id.install);
        this.f32710g = (RelativeLayout) aVar.internalFindViewById(R.id.downLoadlayout);
        View internalFindViewById = aVar.internalFindViewById(R.id.parentLayout);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new c());
        }
        e();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f32746w.put(cls, t3);
    }

    @Override // android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f32745v.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        q();
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f32745v.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f32745v.a(this);
    }
}
