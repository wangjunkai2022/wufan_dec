package com.join.mgps.activity.label;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.MainLabelHeaderView;
import com.join.mgps.customview.SlidingTabLayout4;
import com.join.mgps.dto.MainLabelBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
import ru.noties.scrollable.ScrollableLayout;
/* loaded from: classes3.dex */
public final class MainLabelActivity_ extends MainLabelActivity implements g3.a, i3.a, i3.b {
    public static final String J = "tag_id";
    public static final String K = "tag_name";

    /* renamed from: n0  reason: collision with root package name */
    public static final String f37601n0 = "fromType";

    /* renamed from: o0  reason: collision with root package name */
    public static final String f37602o0 = "fid";

    /* renamed from: p0  reason: collision with root package name */
    public static final String f37603p0 = "postingGroup";
    private final i3.c H = new i3.c();
    private final Map<Class<?>, Object> I = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MainLabelBean f37604a;

        a(MainLabelBean mainLabelBean) {
            this.f37604a = mainLabelBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MainLabelActivity_.super.Y0(this.f37604a);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainLabelActivity_.super.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainLabelActivity_.super.U0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainLabelActivity_.super.T0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainLabelActivity_.super.L0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37610a;

        f(String str) {
            this.f37610a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MainLabelActivity_.super.showToast(this.f37610a);
        }
    }

    /* loaded from: classes3.dex */
    class g extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37612a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f37612a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MainLabelActivity_.super.F0(this.f37612a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
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
                MainLabelActivity_.super.K0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainLabelActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainLabelActivity_.this.W0();
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainLabelActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainLabelActivity_.this.R0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainLabelActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainLabelActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainLabelActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainLabelActivity_.super.S0();
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f37623a;

        q(boolean z3) {
            this.f37623a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            MainLabelActivity_.super.X0(this.f37623a);
        }
    }

    /* loaded from: classes3.dex */
    public static class r extends org.androidannotations.api.builder.a<r> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f37625a;

        public r(Context context) {
            super(context, MainLabelActivity_.class);
        }

        public r a(int i2) {
            return (r) super.extra("fid", i2);
        }

        public r b(int i2) {
            return (r) super.extra("fromType", i2);
        }

        public r c(String str) {
            return (r) super.extra("postingGroup", str);
        }

        public r d(int i2) {
            return (r) super.extra("tag_id", i2);
        }

        public r e(String str) {
            return (r) super.extra("tag_name", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f37625a;
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

        public r(Fragment fragment) {
            super(fragment.getActivity(), MainLabelActivity_.class);
            this.f37625a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f37561b = AccountUtil_.getInstance_(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("tag_id")) {
                this.f37564e = extras.getInt("tag_id");
            }
            if (extras.containsKey("tag_name")) {
                this.f37565f = extras.getString("tag_name");
            }
            if (extras.containsKey("fromType")) {
                this.f37566g = extras.getInt("fromType");
            }
            if (extras.containsKey("fid")) {
                this.f37567h = extras.getInt("fid");
            }
            if (extras.containsKey("postingGroup")) {
                this.f37568i = extras.getString("postingGroup");
            }
        }
    }

    public static r j1(Context context) {
        return new r(context);
    }

    public static r k1(Fragment fragment) {
        return new r(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void F0(int i2) {
        org.androidannotations.api.a.l(new g("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void K0() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void L0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void Q0() {
        org.androidannotations.api.b.e("", new b(), 400L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void S0() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void T0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void U0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void X0(boolean z3) {
        org.androidannotations.api.b.e("", new q(z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void Y0(MainLabelBean mainLabelBean) {
        org.androidannotations.api.b.e("", new a(mainLabelBean), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.I.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.H);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_main_label);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f37562c = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f37563d = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f37569j = (Button) aVar.internalFindViewById(R.id.btnFocus);
        this.f37570k = (TextView) aVar.internalFindViewById(R.id.tv_alreadyJoin);
        this.f37571l = (Button) aVar.internalFindViewById(R.id.btnSendPosts);
        this.f37572m = (SlidingTabLayout4) aVar.internalFindViewById(R.id.tabsLayout);
        this.f37573n = (ScrollableLayout) aVar.internalFindViewById(R.id.scrollableLayout);
        this.f37574o = (ViewPager) aVar.internalFindViewById(R.id.viewPager);
        this.f37575p = (RelativeLayout) aVar.internalFindViewById(R.id.rl_main);
        this.f37576q = (RelativeLayout) aVar.internalFindViewById(R.id.rl_title);
        this.f37577r = (RelativeLayout) aVar.internalFindViewById(R.id.rlOrderBy);
        this.f37578s = (MainLabelHeaderView) aVar.internalFindViewById(R.id.mScrollableHeader);
        this.f37584y = (ImageView) aVar.internalFindViewById(R.id.iv_close_send_posting);
        this.E = (LinearLayout) aVar.internalFindViewById(R.id.ll_multi_type_posts);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        Button button = this.f37569j;
        if (button != null) {
            button.setOnClickListener(new i());
        }
        TextView textView = this.f37570k;
        if (textView != null) {
            textView.setOnClickListener(new j());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new k());
        }
        RelativeLayout relativeLayout = this.f37577r;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new l());
        }
        Button button2 = this.f37571l;
        if (button2 != null) {
            button2.setOnClickListener(new m());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new n());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new o());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.I.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.H.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.H.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.H.a(this);
    }
}
