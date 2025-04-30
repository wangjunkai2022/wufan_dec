package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class SharePostsActivity_ extends SharePostsActivity implements g3.a, i3.a, i3.b {
    private final i3.c E = new i3.c();
    private final Map<Class<?>, Object> F = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharePostsActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharePostsActivity_.this.V0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35370a;

        c(String str) {
            this.f35370a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            SharePostsActivity_.super.showToast(this.f35370a);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f35372a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f35373b;

        d(int i2, int i4) {
            this.f35372a = i2;
            this.f35373b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            SharePostsActivity_.super.Z0(this.f35372a, this.f35373b);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f35375a;

        e(int i2) {
            this.f35375a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            SharePostsActivity_.super.a1(this.f35375a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35377a;

        f(String str) {
            this.f35377a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            SharePostsActivity_.super.showMessage(this.f35377a);
        }
    }

    /* loaded from: classes3.dex */
    class g extends a.c {
        g(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SharePostsActivity_.super.N0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class h extends org.androidannotations.api.builder.a<h> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f35380a;

        public h(Context context) {
            super(context, SharePostsActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f35380a;
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

        public h(Fragment fragment) {
            super(fragment.getActivity(), SharePostsActivity_.class);
            this.f35380a = fragment;
        }
    }

    public static h h1(Context context) {
        return new h(context);
    }

    public static h i1(Fragment fragment) {
        return new h(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SharePostsActivity
    public void N0() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SharePostsActivity
    public void Z0(int i2, int i4) {
        org.androidannotations.api.b.e("", new d(i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SharePostsActivity
    public void a1(int i2) {
        org.androidannotations.api.b.e("", new e(i2), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.F.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.E);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.share_posts_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f35320b = (TextView) aVar.internalFindViewById(R.id.layout_title);
        this.f35321c = (Button) aVar.internalFindViewById(R.id.release);
        this.f35322d = (TextView) aVar.internalFindViewById(R.id.posts_title);
        this.f35323e = (TextView) aVar.internalFindViewById(R.id.posts_content);
        this.f35324f = (HListView) aVar.internalFindViewById(R.id.posts_pic_hlist);
        this.f35325g = (TextView) aVar.internalFindViewById(R.id.footer_tip);
        this.f35338t = (LinearLayout) aVar.internalFindViewById(R.id.helpContainer);
        this.f35339u = (GridView) aVar.internalFindViewById(R.id.helpGrid);
        this.f35340v = (TextView) aVar.internalFindViewById(R.id.myRemainHelpMoney);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        Button button = this.f35321c;
        if (button != null) {
            button.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.F.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.E.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SharePostsActivity
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SharePostsActivity
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new c(str), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.E.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.E.a(this);
    }
}
