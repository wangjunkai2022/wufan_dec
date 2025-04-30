package com.join.mgps.activity.posting;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.CustomEdittext;
import com.join.mgps.dto.GameTagBean;
import com.join.mgps.dto.GroupListBean;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class PostingActivity_ extends PostingActivity implements g3.a, i3.a, i3.b {
    public static final String O0 = "fromType";
    public static final String P0 = "gameTag";
    public static final String Q0 = "postingType";
    public static final String R0 = "postingGroup";
    public static final String S0 = "tag_id";
    public static final String T0 = "tag_name";
    public static final String U0 = "fid";
    public static final String V0 = "game_id";
    public static final String W0 = "label";
    private final i3.c M0 = new i3.c();
    private final Map<Class<?>, Object> N0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.showLoading();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.v1();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.l1();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38316a;

        d(String str) {
            this.f38316a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.t1(this.f38316a);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GroupListBean f38318a;

        e(GroupListBean groupListBean) {
            this.f38318a = groupListBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.o1(this.f38318a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GroupListBean f38320a;

        f(GroupListBean groupListBean) {
            this.f38320a = groupListBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.x1(this.f38320a);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38322a;

        g(String str) {
            this.f38322a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.showToast(this.f38322a);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.u1();
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
                PostingActivity_.super.S0();
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
                PostingActivity_.super.d1();
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
            PostingActivity_.this.O0();
        }
    }

    /* loaded from: classes3.dex */
    class l extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f38328a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String str, long j4, String str2, boolean z3) {
            super(str, j4, str2);
            this.f38328a = z3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PostingActivity_.super.Y0(this.f38328a);
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
                PostingActivity_.super.e1();
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
            PostingActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PostingActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PostingActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PostingActivity_.this.T0();
        }
    }

    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PostingActivity_.this.U0();
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.m1();
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.k1();
        }
    }

    /* loaded from: classes3.dex */
    class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f38338a;

        u(int i2) {
            this.f38338a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.y1(this.f38338a);
        }
    }

    /* loaded from: classes3.dex */
    public static class v extends org.androidannotations.api.builder.a<v> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f38340a;

        public v(Context context) {
            super(context, PostingActivity_.class);
        }

        public v a(int i2) {
            return (v) super.extra("fid", i2);
        }

        public v b(int i2) {
            return (v) super.extra("fromType", i2);
        }

        public v c(ArrayList<GameTagBean> arrayList) {
            return (v) super.extra(PostingActivity_.P0, arrayList);
        }

        public v d(String str) {
            return (v) super.extra("game_id", str);
        }

        public v e(String str) {
            return (v) super.extra("label", str);
        }

        public v f(String str) {
            return (v) super.extra("postingGroup", str);
        }

        public v g(int i2) {
            return (v) super.extra(PostingActivity_.Q0, i2);
        }

        public v h(String str) {
            return (v) super.extra("tag_id", str);
        }

        public v i(String str) {
            return (v) super.extra("tag_name", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f38340a;
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
            super(fragment.getActivity(), PostingActivity_.class);
            this.f38340a = fragment;
        }
    }

    public static v U1(Context context) {
        return new v(context);
    }

    public static v V1(Fragment fragment) {
        return new v(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f38246b = AccountUtil_.getInstance_(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("fromType")) {
                this.f38245a = extras.getInt("fromType");
            }
            if (extras.containsKey(P0)) {
                this.f38247c = (ArrayList) extras.getSerializable(P0);
            }
            if (extras.containsKey(Q0)) {
                this.f38248d = extras.getInt(Q0);
            }
            if (extras.containsKey("postingGroup")) {
                this.f38249e = extras.getString("postingGroup");
            }
            if (extras.containsKey("tag_id")) {
                this.f38250f = extras.getString("tag_id");
            }
            if (extras.containsKey("tag_name")) {
                this.f38251g = extras.getString("tag_name");
            }
            if (extras.containsKey("fid")) {
                this.f38252h = extras.getInt("fid");
            }
            if (extras.containsKey("game_id")) {
                this.f38253i = extras.getString("game_id");
            }
            if (extras.containsKey("label")) {
                this.f38254j = extras.getString("label");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void S0() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void Y0(boolean z3) {
        org.androidannotations.api.a.l(new l("", 0L, "", z3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void d1() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void e1() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.N0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void k1() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void l1() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void m1() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void o1(GroupListBean groupListBean) {
        org.androidannotations.api.b.e("", new e(groupListBean), 0L);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.M0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_posting);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f38256l = (CustomEdittext) aVar.internalFindViewById(R.id.posts_title);
        this.f38257m = (CustomEdittext) aVar.internalFindViewById(R.id.posts_res_link);
        this.f38258n = aVar.internalFindViewById(R.id.posts_res_line);
        this.f38260o = (EditText) aVar.internalFindViewById(R.id.posts_content);
        this.f38262p = (HListView) aVar.internalFindViewById(R.id.posts_pic_hlist);
        this.f38264q = (FrameLayout) aVar.internalFindViewById(R.id.fl_posting_type_container);
        this.f38266r = (LinearLayout) aVar.internalFindViewById(R.id.ll_help_posting);
        this.f38268s = (TextView) aVar.internalFindViewById(R.id.tv_coins);
        this.f38270t = (Button) aVar.internalFindViewById(R.id.btn_selectedCoins);
        this.f38272u = (RelativeLayout) aVar.internalFindViewById(R.id.ll_posting_rec_game);
        this.f38274v = (TextView) aVar.internalFindViewById(R.id.tv_rec_game);
        this.f38276w = (Button) aVar.internalFindViewById(R.id.btn_selectedGames);
        this.f38278x = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f38280y = (ImageView) aVar.internalFindViewById(R.id.iv_posting_location);
        this.f38282z = (TextView) aVar.internalFindViewById(R.id.tv_posting_group);
        this.A = (ImageView) aVar.internalFindViewById(R.id.iv_posting_select);
        this.B = (Button) aVar.internalFindViewById(R.id.btnSubmit);
        this.C = (LinearLayout) aVar.internalFindViewById(R.id.ll_bottom);
        this.D = (RelativeLayout) aVar.internalFindViewById(R.id.rl_main);
        this.E = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.F = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f38267r0 = (FrameLayout) aVar.internalFindViewById(R.id.fl_insert_label);
        this.f38271t0 = (LinearLayout) aVar.internalFindViewById(R.id.ll_top_center);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.fl_insert_pic);
        Button button = this.B;
        if (button != null) {
            button.setOnClickListener(new k());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new n());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new o());
        }
        ImageView imageView = this.f38278x;
        if (imageView != null) {
            imageView.setOnClickListener(new p());
        }
        FrameLayout frameLayout = this.f38267r0;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(new q());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new r());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.N0.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.M0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void showLoading() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void t1(String str) {
        org.androidannotations.api.b.e("", new d(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void u1() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void v1() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void x1(GroupListBean groupListBean) {
        org.androidannotations.api.b.e("", new f(groupListBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void y1(int i2) {
        org.androidannotations.api.b.e("", new u(i2), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.M0.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.M0.a(this);
    }
}
