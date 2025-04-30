package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LoadingImageView;
import com.join.mgps.customview.MarqueeTextView;
import com.join.mgps.customview.NoScrollListView;
import com.join.mgps.customview.WrapContentGridView;
import com.join.mgps.customview.XListView2;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ForumSearchHintActivity_ extends ForumSearchHintActivity implements g3.a, i3.a, i3.b {
    public static final String K0 = "keyword";
    public static final String L0 = "fid";
    private final i3.c I0 = new i3.c();
    private final Map<Class<?>, Object> J0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.Z0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.o1();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.h1();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.m1();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.P0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.p1();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30761a;

        g(String str) {
            this.f30761a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.showToast(this.f30761a);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.notifyUi();
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {
        i(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumSearchHintActivity_.super.V0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.c {
        j(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumSearchHintActivity_.super.K0();
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
            ForumSearchHintActivity_.this.S0();
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
                ForumSearchHintActivity_.super.X0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class m extends a.c {
        m(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumSearchHintActivity_.super.W0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class n extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30769a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30770b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String str, long j4, String str2, String str3, int i2) {
            super(str, j4, str2);
            this.f30769a = str3;
            this.f30770b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumSearchHintActivity_.super.Y0(this.f30769a, this.f30770b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumSearchHintActivity_.this.R0();
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumSearchHintActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumSearchHintActivity_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class r implements AdapterView.OnItemClickListener {
        r() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            ForumSearchHintActivity_.this.Q0(i2);
        }
    }

    /* loaded from: classes3.dex */
    class s implements TextView.OnEditorActionListener {
        s() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
            return ForumSearchHintActivity_.this.d1(textView, i2, keyEvent);
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.O0();
        }
    }

    /* loaded from: classes3.dex */
    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.s1();
        }
    }

    /* loaded from: classes3.dex */
    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumSearchHintActivity_.super.serverConnectionException();
        }
    }

    /* loaded from: classes3.dex */
    public static class w extends org.androidannotations.api.builder.a<w> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f30780a;

        public w(Context context) {
            super(context, ForumSearchHintActivity_.class);
        }

        public w a(int i2) {
            return (w) super.extra("fid", i2);
        }

        public w b(String str) {
            return (w) super.extra("keyword", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f30780a;
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

        public w(Fragment fragment) {
            super(fragment.getActivity(), ForumSearchHintActivity_.class);
            this.f30780a = fragment;
        }
    }

    public static w J1(Context context) {
        return new w(context);
    }

    public static w K1(Fragment fragment) {
        return new w(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f30724s0 = resources.getString(R.string.net_excption);
        this.f30726t0 = resources.getString(R.string.connect_server_excption);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("keyword")) {
                this.f30720q0 = extras.getString("keyword");
            }
            if (extras.containsKey("fid")) {
                this.f30728u0 = extras.getInt("fid");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void K0() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void O0() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void P0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void V0() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void W0() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void X0() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void Y0(String str, int i2) {
        org.androidannotations.api.a.l(new n("", 0L, "", str, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void Z0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.J0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void h1() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void m1() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void notifyUi() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void o1() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.I0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.forum_search_hint_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f30701b = (EditText) aVar.internalFindViewById(R.id.searchEditText);
        this.f30702c = (ImageView) aVar.internalFindViewById(R.id.img_search);
        this.f30703d = (ImageView) aVar.internalFindViewById(R.id.img_iconback);
        this.f30704e = (LinearLayout) aVar.internalFindViewById(R.id.clearLayout);
        this.f30705f = (LinearLayout) aVar.internalFindViewById(R.id.search_list_layout);
        this.f30706g = (GridView) aVar.internalFindViewById(R.id.gridView);
        this.f30707h = (LinearLayout) aVar.internalFindViewById(R.id.allSearch);
        this.f30708i = (RelativeLayout) aVar.internalFindViewById(R.id.layout1);
        this.f30709j = (RelativeLayout) aVar.internalFindViewById(R.id.layout2);
        this.f30710k = (RelativeLayout) aVar.internalFindViewById(R.id.layout3);
        this.f30711l = (RelativeLayout) aVar.internalFindViewById(R.id.layout4);
        this.f30712m = (RelativeLayout) aVar.internalFindViewById(R.id.layout5);
        this.f30713n = (RelativeLayout) aVar.internalFindViewById(R.id.layout6);
        this.f30715o = (TextView) aVar.internalFindViewById(R.id.tv1);
        this.f30717p = (TextView) aVar.internalFindViewById(R.id.tv2);
        this.f30719q = (TextView) aVar.internalFindViewById(R.id.tv3);
        this.f30721r = (TextView) aVar.internalFindViewById(R.id.tv4);
        this.f30723s = (TextView) aVar.internalFindViewById(R.id.tv5);
        this.f30725t = (TextView) aVar.internalFindViewById(R.id.tv6);
        this.f30727u = (MarqueeTextView) aVar.internalFindViewById(R.id.text1);
        this.f30729v = (MarqueeTextView) aVar.internalFindViewById(R.id.text2);
        this.f30731w = (MarqueeTextView) aVar.internalFindViewById(R.id.text3);
        this.f30733x = (MarqueeTextView) aVar.internalFindViewById(R.id.text4);
        this.f30735y = (MarqueeTextView) aVar.internalFindViewById(R.id.text5);
        this.f30737z = (MarqueeTextView) aVar.internalFindViewById(R.id.text6);
        this.A = (NoScrollListView) aVar.internalFindViewById(R.id.historyListView);
        this.B = (XListView2) aVar.internalFindViewById(R.id.autoListView);
        this.C = (TextView) aVar.internalFindViewById(R.id.noHistory);
        this.D = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.E = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.F = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.G = (LoadingImageView) aVar.internalFindViewById(R.id.loading_view);
        this.H = (TextView) aVar.internalFindViewById(R.id.textView2);
        this.I = (Button) aVar.internalFindViewById(R.id.setNetwork);
        this.J = (TextView) aVar.internalFindViewById(R.id.failedMessage);
        this.K = (TextView) aVar.internalFindViewById(R.id.setting);
        this.f30714n0 = (ImageView) aVar.internalFindViewById(R.id.lodingBackImage);
        this.f30716o0 = (WrapContentGridView) aVar.internalFindViewById(R.id.wrapGridView);
        View internalFindViewById = aVar.internalFindViewById(R.id.change_data);
        ImageView imageView = this.f30702c;
        if (imageView != null) {
            imageView.setOnClickListener(new k());
        }
        ImageView imageView2 = this.f30703d;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new o());
        }
        LinearLayout linearLayout = this.f30704e;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new p());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new q());
        }
        NoScrollListView noScrollListView = this.A;
        if (noScrollListView != null) {
            noScrollListView.setOnItemClickListener(new r());
        }
        EditText editText = this.f30701b;
        if (editText != null) {
            editText.setOnEditorActionListener(new s());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void p1() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.J0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void s1() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void serverConnectionException() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.I0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumSearchHintActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.I0.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.I0.a(this);
    }
}
