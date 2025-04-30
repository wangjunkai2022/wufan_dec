package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.RecommendLabelTag;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ForumPostsTagSelectActivity_ extends ForumPostsTagSelectActivity implements g3.a, i3.a, i3.b {

    /* renamed from: w  reason: collision with root package name */
    public static final String f30338w = "action";

    /* renamed from: x  reason: collision with root package name */
    public static final String f30339x = "post_type";

    /* renamed from: y  reason: collision with root package name */
    public static final String f30340y = "pid";

    /* renamed from: s  reason: collision with root package name */
    private final i3.c f30341s = new i3.c();

    /* renamed from: t  reason: collision with root package name */
    private final Map<Class<?>, Object> f30342t = new HashMap();

    /* renamed from: u  reason: collision with root package name */
    private final IntentFilter f30343u = new IntentFilter();

    /* renamed from: v  reason: collision with root package name */
    private final BroadcastReceiver f30344v = new a();

    /* loaded from: classes3.dex */
    class a extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f30345b = "gameData";

        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ForumPostsTagSelectActivity_.this.J0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsTagSelectActivity_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsTagSelectActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f30349a;

        d(List list) {
            this.f30349a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsTagSelectActivity_.super.O0(this.f30349a);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30351a;

        e(String str) {
            this.f30351a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsTagSelectActivity_.super.D0(this.f30351a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30353a;

        f(int i2) {
            this.f30353a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsTagSelectActivity_.super.E0(this.f30353a);
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
                ForumPostsTagSelectActivity_.super.M0();
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
                ForumPostsTagSelectActivity_.super.N0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class i extends org.androidannotations.api.builder.a<i> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f30357a;

        public i(Context context) {
            super(context, ForumPostsTagSelectActivity_.class);
        }

        public i a(int i2) {
            return (i) super.extra("action", i2);
        }

        public i b(int i2) {
            return (i) super.extra(ForumPostsTagSelectActivity_.f30340y, i2);
        }

        public i c(int i2) {
            return (i) super.extra(ForumPostsTagSelectActivity_.f30339x, i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f30357a;
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

        public i(Fragment fragment) {
            super(fragment.getActivity(), ForumPostsTagSelectActivity_.class);
            this.f30357a = fragment;
        }
    }

    public static i U0(Context context) {
        return new i(context);
    }

    public static i V0(Fragment fragment) {
        return new i(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
        this.f30343u.addAction(f1.a.H);
        this.f30343u.addAction(f1.a.F);
        registerReceiver(this.f30344v, this.f30343u);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("action")) {
                this.f30326l = extras.getInt("action");
            }
            if (extras.containsKey(f30339x)) {
                this.f30327m = extras.getInt(f30339x);
            }
            if (extras.containsKey(f30340y)) {
                this.f30328n = extras.getInt(f30340y);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsTagSelectActivity
    public void D0(String str) {
        org.androidannotations.api.b.e("", new e(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsTagSelectActivity
    public void E0(int i2) {
        org.androidannotations.api.b.e("", new f(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsTagSelectActivity
    public void M0() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsTagSelectActivity
    public void N0() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsTagSelectActivity
    public void O0(List<RecommendLabelTag> list) {
        org.androidannotations.api.b.e("", new d(list), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f30342t.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f30341s);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_forum_posts_tag_select);
    }

    @Override // com.join.mgps.activity.ForumPostsTagSelectActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f30344v);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f30315a = (RelativeLayout) aVar.internalFindViewById(R.id.actionbarLayout);
        this.f30316b = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f30317c = (TextView) aVar.internalFindViewById(R.id.layout_title);
        this.f30318d = (XListView2) aVar.internalFindViewById(R.id.listView);
        this.f30319e = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        Button button = (Button) aVar.internalFindViewById(R.id.release);
        this.f30320f = button;
        if (button != null) {
            button.setOnClickListener(new b());
        }
        ImageView imageView = this.f30316b;
        if (imageView != null) {
            imageView.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f30342t.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f30341s.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f30341s.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f30341s.a(this);
    }
}
