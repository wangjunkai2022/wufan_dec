package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ForumMyPostsActivity_ extends ForumMyPostsActivity implements g3.a, i3.a, i3.b {
    private final i3.c G = new i3.c();
    private final Map<Class<?>, Object> H = new HashMap();
    private final IntentFilter I = new IntentFilter();
    private final BroadcastReceiver J = new g();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.b1();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29999a;

        b(String str) {
            this.f29999a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.showMessage(this.f29999a);
        }
    }

    /* loaded from: classes3.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30001a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f30001a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumMyPostsActivity_.super.L0(this.f30001a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumMyPostsActivity_.super.Q0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30004a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f30004a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumMyPostsActivity_.super.M0(this.f30004a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30006a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f30006a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumMyPostsActivity_.super.W0(this.f30006a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f30008b = "gameData";

        g() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ForumMyPostsActivity_.this.V0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumMyPostsActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetailResultBean f30011a;

        i(DetailResultBean detailResultBean) {
            this.f30011a = detailResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.startDown(this.f30011a);
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f30013a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30014b;

        j(List list, int i2) {
            this.f30013a = list;
            this.f30014b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.e1(this.f30013a, this.f30014b);
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30016a;

        k(int i2) {
            this.f30016a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.I0(this.f30016a);
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.d1();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30019a;

        m(String str) {
            this.f30019a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.showToast(this.f30019a);
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.S0();
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumMyPostsActivity_.super.c1();
        }
    }

    /* loaded from: classes3.dex */
    public static class p extends org.androidannotations.api.builder.a<p> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f30023a;

        public p(Context context) {
            super(context, ForumMyPostsActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f30023a;
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
            super(fragment.getActivity(), ForumMyPostsActivity_.class);
            this.f30023a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f29968h = resources.getString(R.string.net_excption);
        this.f29969i = resources.getString(R.string.connect_server_excption);
        this.I.addAction(f1.a.H);
        this.I.addAction(f1.a.F);
        registerReceiver(this.J, this.I);
    }

    public static p t1(Context context) {
        return new p(context);
    }

    public static p u1(Fragment fragment) {
        return new p(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void I0(int i2) {
        org.androidannotations.api.b.e("", new k(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void L0(String str) {
        org.androidannotations.api.a.l(new c("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void M0(int i2) {
        org.androidannotations.api.a.l(new e("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void Q0() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void S0() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void W0(int i2) {
        org.androidannotations.api.a.l(new f("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void b1() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void c1() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void d1() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void e1(List<ForumBean.ForumPostsBean> list, int i2) {
        org.androidannotations.api.b.e("", new j(list, i2), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.H.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.G);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_forum_my_post);
    }

    @Override // com.join.mgps.activity.ForumMyPostsActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.J);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29961a = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f29962b = (TextView) aVar.internalFindViewById(R.id.layout_title);
        this.f29963c = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f29964d = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f29965e = (XListView2) aVar.internalFindViewById(R.id.mg_forum_profile_comment_list);
        ImageView imageView = this.f29961a;
        if (imageView != null) {
            imageView.setOnClickListener(new h());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.H.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.G.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new b(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new m(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumMyPostsActivity
    public void startDown(DetailResultBean detailResultBean) {
        org.androidannotations.api.b.e("", new i(detailResultBean), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.G.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.G.a(this);
    }
}
