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
public final class GameInformationCommentActivity_ extends GameInformationCommentActivity implements g3.a, i3.a, i3.b {

    /* renamed from: p0  reason: collision with root package name */
    public static final String f31610p0 = "informationId";

    /* renamed from: q0  reason: collision with root package name */
    public static final String f31611q0 = "informationCommentBean";

    /* renamed from: n0  reason: collision with root package name */
    private final i3.c f31612n0 = new i3.c();

    /* renamed from: o0  reason: collision with root package name */
    private final Map<Class<?>, Object> f31613o0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f31614a;

        a(List list) {
            this.f31614a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.S0(this.f31614a);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.R0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.J0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RewardBean f31619a;

        e(RewardBean rewardBean) {
            this.f31619a = rewardBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.toastData(this.f31619a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.U0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.V0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.M0();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31624a;

        i(String str) {
            this.f31624a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.showMessage(this.f31624a);
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
                GameInformationCommentActivity_.super.K0();
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
            GameInformationCommentActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class l extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f31628a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String str, long j4, String str2, InformationCommentBean informationCommentBean) {
            super(str, j4, str2);
            this.f31628a = informationCommentBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationCommentActivity_.super.P0(this.f31628a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class m extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountBean f31630a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31631b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String str, long j4, String str2, AccountBean accountBean, String str3) {
            super(str, j4, str2);
            this.f31630a = accountBean;
            this.f31631b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationCommentActivity_.super.O0(this.f31630a, this.f31631b);
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
            GameInformationCommentActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationCommentActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationCommentActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationCommentActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f31637a;

        r(InformationCommentBean informationCommentBean) {
            this.f31637a = informationCommentBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.T0(this.f31637a);
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31639a;

        s(String str) {
            this.f31639a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.showToast(this.f31639a);
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    public static class v extends org.androidannotations.api.builder.a<v> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f31643a;

        public v(Context context) {
            super(context, GameInformationCommentActivity_.class);
        }

        public v a(InformationCommentBean informationCommentBean) {
            return (v) super.extra("informationCommentBean", informationCommentBean);
        }

        public v b(String str) {
            return (v) super.extra("informationId", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f31643a;
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
            super(fragment.getActivity(), GameInformationCommentActivity_.class);
            this.f31643a = fragment;
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
                this.f31602w = extras.getString("informationId");
            }
            if (extras.containsKey("informationCommentBean")) {
                this.f31603x = (InformationCommentBean) extras.getSerializable("informationCommentBean");
            }
        }
    }

    public static v n1(Context context) {
        return new v(context);
    }

    public static v o1(Fragment fragment) {
        return new v(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void J0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void K0() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void M0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void O0(AccountBean accountBean, String str) {
        org.androidannotations.api.a.l(new m("", 0L, "", accountBean, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void P0(InformationCommentBean informationCommentBean) {
        org.androidannotations.api.a.l(new l("", 0L, "", informationCommentBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void Q0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void R0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void S0(List<InformationCommentBean> list) {
        org.androidannotations.api.b.e("", new a(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void T0(InformationCommentBean informationCommentBean) {
        org.androidannotations.api.b.e("", new r(informationCommentBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void U0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void V0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f31613o0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f31612n0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.information_comment_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f31580a = (RelativeLayout) aVar.internalFindViewById(R.id.layout_forum_posts_title);
        this.f31581b = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f31582c = (TextView) aVar.internalFindViewById(R.id.layout_title);
        this.f31583d = (TextView) aVar.internalFindViewById(R.id.noMessage);
        this.f31584e = (XListView2) aVar.internalFindViewById(R.id.mg_forum_post_comment_list);
        this.f31585f = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f31586g = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f31587h = (FrameLayout) aVar.internalFindViewById(R.id.layout_forum_posts_main);
        this.f31588i = (ClearEditText) aVar.internalFindViewById(R.id.edit_user_comment);
        this.f31589j = (Button) aVar.internalFindViewById(R.id.btn_chat_praise);
        this.f31590k = (Button) aVar.internalFindViewById(R.id.btn_chat_send);
        this.f31591l = (TextView) aVar.internalFindViewById(R.id.edit_comment_count);
        this.f31592m = (ImageView) aVar.internalFindViewById(R.id.image_add);
        this.f31593n = (TextView) aVar.internalFindViewById(R.id.footer_tip);
        this.f31594o = (Button) aVar.internalFindViewById(R.id.btn_chat_extension);
        this.f31595p = (LinearLayout) aVar.internalFindViewById(R.id.chat_layout_more);
        this.f31596q = aVar.internalFindViewById(R.id.chat_layout_extension);
        this.f31597r = (LinearLayout) aVar.internalFindViewById(R.id.chat_layout_extension_container);
        this.f31598s = (HListView) aVar.internalFindViewById(R.id.matchListView);
        this.f31599t = (TextView) aVar.internalFindViewById(R.id.forum_title_center);
        this.f31600u = (KeyboardListenLayout) aVar.internalFindViewById(R.id.main);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.mg_loading);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new k());
        }
        ImageView imageView = this.f31581b;
        if (imageView != null) {
            imageView.setOnClickListener(new n());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new o());
        }
        Button button = this.f31590k;
        if (button != null) {
            button.setOnClickListener(new p());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new q());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f31613o0.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f31612n0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new i(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new s(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void toastData(RewardBean rewardBean) {
        org.androidannotations.api.b.e("", new e(rewardBean), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f31612n0.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f31612n0.a(this);
    }
}
