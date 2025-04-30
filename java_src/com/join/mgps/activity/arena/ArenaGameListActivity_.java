package com.join.mgps.activity.arena;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.NewArenaGameListBean;
import com.join.mgps.dto.ResultResMainBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ArenaGameListActivity_ extends ArenaGameListActivity implements g3.a, i3.a, i3.b {
    public static final String A = "mType";

    /* renamed from: y  reason: collision with root package name */
    private final i3.c f36330y = new i3.c();

    /* renamed from: z  reason: collision with root package name */
    private final Map<Class<?>, Object> f36331z = new HashMap();

    /* loaded from: classes3.dex */
    class a extends a.c {
        a(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaGameListActivity_.super.M0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends a.c {
        b(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaGameListActivity_.super.L0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ArenaGameListActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ArenaGameListActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ArenaGameListActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f36337a;

        f(List list) {
            this.f36337a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArenaGameListActivity_.super.O0(this.f36337a);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ResultResMainBean f36339a;

        g(ResultResMainBean resultResMainBean) {
            this.f36339a = resultResMainBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArenaGameListActivity_.super.I0(this.f36339a);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ArenaGameListActivity_.super.showLoading();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ArenaGameListActivity_.super.N0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ArenaGameListActivity_.super.H0();
        }
    }

    /* loaded from: classes3.dex */
    class k extends a.c {
        k(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ArenaGameListActivity_.super.K0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class l extends org.androidannotations.api.builder.a<l> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f36345a;

        public l(Context context) {
            super(context, ArenaGameListActivity_.class);
        }

        public l a(int i2) {
            return (l) super.extra(ArenaGameListActivity_.A, i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f36345a;
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

        public l(Fragment fragment) {
            super(fragment.getActivity(), ArenaGameListActivity_.class);
            this.f36345a = fragment;
        }
    }

    public static l X0(Context context) {
        return new l(context);
    }

    public static l Y0(Fragment fragment) {
        return new l(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f36321l = AccountUtil_.getInstance_(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(A)) {
            return;
        }
        this.f36311b = extras.getInt(A);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.ArenaGameListActivity
    public void H0() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.ArenaGameListActivity
    public void I0(ResultResMainBean<NewArenaGameListBean> resultResMainBean) {
        org.androidannotations.api.b.e("", new g(resultResMainBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.ArenaGameListActivity
    public void K0() {
        org.androidannotations.api.a.l(new k("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.ArenaGameListActivity
    public void L0() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.ArenaGameListActivity
    public void M0() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.ArenaGameListActivity
    public void N0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.ArenaGameListActivity
    public void O0(List<GameInfoBean> list) {
        org.androidannotations.api.b.e("", new f(list), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f36331z.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f36330y);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_arena_gamelist);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f36312c = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f36313d = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f36314e = (XListView2) aVar.internalFindViewById(R.id.listview);
        this.f36317h = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f36318i = (RelativeLayout) aVar.internalFindViewById(R.id.layout_others_list);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new c());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new d());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f36331z.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f36330y.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.ArenaGameListActivity
    public void showLoading() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f36330y.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f36330y.a(this);
    }
}
