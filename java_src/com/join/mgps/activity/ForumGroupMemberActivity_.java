package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ForumData;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class ForumGroupMemberActivity_ extends ForumGroupMemberActivity implements g3.a, i3.a, i3.b {

    /* renamed from: t  reason: collision with root package name */
    public static final String f29856t = "gid";

    /* renamed from: p  reason: collision with root package name */
    private final i3.c f29857p = new i3.c();

    /* renamed from: q  reason: collision with root package name */
    private final Map<Class<?>, Object> f29858q = new HashMap();

    /* renamed from: r  reason: collision with root package name */
    private final IntentFilter f29859r = new IntentFilter();

    /* renamed from: s  reason: collision with root package name */
    private final BroadcastReceiver f29860s = new a();

    /* loaded from: classes3.dex */
    class a extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f29861b = "gameData";

        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ForumGroupMemberActivity_.this.N0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumGroupMemberActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f29864a;

        c(boolean z3) {
            this.f29864a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupMemberActivity_.super.E0(this.f29864a);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupMemberActivity_.super.R0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29867a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ForumData.GroupFans f29868b;

        e(int i2, ForumData.GroupFans groupFans) {
            this.f29867a = i2;
            this.f29868b = groupFans;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupMemberActivity_.super.Q0(this.f29867a, this.f29868b);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29870a;

        f(String str) {
            this.f29870a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupMemberActivity_.super.D0(this.f29870a);
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29872a;

        g(int i2) {
            this.f29872a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupMemberActivity_.super.F0(this.f29872a);
        }
    }

    /* loaded from: classes3.dex */
    class h extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29874a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f29874a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumGroupMemberActivity_.super.G0(this.f29874a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29876a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f29876a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumGroupMemberActivity_.super.H0(this.f29876a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class j extends org.androidannotations.api.builder.a<j> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29878a;

        public j(Context context) {
            super(context, ForumGroupMemberActivity_.class);
        }

        public j a(int i2) {
            return (j) super.extra(ForumGroupMemberActivity_.f29856t, i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29878a;
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

        public j(Fragment fragment) {
            super(fragment.getActivity(), ForumGroupMemberActivity_.class);
            this.f29878a = fragment;
        }
    }

    public static j Z0(Context context) {
        return new j(context);
    }

    public static j a1(Fragment fragment) {
        return new j(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
        this.f29859r.addAction(f1.a.H);
        this.f29859r.addAction(f1.a.F);
        registerReceiver(this.f29860s, this.f29859r);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(f29856t)) {
            return;
        }
        this.f29838e = extras.getInt(f29856t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumGroupMemberActivity
    public void D0(String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumGroupMemberActivity
    public void E0(boolean z3) {
        org.androidannotations.api.b.e("", new c(z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumGroupMemberActivity
    public void F0(int i2) {
        org.androidannotations.api.b.e("", new g(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumGroupMemberActivity
    public void G0(int i2) {
        org.androidannotations.api.a.l(new h("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumGroupMemberActivity
    public void H0(int i2) {
        org.androidannotations.api.a.l(new i("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumGroupMemberActivity
    public void Q0(int i2, ForumData.GroupFans groupFans) {
        org.androidannotations.api.b.e("", new e(i2, groupFans), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumGroupMemberActivity
    public void R0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f29858q.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f29857p);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.mg_forum_group_member_activity);
    }

    @Override // com.join.mgps.activity.ForumGroupMemberActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f29860s);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29834a = (XListView2) aVar.internalFindViewById(R.id.listView);
        this.f29835b = (TextView) aVar.internalFindViewById(R.id.forum_title_center);
        this.f29836c = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f29858q.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f29857p.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f29857p.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f29857p.a(this);
    }
}
