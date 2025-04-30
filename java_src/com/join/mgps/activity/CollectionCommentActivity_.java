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
public final class CollectionCommentActivity_ extends CollectionCommentActivity implements g3.a, i3.a, i3.b {

    /* renamed from: p0  reason: collision with root package name */
    public static final String f28797p0 = "informationId";

    /* renamed from: q0  reason: collision with root package name */
    public static final String f28798q0 = "informationCommentBean";

    /* renamed from: n0  reason: collision with root package name */
    private final i3.c f28799n0 = new i3.c();

    /* renamed from: o0  reason: collision with root package name */
    private final Map<Class<?>, Object> f28800o0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.S0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.K0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f28803a;

        c(List list) {
            this.f28803a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.T0(this.f28803a);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.R0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RewardBean f28806a;

        e(RewardBean rewardBean) {
            this.f28806a = rewardBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.toastData(this.f28806a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.V0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.N0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28810a;

        h(String str) {
            this.f28810a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.showMessage(this.f28810a);
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
                CollectionCommentActivity_.super.L0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f28813a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String str, long j4, String str2, InformationCommentBean informationCommentBean) {
            super(str, j4, str2);
            this.f28813a = informationCommentBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CollectionCommentActivity_.super.Q0(this.f28813a);
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
            CollectionCommentActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class l extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountBean f28816a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f28817b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String str, long j4, String str2, AccountBean accountBean, String str3) {
            super(str, j4, str2);
            this.f28816a = accountBean;
            this.f28817b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CollectionCommentActivity_.super.P0(this.f28816a, this.f28817b);
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
            CollectionCommentActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionCommentActivity_.this.M0();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionCommentActivity_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionCommentActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f28823a;

        q(InformationCommentBean informationCommentBean) {
            this.f28823a = informationCommentBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.U0(this.f28823a);
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28825a;

        r(String str) {
            this.f28825a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.showToast(this.f28825a);
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    public static class u extends org.androidannotations.api.builder.a<u> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28829a;

        public u(Context context) {
            super(context, CollectionCommentActivity_.class);
        }

        public u a(InformationCommentBean informationCommentBean) {
            return (u) super.extra("informationCommentBean", informationCommentBean);
        }

        public u b(String str) {
            return (u) super.extra("informationId", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28829a;
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
            super(fragment.getActivity(), CollectionCommentActivity_.class);
            this.f28829a = fragment;
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
                this.f28789w = extras.getString("informationId");
            }
            if (extras.containsKey("informationCommentBean")) {
                this.f28790x = (InformationCommentBean) extras.getSerializable("informationCommentBean");
            }
        }
    }

    public static u m1(Context context) {
        return new u(context);
    }

    public static u n1(Fragment fragment) {
        return new u(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void K0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void L0() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void N0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void P0(AccountBean accountBean, String str) {
        org.androidannotations.api.a.l(new l("", 0L, "", accountBean, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void Q0(InformationCommentBean informationCommentBean) {
        org.androidannotations.api.a.l(new j("", 0L, "", informationCommentBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void R0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void S0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void T0(List<InformationCommentBean> list) {
        org.androidannotations.api.b.e("", new c(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void U0(InformationCommentBean informationCommentBean) {
        org.androidannotations.api.b.e("", new q(informationCommentBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void V0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f28800o0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f28799n0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.information_comment_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28767a = (RelativeLayout) aVar.internalFindViewById(R.id.layout_forum_posts_title);
        this.f28768b = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f28769c = (TextView) aVar.internalFindViewById(R.id.layout_title);
        this.f28770d = (TextView) aVar.internalFindViewById(R.id.noMessage);
        this.f28771e = (XListView2) aVar.internalFindViewById(R.id.mg_forum_post_comment_list);
        this.f28772f = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f28773g = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f28774h = (FrameLayout) aVar.internalFindViewById(R.id.layout_forum_posts_main);
        this.f28775i = (ClearEditText) aVar.internalFindViewById(R.id.edit_user_comment);
        this.f28776j = (Button) aVar.internalFindViewById(R.id.btn_chat_praise);
        this.f28777k = (Button) aVar.internalFindViewById(R.id.btn_chat_send);
        this.f28778l = (TextView) aVar.internalFindViewById(R.id.edit_comment_count);
        this.f28779m = (ImageView) aVar.internalFindViewById(R.id.image_add);
        this.f28780n = (TextView) aVar.internalFindViewById(R.id.footer_tip);
        this.f28781o = (Button) aVar.internalFindViewById(R.id.btn_chat_extension);
        this.f28782p = (LinearLayout) aVar.internalFindViewById(R.id.chat_layout_more);
        this.f28783q = aVar.internalFindViewById(R.id.chat_layout_extension);
        this.f28784r = (LinearLayout) aVar.internalFindViewById(R.id.chat_layout_extension_container);
        this.f28785s = (HListView) aVar.internalFindViewById(R.id.matchListView);
        this.f28786t = (TextView) aVar.internalFindViewById(R.id.forum_title_center);
        this.f28787u = (KeyboardListenLayout) aVar.internalFindViewById(R.id.main);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.mg_loading);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new k());
        }
        ImageView imageView = this.f28768b;
        if (imageView != null) {
            imageView.setOnClickListener(new m());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new n());
        }
        Button button = this.f28777k;
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
        this.f28800o0.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f28799n0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new h(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new r(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void toastData(RewardBean rewardBean) {
        org.androidannotations.api.b.e("", new e(rewardBean), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f28799n0.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f28799n0.a(this);
    }
}
