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
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.dto.GameTagsBean;
import com.join.mgps.dto.ListUserCustomGameTagBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class TagAddActivity_ extends TagAddActivity implements g3.a, i3.a, i3.b {
    public static final String C = "title";
    public static final String D = "gameId";

    /* renamed from: y  reason: collision with root package name */
    private final i3.c f35826y = new i3.c();

    /* renamed from: z  reason: collision with root package name */
    private final Map<Class<?>, Object> f35827z = new HashMap();
    private final IntentFilter A = new IntentFilter();
    private final BroadcastReceiver B = new k();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ListUserCustomGameTagBean f35828a;

        a(ListUserCustomGameTagBean listUserCustomGameTagBean) {
            this.f35828a = listUserCustomGameTagBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            TagAddActivity_.super.T0(this.f35828a);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagAddActivity_.super.G0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagAddActivity_.super.S0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagAddActivity_.super.K0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f35833a;

        e(List list) {
            this.f35833a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            TagAddActivity_.super.V0(this.f35833a);
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
                TagAddActivity_.super.M0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameTagsBean f35836a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String str, long j4, String str2, GameTagsBean gameTagsBean) {
            super(str, j4, str2);
            this.f35836a = gameTagsBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                TagAddActivity_.super.I0(this.f35836a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class h extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameTagsBean f35838a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String str, long j4, String str2, GameTagsBean gameTagsBean) {
            super(str, j4, str2);
            this.f35838a = gameTagsBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                TagAddActivity_.super.J0(this.f35838a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35840a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f35840a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                TagAddActivity_.super.F0(this.f35840a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35842a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f35842a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                TagAddActivity_.super.L0(this.f35842a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            TagAddActivity_.this.accountChange(intent);
        }
    }

    /* loaded from: classes3.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagAddActivity_.this.U0();
        }
    }

    /* loaded from: classes3.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagAddActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagAddActivity_.this.P0();
        }
    }

    /* loaded from: classes3.dex */
    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagAddActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagAddActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagAddActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagAddActivity_.super.O0();
        }
    }

    /* loaded from: classes3.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagAddActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    public static class t extends org.androidannotations.api.builder.a<t> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f35853a;

        public t(Context context) {
            super(context, TagAddActivity_.class);
        }

        public t a(String str) {
            return (t) super.extra("gameId", str);
        }

        public t b(String str) {
            return (t) super.extra("title", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f35853a;
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

        public t(Fragment fragment) {
            super(fragment.getActivity(), TagAddActivity_.class);
            this.f35853a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        i3.c.b(this);
        this.f35798m = resources.getString(R.string.net_excption);
        this.f35799n = resources.getString(R.string.connect_server_excption);
        injectExtras_();
        this.A.addAction(f1.a.B);
        registerReceiver(this.B, this.A);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("title")) {
                this.f35790e = extras.getString("title");
            }
            if (extras.containsKey("gameId")) {
                this.f35791f = extras.getString("gameId");
            }
        }
    }

    public static t j1(Context context) {
        return new t(context);
    }

    public static t k1(Fragment fragment) {
        return new t(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagAddActivity
    public void F0(String str) {
        org.androidannotations.api.a.l(new i("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagAddActivity
    public void G0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagAddActivity
    public void I0(GameTagsBean gameTagsBean) {
        org.androidannotations.api.a.l(new g("", 0L, "", gameTagsBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagAddActivity
    public void J0(GameTagsBean gameTagsBean) {
        org.androidannotations.api.a.l(new h("", 0L, "", gameTagsBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagAddActivity
    public void K0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagAddActivity
    public void L0(String str) {
        org.androidannotations.api.a.l(new j("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagAddActivity
    public void M0() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagAddActivity
    public void O0() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagAddActivity
    public void S0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagAddActivity
    public void T0(ListUserCustomGameTagBean listUserCustomGameTagBean) {
        org.androidannotations.api.b.e("", new a(listUserCustomGameTagBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagAddActivity
    public void V0(List<String> list) {
        org.androidannotations.api.b.e("", new e(list), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f35827z.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f35826y);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_tag_add);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.B);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f35786a = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f35787b = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f35788c = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f35789d = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f35792g = (FlowLayout) aVar.internalFindViewById(R.id.fl_tag_all);
        this.f35793h = (FlowLayout) aVar.internalFindViewById(R.id.fl_tag_my);
        this.f35794i = (TextView) aVar.internalFindViewById(R.id.tv_tag_add);
        this.f35795j = (NestedScrollView) aVar.internalFindViewById(R.id.nsv_view);
        this.f35796k = (EditText) aVar.internalFindViewById(R.id.et_tag);
        this.f35797l = (ListView) aVar.internalFindViewById(R.id.lv_auto_search);
        View internalFindViewById = aVar.internalFindViewById(R.id.tv_report);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.ll_add_tag);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new l());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new m());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new n());
        }
        ImageView imageView = this.f35786a;
        if (imageView != null) {
            imageView.setOnClickListener(new o());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new p());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f35827z.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f35826y.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagAddActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagAddActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f35826y.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f35826y.a(this);
    }
}
