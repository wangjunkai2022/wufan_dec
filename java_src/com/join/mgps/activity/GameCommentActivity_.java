package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.RewardBean;
import it.sephiroth.android.library.widget.HListView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class GameCommentActivity_ extends GameCommentActivity implements g3.a, i3.a, i3.b {

    /* renamed from: t0  reason: collision with root package name */
    public static final String f30973t0 = "informationId";

    /* renamed from: u0  reason: collision with root package name */
    public static final String f30974u0 = "CrcLinkTypeVal";

    /* renamed from: v0  reason: collision with root package name */
    public static final String f30975v0 = "isEdit";

    /* renamed from: w0  reason: collision with root package name */
    public static final String f30976w0 = "informationCommentBean";

    /* renamed from: r0  reason: collision with root package name */
    private final i3.c f30977r0 = new i3.c();

    /* renamed from: s0  reason: collision with root package name */
    private final Map<Class<?>, Object> f30978s0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.X0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RewardBean f30982a;

        d(RewardBean rewardBean) {
            this.f30982a = rewardBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.toastData(this.f30982a);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.Y0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.L0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30986a;

        g(String str) {
            this.f30986a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.showMessage(this.f30986a);
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
                GameCommentActivity_.super.M0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f30989a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String str, long j4, String str2, InformationCommentBean informationCommentBean) {
            super(str, j4, str2);
            this.f30989a = informationCommentBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameCommentActivity_.super.U0(this.f30989a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountBean f30991a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f30992b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String str, long j4, String str2, AccountBean accountBean, String str3) {
            super(str, j4, str2);
            this.f30991a = accountBean;
            this.f30992b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameCommentActivity_.super.S0(this.f30991a, this.f30992b);
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
            GameCommentActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class l extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountBean f30995a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f30996b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String str, long j4, String str2, AccountBean accountBean, String str3) {
            super(str, j4, str2);
            this.f30995a = accountBean;
            this.f30996b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameCommentActivity_.super.Q0(this.f30995a, this.f30996b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameCommentActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameCommentActivity_.this.O0();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameCommentActivity_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameCommentActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f31002a;

        q(List list) {
            this.f31002a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.Z0(this.f31002a);
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.b1();
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f31005a;

        s(InformationCommentBean informationCommentBean) {
            this.f31005a = informationCommentBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.P0(this.f31005a);
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f31007a;

        t(InformationCommentBean informationCommentBean) {
            this.f31007a = informationCommentBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.a1(this.f31007a);
        }
    }

    /* loaded from: classes3.dex */
    public static class u extends org.androidannotations.api.builder.a<u> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f31009a;

        public u(Context context) {
            super(context, GameCommentActivity_.class);
        }

        public u a(String str) {
            return (u) super.extra(GameCommentActivity_.f30974u0, str);
        }

        public u b(InformationCommentBean informationCommentBean) {
            return (u) super.extra("informationCommentBean", informationCommentBean);
        }

        public u c(String str) {
            return (u) super.extra("informationId", str);
        }

        public u d(boolean z3) {
            return (u) super.extra("isEdit", z3);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f31009a;
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

        public u(Fragment fragment) {
            super(fragment.getActivity(), GameCommentActivity_.class);
            this.f31009a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("informationId")) {
                this.f30965w = extras.getString("informationId");
            }
            if (extras.containsKey(f30974u0)) {
                this.f30966x = extras.getString(f30974u0);
            }
            if (extras.containsKey("isEdit")) {
                this.f30967y = extras.getBoolean("isEdit");
            }
            if (extras.containsKey("informationCommentBean")) {
                this.f30968z = (InformationCommentBean) extras.getSerializable("informationCommentBean");
            }
        }
    }

    public static u s1(Context context) {
        return new u(context);
    }

    public static u t1(Fragment fragment) {
        return new u(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void L0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void M0() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void P0(InformationCommentBean informationCommentBean) {
        org.androidannotations.api.b.e("", new s(informationCommentBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void Q0(AccountBean accountBean, String str) {
        org.androidannotations.api.a.l(new l("", 0L, "", accountBean, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void S0(AccountBean accountBean, String str) {
        org.androidannotations.api.a.l(new j("", 0L, "", accountBean, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void U0(InformationCommentBean informationCommentBean) {
        org.androidannotations.api.a.l(new i("", 0L, "", informationCommentBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void X0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void Y0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void Z0(List<InformationCommentBean> list) {
        org.androidannotations.api.b.e("", new q(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void a1(InformationCommentBean informationCommentBean) {
        org.androidannotations.api.b.e("", new t(informationCommentBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void b1() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f30978s0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f30977r0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.information_comment_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f30939a = (RelativeLayout) aVar.internalFindViewById(R.id.layout_forum_posts_title);
        this.f30940b = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f30941c = (TextView) aVar.internalFindViewById(R.id.layout_title);
        this.f30942d = (TextView) aVar.internalFindViewById(R.id.noMessage);
        this.f30943e = (XListView2) aVar.internalFindViewById(R.id.mg_forum_post_comment_list);
        this.f30944f = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f30945g = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f30946h = (FrameLayout) aVar.internalFindViewById(R.id.layout_forum_posts_main);
        this.f30947i = (ClearEditText) aVar.internalFindViewById(R.id.edit_user_comment);
        this.f30948j = (Button) aVar.internalFindViewById(R.id.btn_chat_praise);
        this.f30949k = (Button) aVar.internalFindViewById(R.id.btn_chat_send);
        this.f30950l = (TextView) aVar.internalFindViewById(R.id.edit_comment_count);
        this.f30951m = (ImageView) aVar.internalFindViewById(R.id.image_add);
        this.f30952n = (TextView) aVar.internalFindViewById(R.id.footer_tip);
        this.f30954o = (Button) aVar.internalFindViewById(R.id.btn_chat_extension);
        this.f30956p = (LinearLayout) aVar.internalFindViewById(R.id.chat_layout_more);
        this.f30958q = aVar.internalFindViewById(R.id.chat_layout_extension);
        this.f30960r = (LinearLayout) aVar.internalFindViewById(R.id.chat_layout_extension_container);
        this.f30961s = (HListView) aVar.internalFindViewById(R.id.matchListView);
        this.f30962t = (TextView) aVar.internalFindViewById(R.id.forum_title_center);
        this.f30963u = (KeyboardListenLayout) aVar.internalFindViewById(R.id.main);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.mg_loading);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new k());
        }
        ImageView imageView = this.f30940b;
        if (imageView != null) {
            imageView.setOnClickListener(new m());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new n());
        }
        Button button = this.f30949k;
        if (button != null) {
            button.setOnClickListener(new o());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new p());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f30978s0.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f30977r0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void toastData(RewardBean rewardBean) {
        org.androidannotations.api.b.e("", new d(rewardBean), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f30977r0.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f30977r0.a(this);
    }
}
