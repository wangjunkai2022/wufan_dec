package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.dto.CollectionDataBeanInfo;
import com.join.mgps.dto.ExtBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class CollectionModuleThreeActivity_ extends CollectionModuleThreeActivity implements g3.a, i3.a, i3.b {

    /* renamed from: v  reason: collision with root package name */
    public static final String f28976v = "collection_id";

    /* renamed from: w  reason: collision with root package name */
    public static final String f28977w = "extBean";

    /* renamed from: t  reason: collision with root package name */
    private final i3.c f28978t = new i3.c();

    /* renamed from: u  reason: collision with root package name */
    private final Map<Class<?>, Object> f28979u = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleThreeActivity_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleThreeActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionModuleThreeActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleThreeActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleThreeActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f28985a;

        f(List list) {
            this.f28985a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionModuleThreeActivity_.super.I0(this.f28985a);
        }
    }

    /* loaded from: classes3.dex */
    class g extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28987a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f28987a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CollectionModuleThreeActivity_.super.F0(this.f28987a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class h extends org.androidannotations.api.builder.a<h> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28989a;

        public h(Context context) {
            super(context, CollectionModuleThreeActivity_.class);
        }

        public h a(String str) {
            return (h) super.extra("collection_id", str);
        }

        public h b(ExtBean extBean) {
            return (h) super.extra("extBean", extBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28989a;
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
            super(fragment.getActivity(), CollectionModuleThreeActivity_.class);
            this.f28989a = fragment;
        }
    }

    public static h N0(Context context) {
        return new h(context);
    }

    public static h O0(Fragment fragment) {
        return new h(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("collection_id")) {
                this.f28972q = extras.getString("collection_id");
            }
            if (extras.containsKey("extBean")) {
                this.f28973r = (ExtBean) extras.getSerializable("extBean");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleThreeActivity
    public void F0(String str) {
        org.androidannotations.api.a.l(new g("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleThreeActivity
    public void I0(List<CollectionDataBeanInfo> list) {
        org.androidannotations.api.b.e("", new f(list), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f28979u.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f28978t);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.collection_three_fragment_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28960e = (MViewpagerV4) aVar.internalFindViewById(R.id.mBottomVIewPager);
        this.f28961f = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f28962g = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f28963h = (RelativeLayout) aVar.internalFindViewById(R.id.relateLayoutRight);
        this.f28964i = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f28965j = (ImageView) aVar.internalFindViewById(R.id.img_iconback);
        this.f28966k = (TextView) aVar.internalFindViewById(R.id.textViewTitle);
        this.f28967l = (TextView) aVar.internalFindViewById(R.id.textViewPosition);
        this.f28968m = (TextView) aVar.internalFindViewById(R.id.textViewTime);
        View internalFindViewById = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f28965j;
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        ImageView imageView2 = this.f28964i;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new b());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f28979u.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f28978t.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleThreeActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionModuleThreeActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f28978t.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f28978t.a(this);
    }
}
