package com.join.mgps.activity.message;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.JPushJoinDeviceResult;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MessageSettingActivity_ extends MessageSettingActivity implements g3.a, i3.a, i3.b {

    /* renamed from: f  reason: collision with root package name */
    private final i3.c f37730f = new i3.c();

    /* renamed from: g  reason: collision with root package name */
    private final Map<Class<?>, Object> f37731g = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MessageSettingActivity_.this.back();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MessageSettingActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MessageSettingActivity_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MessageSettingActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountResultMainBean f37736a;

        e(AccountResultMainBean accountResultMainBean) {
            this.f37736a = accountResultMainBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MessageSettingActivity_.super.E0(this.f37736a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MessageSettingActivity_.super.D0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountResultMainBean f37739a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f37740b;

        g(AccountResultMainBean accountResultMainBean, int i2) {
            this.f37739a = accountResultMainBean;
            this.f37740b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MessageSettingActivity_.super.K0(this.f37739a, this.f37740b);
        }
    }

    /* loaded from: classes3.dex */
    class h extends a.c {
        h(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MessageSettingActivity_.super.F0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37743a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f37743a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MessageSettingActivity_.super.J0(this.f37743a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class j extends org.androidannotations.api.builder.a<j> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f37745a;

        public j(Context context) {
            super(context, MessageSettingActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f37745a;
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

        public j(Fragment fragment) {
            super(fragment.getActivity(), MessageSettingActivity_.class);
            this.f37745a = fragment;
        }
    }

    public static j Q0(Context context) {
        return new j(context);
    }

    public static j R0(Fragment fragment) {
        return new j(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.MessageSettingActivity
    public void D0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.MessageSettingActivity
    public void E0(AccountResultMainBean<JPushJoinDeviceResult> accountResultMainBean) {
        org.androidannotations.api.b.e("", new e(accountResultMainBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.MessageSettingActivity
    public void F0() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.MessageSettingActivity
    public void J0(int i2) {
        org.androidannotations.api.a.l(new i("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.MessageSettingActivity
    public void K0(AccountResultMainBean<JPushJoinDeviceResult> accountResultMainBean, int i2) {
        org.androidannotations.api.b.e("", new g(accountResultMainBean, i2), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f37731g.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f37730f);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_message_setting);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f37725a = (ImageView) aVar.internalFindViewById(R.id.isGetMessageIv);
        this.f37726b = (ImageView) aVar.internalFindViewById(R.id.isGetReplayIv);
        this.f37727c = (ImageView) aVar.internalFindViewById(R.id.isGetLikeIv);
        View internalFindViewById = aVar.internalFindViewById(R.id.back);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        ImageView imageView = this.f37725a;
        if (imageView != null) {
            imageView.setOnClickListener(new b());
        }
        ImageView imageView2 = this.f37726b;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new c());
        }
        ImageView imageView3 = this.f37727c;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new d());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f37731g.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f37730f.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f37730f.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f37730f.a(this);
    }
}
