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
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommentCreateBean;
import com.join.mgps.dto.CommentDetailBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class CommentDetailActivity_ extends CommentDetailActivity implements g3.a, i3.a, i3.b {
    public static final String X0 = "commentId";
    public static final String Y0 = "gameId";
    public static final String Z0 = "commentScoreSwitch";

    /* renamed from: a1  reason: collision with root package name */
    public static final String f29248a1 = "packageName";

    /* renamed from: b1  reason: collision with root package name */
    public static final String f29249b1 = "bespeakSwitch";

    /* renamed from: c1  reason: collision with root package name */
    public static final String f29250c1 = "sgcSwitch";

    /* renamed from: d1  reason: collision with root package name */
    public static final String f29251d1 = "gameType";

    /* renamed from: e1  reason: collision with root package name */
    public static final String f29252e1 = "gameIsStart";
    private final i3.c V0 = new i3.c();
    private final Map<Class<?>, Object> W0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f29253a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29254b;

        a(List list, int i2) {
            this.f29253a = list;
            this.f29254b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.H1(this.f29253a, this.f29254b);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.N1();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29258a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CommentCreateBean.InfoBean f29259b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f29260c;

        d(String str, CommentCreateBean.InfoBean infoBean, boolean z3) {
            this.f29258a = str;
            this.f29259b = infoBean;
            this.f29260c = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.B1(this.f29258a, this.f29259b, this.f29260c);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29262a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f29263b;

        e(String str, boolean z3) {
            this.f29262a = str;
            this.f29263b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.z1(this.f29262a, this.f29263b);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29265a;

        f(int i2) {
            this.f29265a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.i1(this.f29265a);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29267a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f29268b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f29269c;

        g(String str, boolean z3, int i2) {
            this.f29267a = str;
            this.f29268b = z3;
            this.f29269c = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.x1(this.f29267a, this.f29268b, this.f29269c);
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29271a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f29272b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f29273c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f29274d;

        h(String str, boolean z3, int i2, int i4) {
            this.f29271a = str;
            this.f29272b = z3;
            this.f29273c = i2;
            this.f29274d = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.A1(this.f29271a, this.f29272b, this.f29273c, this.f29274d);
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentResponse f29276a;

        i(CommentResponse commentResponse) {
            this.f29276a = commentResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.y1(this.f29276a);
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29278a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f29278a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentDetailActivity_.super.m1(this.f29278a);
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
            CommentDetailActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class l extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29281a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f29282b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f29283c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f29284d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f29285e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ String f29286f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ int f29287g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String str, long j4, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i2) {
            super(str, j4, str2);
            this.f29281a = str3;
            this.f29282b = str4;
            this.f29283c = str5;
            this.f29284d = str6;
            this.f29285e = str7;
            this.f29286f = str8;
            this.f29287g = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentDetailActivity_.super.K1(this.f29281a, this.f29282b, this.f29283c, this.f29284d, this.f29285e, this.f29286f, this.f29287g);
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
                CommentDetailActivity_.super.j1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class n extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f29290a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29291b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String str, long j4, String str2, CommentDetailBean.MainCommentBean mainCommentBean, int i2) {
            super(str, j4, str2);
            this.f29290a = mainCommentBean;
            this.f29291b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentDetailActivity_.super.t1(this.f29290a, this.f29291b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class o extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f29293a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29294b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String str, long j4, String str2, CommentDetailBean.MainCommentBean mainCommentBean, int i2) {
            super(str, j4, str2);
            this.f29293a = mainCommentBean;
            this.f29294b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentDetailActivity_.super.L1(this.f29293a, this.f29294b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class p extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f29296a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29297b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f29298c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String str, long j4, String str2, CommentDetailBean.MainCommentBean mainCommentBean, int i2, int i4) {
            super(str, j4, str2);
            this.f29296a = mainCommentBean;
            this.f29297b = i2;
            this.f29298c = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentDetailActivity_.super.x0(this.f29296a, this.f29297b, this.f29298c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class q extends a.c {
        q(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentDetailActivity_.super.q1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentDetailActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentDetailActivity_.this.r1();
        }
    }

    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.G1();
        }
    }

    /* loaded from: classes3.dex */
    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.k1();
        }
    }

    /* loaded from: classes3.dex */
    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.E1();
        }
    }

    /* loaded from: classes3.dex */
    class w implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f29306a;

        w(CommentDetailBean.MainCommentBean mainCommentBean) {
            this.f29306a = mainCommentBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.C1(this.f29306a);
        }
    }

    /* loaded from: classes3.dex */
    class x implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.GameInfoBean f29308a;

        x(CommentDetailBean.GameInfoBean gameInfoBean) {
            this.f29308a = gameInfoBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.D1(this.f29308a);
        }
    }

    /* loaded from: classes3.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    public static class z extends org.androidannotations.api.builder.a<z> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29311a;

        public z(Context context) {
            super(context, CommentDetailActivity_.class);
        }

        public z a(int i2) {
            return (z) super.extra("bespeakSwitch", i2);
        }

        public z b(String str) {
            return (z) super.extra("commentId", str);
        }

        public z c(String str) {
            return (z) super.extra("commentScoreSwitch", str);
        }

        public z d(String str) {
            return (z) super.extra("gameId", str);
        }

        public z e(int i2) {
            return (z) super.extra("gameIsStart", i2);
        }

        public z f(String str) {
            return (z) super.extra("gameType", str);
        }

        public z g(String str) {
            return (z) super.extra("packageName", str);
        }

        public z h(int i2) {
            return (z) super.extra("sgcSwitch", i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29311a;
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

        public z(Fragment fragment) {
            super(fragment.getActivity(), CommentDetailActivity_.class);
            this.f29311a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        this.f29206x = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
        supportRequestWindowFeature(10);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("commentId")) {
                this.f29188o = extras.getString("commentId");
            }
            if (extras.containsKey("gameId")) {
                this.f29190p = extras.getString("gameId");
            }
            if (extras.containsKey("commentScoreSwitch")) {
                this.f29192q = extras.getString("commentScoreSwitch");
            }
            if (extras.containsKey("packageName")) {
                this.f29194r = extras.getString("packageName");
            }
            if (extras.containsKey("bespeakSwitch")) {
                this.f29196s = extras.getInt("bespeakSwitch");
            }
            if (extras.containsKey("sgcSwitch")) {
                this.f29198t = extras.getInt("sgcSwitch");
            }
            if (extras.containsKey("gameType")) {
                this.f29200u = extras.getString("gameType");
            }
            if (extras.containsKey("gameIsStart")) {
                this.f29202v = extras.getInt("gameIsStart");
            }
        }
    }

    public static z k2(Context context) {
        return new z(context);
    }

    public static z l2(Fragment fragment) {
        return new z(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void A1(String str, boolean z3, int i2, int i4) {
        org.androidannotations.api.b.e("", new h(str, z3, i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void B1(String str, CommentCreateBean.InfoBean infoBean, boolean z3) {
        org.androidannotations.api.b.e("", new d(str, infoBean, z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void C1(CommentDetailBean.MainCommentBean mainCommentBean) {
        org.androidannotations.api.b.e("", new w(mainCommentBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void D1(CommentDetailBean.GameInfoBean gameInfoBean) {
        org.androidannotations.api.b.e("", new x(gameInfoBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void E1() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void G1() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void H1(List<CommentDetailBean.MainCommentBean> list, int i2) {
        org.androidannotations.api.b.e("", new a(list, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void K1(String str, String str2, String str3, String str4, String str5, String str6, int i2) {
        org.androidannotations.api.a.l(new l("", 0L, "", str, str2, str3, str4, str5, str6, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void L1(CommentDetailBean.MainCommentBean mainCommentBean, int i2) {
        org.androidannotations.api.a.l(new o("", 0L, "", mainCommentBean, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void N1() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.W0.get(cls);
    }

    @Override // com.join.mgps.activity.CommentDetailActivity
    public void i1(int i2) {
        org.androidannotations.api.b.e("", new f(i2), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void j1() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void k1() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void m1(String str) {
        org.androidannotations.api.a.l(new j("", 0L, "", str));
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.V0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.comment_detail_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29173a = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f29174b = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f29175c = (ImageView) aVar.internalFindViewById(R.id.imTopRight);
        this.f29176d = (TextView) aVar.internalFindViewById(R.id.deletedTv);
        this.f29177e = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f29178f = (XListView2) aVar.internalFindViewById(R.id.comment_detail_list);
        this.f29179g = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f29180h = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f29181i = (LinearLayout) aVar.internalFindViewById(R.id.inputLl);
        this.f29182j = (Button) aVar.internalFindViewById(R.id.btn_chat_praise);
        this.f29183k = (Button) aVar.internalFindViewById(R.id.btn_chat_extension);
        this.f29184l = (TextView) aVar.internalFindViewById(R.id.edit_comment_count);
        this.f29185m = (ClearEditText) aVar.internalFindViewById(R.id.edit_user_comment);
        this.f29186n = (Button) aVar.internalFindViewById(R.id.btn_chat_send);
        View internalFindViewById = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new k());
        }
        ImageView imageView = this.f29173a;
        if (imageView != null) {
            imageView.setOnClickListener(new r());
        }
        ImageView imageView2 = this.f29175c;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new s());
        }
        afterView();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.W0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void q1() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.V0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void t1(CommentDetailBean.MainCommentBean mainCommentBean, int i2) {
        org.androidannotations.api.a.l(new n("", 0L, "", mainCommentBean, i2));
    }

    @Override // com.join.mgps.activity.CommentDetailActivity, com.join.mgps.adapter.CommentDetailAdapter.h
    public void x0(CommentDetailBean.MainCommentBean mainCommentBean, int i2, int i4) {
        org.androidannotations.api.a.l(new p("", 0L, "", mainCommentBean, i2, i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void x1(String str, boolean z3, int i2) {
        org.androidannotations.api.b.e("", new g(str, z3, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void y1(CommentResponse commentResponse) {
        org.androidannotations.api.b.e("", new i(commentResponse), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void z1(String str, boolean z3) {
        org.androidannotations.api.b.e("", new e(str, z3), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.V0.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.V0.a(this);
    }
}
