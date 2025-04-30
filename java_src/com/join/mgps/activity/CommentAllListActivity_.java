package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class CommentAllListActivity_ extends CommentAllListActivity implements g3.a, i3.a, i3.b {
    public static final String A0 = "gameId";
    public static final String B0 = "packageName";
    public static final String C0 = "commentScoreSwitch";
    public static final String D0 = "bespeakSwitch";
    public static final String E0 = "sgcSwitch";
    public static final String F0 = "gameType";
    public static final String G0 = "gameIsStart";

    /* renamed from: x0  reason: collision with root package name */
    public static final String f29086x0 = "commentId";

    /* renamed from: y0  reason: collision with root package name */
    public static final String f29087y0 = "commentContent";

    /* renamed from: z0  reason: collision with root package name */
    public static final String f29088z0 = "commentStars";

    /* renamed from: v0  reason: collision with root package name */
    private final i3.c f29089v0 = new i3.c();

    /* renamed from: w0  reason: collision with root package name */
    private final Map<Class<?>, Object> f29090w0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29091a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f29092b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f29093c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f29094d;

        a(String str, boolean z3, int i2, int i4) {
            this.f29091a = str;
            this.f29092b = z3;
            this.f29093c = i2;
            this.f29094d = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.M0(this.f29091a, this.f29092b, this.f29093c, this.f29094d);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentResponse f29096a;

        b(CommentResponse commentResponse) {
            this.f29096a = commentResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.N0(this.f29096a);
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
                CommentAllListActivity_.super.I0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f29099a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29100b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f29101c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, long j4, String str2, CommentBaseBean commentBaseBean, int i2, int i4) {
            super(str, j4, str2);
            this.f29099a = commentBaseBean;
            this.f29100b = i2;
            this.f29101c = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentAllListActivity_.super.d(this.f29099a, this.f29100b, this.f29101c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f29103a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29104b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f29105c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, long j4, String str2, CommentBaseBean commentBaseBean, int i2, int i4) {
            super(str, j4, str2);
            this.f29103a = commentBaseBean;
            this.f29104b = i2;
            this.f29105c = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentAllListActivity_.super.e(this.f29103a, this.f29104b, this.f29105c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f extends a.c {
        f(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentAllListActivity_.super.L0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentAllListActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentAllListActivity_.this.Q0();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentAllListBean.ScoringDetailsBean f29110a;

        i(CommentAllListBean.ScoringDetailsBean scoringDetailsBean) {
            this.f29110a = scoringDetailsBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.O0(this.f29110a);
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f29113a;

        k(List list) {
            this.f29113a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.P0(this.f29113a);
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.R0();
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29117a;

        n(String str) {
            this.f29117a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.showMessage(this.f29117a);
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29119a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29120b;

        o(int i2, int i4) {
            this.f29119a = i2;
            this.f29120b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.G0(this.f29119a, this.f29120b);
        }
    }

    /* loaded from: classes3.dex */
    public static class p extends org.androidannotations.api.builder.a<p> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29122a;

        public p(Context context) {
            super(context, CommentAllListActivity_.class);
        }

        public p a(int i2) {
            return (p) super.extra("bespeakSwitch", i2);
        }

        public p b(String str) {
            return (p) super.extra("commentContent", str);
        }

        public p c(String str) {
            return (p) super.extra("commentId", str);
        }

        public p d(String str) {
            return (p) super.extra("commentScoreSwitch", str);
        }

        public p e(float f4) {
            return (p) super.extra("commentStars", f4);
        }

        public p f(String str) {
            return (p) super.extra("gameId", str);
        }

        public p g(int i2) {
            return (p) super.extra("gameIsStart", i2);
        }

        public p h(String str) {
            return (p) super.extra("gameType", str);
        }

        public p i(String str) {
            return (p) super.extra("packageName", str);
        }

        public p j(int i2) {
            return (p) super.extra("sgcSwitch", i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29122a;
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

        public p(Fragment fragment) {
            super(fragment.getActivity(), CommentAllListActivity_.class);
            this.f29122a = fragment;
        }
    }

    public static p f1(Context context) {
        return new p(context);
    }

    public static p g1(Fragment fragment) {
        return new p(fragment);
    }

    private void init_(Bundle bundle) {
        this.f29059k = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("commentId")) {
                this.f29060l = extras.getString("commentId");
            }
            if (extras.containsKey("commentContent")) {
                this.f29061m = extras.getString("commentContent");
            }
            if (extras.containsKey("commentStars")) {
                this.f29062n = extras.getFloat("commentStars");
            }
            if (extras.containsKey("gameId")) {
                this.f29064o = extras.getString("gameId");
            }
            if (extras.containsKey("packageName")) {
                this.f29066p = extras.getString("packageName");
            }
            if (extras.containsKey("commentScoreSwitch")) {
                this.f29068q = extras.getString("commentScoreSwitch");
            }
            if (extras.containsKey("bespeakSwitch")) {
                this.f29070r = extras.getInt("bespeakSwitch");
            }
            if (extras.containsKey("sgcSwitch")) {
                this.f29072s = extras.getInt("sgcSwitch");
            }
            if (extras.containsKey("gameType")) {
                this.f29074t = extras.getString("gameType");
            }
            if (extras.containsKey("gameIsStart")) {
                this.f29076u = extras.getInt("gameIsStart");
            }
        }
    }

    @Override // com.join.mgps.activity.CommentAllListActivity
    public void G0(int i2, int i4) {
        org.androidannotations.api.b.e("", new o(i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void I0() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void L0() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void M0(String str, boolean z3, int i2, int i4) {
        org.androidannotations.api.b.e("", new a(str, z3, i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void N0(CommentResponse commentResponse) {
        org.androidannotations.api.b.e("", new b(commentResponse), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void O0(CommentAllListBean.ScoringDetailsBean scoringDetailsBean) {
        org.androidannotations.api.b.e("", new i(scoringDetailsBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void P0(List<CommentBaseBean> list) {
        org.androidannotations.api.b.e("", new k(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void R0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    @Override // com.join.mgps.activity.CommentAllListActivity, com.join.mgps.adapter.CommentAllListAdapter.h
    public void d(CommentBaseBean commentBaseBean, int i2, int i4) {
        org.androidannotations.api.a.l(new d("", 0L, "", commentBaseBean, i2, i4));
    }

    @Override // com.join.mgps.activity.CommentAllListActivity, com.join.mgps.adapter.CommentAllListAdapter.h
    public void e(CommentBaseBean commentBaseBean, int i2, int i4) {
        org.androidannotations.api.a.l(new e("", 0L, "", commentBaseBean, i2, i4));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f29090w0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f29089v0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.comment_all_list_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29050b = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f29051c = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f29052d = (TextView) aVar.internalFindViewById(R.id.textTopRight);
        this.f29053e = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f29054f = (XListView2) aVar.internalFindViewById(R.id.comment_all_list);
        this.f29055g = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f29056h = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f29057i = (LinearLayout) aVar.internalFindViewById(R.id.noCommentLl);
        ImageView imageView = this.f29050b;
        if (imageView != null) {
            imageView.setOnClickListener(new g());
        }
        TextView textView = this.f29052d;
        if (textView != null) {
            textView.setOnClickListener(new h());
        }
        afterView();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f29090w0.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f29089v0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new n(str), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f29089v0.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f29089v0.a(this);
    }
}
