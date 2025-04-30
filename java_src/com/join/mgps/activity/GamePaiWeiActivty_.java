package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.AutoScrollViewPager;
import com.join.mgps.dto.PaiWeiUploadFileBean;
import com.join.mgps.dto.PaiWeiUploadFileNewBean;
import com.papa91.arc.bean.PaiWeiDataBean;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class GamePaiWeiActivty_ extends GamePaiWeiActivty implements g3.a, i3.a, i3.b {
    public static final String J0 = "gameId";
    public static final String K0 = "numPlayers";
    public static final String L0 = "rankAutoUpload";
    private final i3.c H0 = new i3.c();
    private final Map<Class<?>, Object> I0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.s();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.K();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f31924a;

        c(List list) {
            this.f31924a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.I(this.f31924a);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PaiWeiDataBean.MonthBestBean f31926a;

        d(PaiWeiDataBean.MonthBestBean monthBestBean) {
            this.f31926a = monthBestBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.J(this.f31926a);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.t();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31929a;

        f(String str) {
            this.f31929a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.M(this.f31929a);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31931a;

        g(String str) {
            this.f31931a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.N(this.f31931a);
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
                GamePaiWeiActivty_.super.R();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f31934a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31935b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String str, long j4, String str2, File file, String str3) {
            super(str, j4, str2);
            this.f31934a = file;
            this.f31935b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamePaiWeiActivty_.super.Q(this.f31934a, this.f31935b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31937a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f31937a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamePaiWeiActivty_.super.v(this.f31937a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamePaiWeiActivty_.this.G();
        }
    }

    /* loaded from: classes3.dex */
    class l extends a.c {
        l(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamePaiWeiActivty_.super.w();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class m extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31941a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f31941a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GamePaiWeiActivty_.super.o(this.f31941a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamePaiWeiActivty_.this.C();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamePaiWeiActivty_.this.D();
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamePaiWeiActivty_.this.E();
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f31946a;

        q(boolean z3) {
            this.f31946a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.y(this.f31946a);
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PaiWeiUploadFileNewBean f31948a;

        r(PaiWeiUploadFileNewBean paiWeiUploadFileNewBean) {
            this.f31948a = paiWeiUploadFileNewBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.T(this.f31948a);
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PaiWeiUploadFileBean f31950a;

        s(PaiWeiUploadFileBean paiWeiUploadFileBean) {
            this.f31950a = paiWeiUploadFileBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.S(this.f31950a);
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31952a;

        t(String str) {
            this.f31952a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.O(this.f31952a);
        }
    }

    /* loaded from: classes3.dex */
    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GamePaiWeiActivty_.super.L();
        }
    }

    /* loaded from: classes3.dex */
    public static class v extends org.androidannotations.api.builder.a<v> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f31955a;

        public v(Context context) {
            super(context, GamePaiWeiActivty_.class);
        }

        public v a(String str) {
            return (v) super.extra("gameId", str);
        }

        public v b(int i2) {
            return (v) super.extra(GamePaiWeiActivty_.K0, i2);
        }

        public v c(int i2) {
            return (v) super.extra(GamePaiWeiActivty_.L0, i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f31955a;
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

        public v(Fragment fragment) {
            super(fragment.getActivity(), GamePaiWeiActivty_.class);
            this.f31955a = fragment;
        }
    }

    private void m0(Bundle bundle) {
        i3.c.b(this);
        this.f31903y = AccountUtil_.getInstance_(this);
        n0();
    }

    private void n0() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.f31905z = extras.getString("gameId");
            }
            if (extras.containsKey(K0)) {
                this.A = extras.getInt(K0);
            }
            if (extras.containsKey(L0)) {
                this.B = extras.getInt(L0);
            }
        }
    }

    public static v o0(Context context) {
        return new v(context);
    }

    public static v p0(Fragment fragment) {
        return new v(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void I(List<PaiWeiDataBean.AdListBean> list) {
        org.androidannotations.api.b.e("", new c(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void J(PaiWeiDataBean.MonthBestBean monthBestBean) {
        org.androidannotations.api.b.e("", new d(monthBestBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void K() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void L() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void M(String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void N(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void O(String str) {
        org.androidannotations.api.b.e("", new t(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void Q(File file, String str) {
        org.androidannotations.api.a.l(new i("", 0L, "", file, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void R() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void S(PaiWeiUploadFileBean paiWeiUploadFileBean) {
        org.androidannotations.api.b.e("", new s(paiWeiUploadFileBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void T(PaiWeiUploadFileNewBean paiWeiUploadFileNewBean) {
        org.androidannotations.api.b.e("", new r(paiWeiUploadFileNewBean), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.I0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void o(String str) {
        org.androidannotations.api.a.l(new m("", 0L, "", str));
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.H0);
        m0(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activty_game_paiwei);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f31868a = (LinearLayout) aVar.internalFindViewById(R.id.select_rolo_ll);
        this.f31869b = (ImageView) aVar.internalFindViewById(R.id.paiwei_back_iv);
        this.f31870c = (ImageView) aVar.internalFindViewById(R.id.select_rolo_iv);
        this.f31871d = (ImageView) aVar.internalFindViewById(R.id.paiwei_help_ib);
        this.f31872e = (Button) aVar.internalFindViewById(R.id.paiwei_start_bt);
        this.f31873f = (TextView) aVar.internalFindViewById(R.id.paiwei_start_time_tv);
        this.f31874g = (TextView) aVar.internalFindViewById(R.id.paiwei_start_order_tv);
        this.f31875h = (TextView) aVar.internalFindViewById(R.id.paiwei_start_name_tv);
        this.f31876i = (TextView) aVar.internalFindViewById(R.id.paiwei_null_tv);
        this.f31877j = (TextView) aVar.internalFindViewById(R.id.paiwei_info_tv2);
        this.f31878k = (TextView) aVar.internalFindViewById(R.id.paiwei_info_tv4);
        this.f31879l = (TextView) aVar.internalFindViewById(R.id.paiwei_cion_tv);
        this.f31880m = (TextView) aVar.internalFindViewById(R.id.select_rolo_tx);
        this.f31881n = (ListView) aVar.internalFindViewById(R.id.select_rolo_listview);
        this.f31883o = (ListView) aVar.internalFindViewById(R.id.paiwei_listview);
        this.f31885p = (RelativeLayout) aVar.internalFindViewById(R.id.info_rl);
        this.f31887q = (AutoScrollViewPager) aVar.internalFindViewById(R.id.paiwei_ad_viewpager);
        this.f31889r = (SimpleDraweeView) aVar.internalFindViewById(R.id.paiwei_ad_iv);
        LinearLayout linearLayout = this.f31868a;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new k());
        }
        ImageView imageView = this.f31869b;
        if (imageView != null) {
            imageView.setOnClickListener(new n());
        }
        ImageView imageView2 = this.f31871d;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new o());
        }
        Button button = this.f31872e;
        if (button != null) {
            button.setOnClickListener(new p());
        }
        p();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.I0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void s() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.H0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        n0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void t() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void v(String str) {
        org.androidannotations.api.a.l(new j("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void w() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GamePaiWeiActivty
    public void y(boolean z3) {
        org.androidannotations.api.b.e("", new q(z3), 0L);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.H0.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.H0.a(this);
    }
}
