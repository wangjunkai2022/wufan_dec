package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.LabelBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class SearchLabelActivity_ extends SearchLabelActivity implements g3.a, i3.a, i3.b {

    /* renamed from: q  reason: collision with root package name */
    public static final String f35167q = "fromType";

    /* renamed from: o  reason: collision with root package name */
    private final i3.c f35168o = new i3.c();

    /* renamed from: p  reason: collision with root package name */
    private final Map<Class<?>, Object> f35169p = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchLabelActivity_.this.g();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchLabelActivity_.this.h();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchLabelActivity_.this.b();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f35173a;

        d(List list) {
            this.f35173a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchLabelActivity_.super.l(this.f35173a);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchLabelActivity_.super.j();
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchLabelActivity_.super.i();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchLabelActivity_.super.e();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35178a;

        h(String str) {
            this.f35178a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchLabelActivity_.super.k(this.f35178a);
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35180a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f35180a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchLabelActivity_.super.c(this.f35180a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class j extends org.androidannotations.api.builder.a<j> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f35182a;

        public j(Context context) {
            super(context, SearchLabelActivity_.class);
        }

        public j a(int i2) {
            return (j) super.extra("fromType", i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f35182a;
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
            super(fragment.getActivity(), SearchLabelActivity_.class);
            this.f35182a = fragment;
        }
    }

    private void s(Bundle bundle) {
        i3.c.b(this);
        this.f35155l = AccountUtil_.getInstance_(this);
        t();
    }

    private void t() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("fromType")) {
            return;
        }
        this.f35144a = extras.getInt("fromType");
    }

    public static j u(Context context) {
        return new j(context);
    }

    public static j v(Fragment fragment) {
        return new j(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchLabelActivity
    public void c(String str) {
        org.androidannotations.api.a.l(new i("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchLabelActivity
    public void e() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f35169p.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchLabelActivity
    public void i() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchLabelActivity
    public void j() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchLabelActivity
    public void k(String str) {
        org.androidannotations.api.b.e("", new h(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchLabelActivity
    public void l(List<LabelBean> list) {
        org.androidannotations.api.b.e("", new d(list), 0L);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f35168o);
        s(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_search_label);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f35145b = (ListView) aVar.internalFindViewById(R.id.mListView);
        this.f35146c = (ImageView) aVar.internalFindViewById(R.id.ic_clear);
        this.f35147d = (EditText) aVar.internalFindViewById(R.id.et_search);
        this.f35148e = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f35149f = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f35153j = (TextView) aVar.internalFindViewById(R.id.tv_nodata);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new b());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new c());
        }
        a();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f35169p.put(cls, t3);
    }

    @Override // android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f35168o.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        t();
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f35168o.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f35168o.a(this);
    }
}
