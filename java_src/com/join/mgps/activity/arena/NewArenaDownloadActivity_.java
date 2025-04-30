package com.join.mgps.activity.arena;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DetailResultBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class NewArenaDownloadActivity_ extends NewArenaDownloadActivity implements g3.a, i3.a, i3.b {

    /* renamed from: p0  reason: collision with root package name */
    public static final String f36680p0 = "gameId";

    /* renamed from: q0  reason: collision with root package name */
    public static final String f36681q0 = "hasPlug";

    /* renamed from: r0  reason: collision with root package name */
    public static final String f36682r0 = "hasRom";

    /* renamed from: s0  reason: collision with root package name */
    public static final String f36683s0 = "from";

    /* renamed from: n0  reason: collision with root package name */
    private final i3.c f36684n0 = new i3.c();

    /* renamed from: o0  reason: collision with root package name */
    private final Map<Class<?>, Object> f36685o0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewArenaDownloadActivity_.super.n();
        }
    }

    /* loaded from: classes3.dex */
    class b extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetailResultBean f36687a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j4, String str2, DetailResultBean detailResultBean) {
            super(str, j4, str2);
            this.f36687a = detailResultBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                NewArenaDownloadActivity_.super.d(this.f36687a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends a.c {
        c(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                NewArenaDownloadActivity_.super.g();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NewArenaDownloadActivity_.this.b();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NewArenaDownloadActivity_.this.k();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NewArenaDownloadActivity_.this.m();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NewArenaDownloadActivity_.this.l();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewArenaDownloadActivity_.super.e();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewArenaDownloadActivity_.super.f();
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewArenaDownloadActivity_.super.p();
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewArenaDownloadActivity_.super.i();
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NewArenaDownloadActivity_.super.o();
        }
    }

    /* loaded from: classes3.dex */
    public static class m extends org.androidannotations.api.builder.a<m> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f36699a;

        public m(Context context) {
            super(context, NewArenaDownloadActivity_.class);
        }

        public m a(String str) {
            return (m) super.extra("from", str);
        }

        public m b(String str) {
            return (m) super.extra("gameId", str);
        }

        public m c(boolean z3) {
            return (m) super.extra(NewArenaDownloadActivity_.f36681q0, z3);
        }

        public m d(boolean z3) {
            return (m) super.extra(NewArenaDownloadActivity_.f36682r0, z3);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f36699a;
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

        public m(Fragment fragment) {
            super(fragment.getActivity(), NewArenaDownloadActivity_.class);
            this.f36699a = fragment;
        }
    }

    public static m A(Context context) {
        return new m(context);
    }

    public static m B(Fragment fragment) {
        return new m(fragment);
    }

    private void y(Bundle bundle) {
        i3.c.b(this);
        z();
    }

    private void z() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.f36652a = extras.getString("gameId");
            }
            if (extras.containsKey(f36681q0)) {
                this.f36653b = extras.getBoolean(f36681q0);
            }
            if (extras.containsKey(f36682r0)) {
                this.f36654c = extras.getBoolean(f36682r0);
            }
            if (extras.containsKey("from")) {
                this.f36655d = extras.getString("from");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.NewArenaDownloadActivity
    public void d(DetailResultBean detailResultBean) {
        org.androidannotations.api.a.l(new b("", 0L, "", detailResultBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.NewArenaDownloadActivity
    public void e() {
        org.androidannotations.api.b.e("", new h(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.NewArenaDownloadActivity
    public void f() {
        org.androidannotations.api.b.e("", new i(), 800L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.NewArenaDownloadActivity
    public void g() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f36685o0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.NewArenaDownloadActivity
    public void i() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.NewArenaDownloadActivity
    public void n() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.NewArenaDownloadActivity
    public void o() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f36684n0);
        y(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.dialog_arena_download_game_plugin);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f36658g = (SimpleDraweeView) aVar.internalFindViewById(R.id.iv_game_icon);
        this.f36659h = (TextView) aVar.internalFindViewById(R.id.tv_game_name);
        this.f36660i = (TextView) aVar.internalFindViewById(R.id.moneyText);
        this.f36661j = (ProgressBar) aVar.internalFindViewById(R.id.gameProgressBar);
        this.f36662k = (TextView) aVar.internalFindViewById(R.id.tv_game_size);
        this.f36663l = (SimpleDraweeView) aVar.internalFindViewById(R.id.iv_plugin_icon);
        this.f36664m = (TextView) aVar.internalFindViewById(R.id.tv_plugin_name);
        this.f36665n = (ProgressBar) aVar.internalFindViewById(R.id.plugProgressBar);
        this.f36666o = (TextView) aVar.internalFindViewById(R.id.tv_plugin_size);
        this.f36667p = (Button) aVar.internalFindViewById(R.id.btnGoGame);
        this.f36668q = (LinearLayout) aVar.internalFindViewById(R.id.loading_lay);
        this.f36669r = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f36670s = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f36671t = (Button) aVar.internalFindViewById(R.id.setNetwork);
        this.f36672u = aVar.internalFindViewById(R.id.iv_close);
        this.f36673v = (LinearLayout) aVar.internalFindViewById(R.id.ll_content);
        this.f36674w = (LinearLayout) aVar.internalFindViewById(R.id.ll_plugin);
        this.f36675x = (LinearLayout) aVar.internalFindViewById(R.id.ll_game);
        this.f36676y = (TextView) aVar.internalFindViewById(R.id.tv_info);
        Button button = this.f36667p;
        if (button != null) {
            button.setOnClickListener(new d());
        }
        View view = this.f36672u;
        if (view != null) {
            view.setOnClickListener(new e());
        }
        Button button2 = this.f36671t;
        if (button2 != null) {
            button2.setOnClickListener(new f());
        }
        ImageView imageView = this.f36670s;
        if (imageView != null) {
            imageView.setOnClickListener(new g());
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.NewArenaDownloadActivity
    public void p() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f36685o0.put(cls, t3);
    }

    @Override // android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f36684n0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        z();
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f36684n0.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f36684n0.a(this);
    }
}
