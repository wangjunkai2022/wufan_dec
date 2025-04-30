package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.dto.ListUserCustomGameTagBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class TagReportActivity_ extends TagReportActivity implements g3.a, i3.a, i3.b {

    /* renamed from: q  reason: collision with root package name */
    public static final String f35932q = "gameId";

    /* renamed from: r  reason: collision with root package name */
    public static final String f35933r = "reportTags";

    /* renamed from: o  reason: collision with root package name */
    private final i3.c f35934o = new i3.c();

    /* renamed from: p  reason: collision with root package name */
    private final Map<Class<?>, Object> f35935p = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagReportActivity_.super.F0();
        }
    }

    /* loaded from: classes3.dex */
    class b extends a.c {
        b(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                TagReportActivity_.super.G0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35938a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f35939b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, String str3, int i2) {
            super(str, j4, str2);
            this.f35938a = str3;
            this.f35939b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                TagReportActivity_.super.J0(this.f35938a, this.f35939b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagReportActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagReportActivity_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagReportActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagReportActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagReportActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ListUserCustomGameTagBean f35946a;

        i(ListUserCustomGameTagBean listUserCustomGameTagBean) {
            this.f35946a = listUserCustomGameTagBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            TagReportActivity_.super.L0(this.f35946a);
        }
    }

    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagReportActivity_.super.H0();
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagReportActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TagReportActivity_.super.K0();
        }
    }

    /* loaded from: classes3.dex */
    public static class m extends org.androidannotations.api.builder.a<m> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f35951a;

        public m(Context context) {
            super(context, TagReportActivity_.class);
        }

        public m a(String str) {
            return (m) super.extra("gameId", str);
        }

        public m b(ListUserCustomGameTagBean listUserCustomGameTagBean) {
            return (m) super.extra(TagReportActivity_.f35933r, listUserCustomGameTagBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f35951a;
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

        public m(Fragment fragment) {
            super(fragment.getActivity(), TagReportActivity_.class);
            this.f35951a = fragment;
        }
    }

    public static m U0(Context context) {
        return new m(context);
    }

    public static m V0(Fragment fragment) {
        return new m(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.f35915b = extras.getString("gameId");
            }
            if (extras.containsKey(f35933r)) {
                this.f35922i = (ListUserCustomGameTagBean) extras.getSerializable(f35933r);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagReportActivity
    public void F0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagReportActivity
    public void G0() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagReportActivity
    public void H0() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagReportActivity
    public void J0(String str, int i2) {
        org.androidannotations.api.a.l(new c("", 0L, "", str, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagReportActivity
    public void K0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagReportActivity
    public void L0(ListUserCustomGameTagBean listUserCustomGameTagBean) {
        org.androidannotations.api.b.e("", new i(listUserCustomGameTagBean), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f35935p.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f35934o);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_tag_report);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f35916c = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f35917d = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f35918e = (FlowLayout) aVar.internalFindViewById(R.id.fl_tag_all);
        this.f35919f = (ListView) aVar.internalFindViewById(R.id.lv_reasons);
        this.f35920g = (EditText) aVar.internalFindViewById(R.id.et_reason_text);
        this.f35921h = (Button) aVar.internalFindViewById(R.id.btn_commit);
        this.f35923j = (TextView) aVar.internalFindViewById(R.id.title_textview);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.back_image);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new d());
        }
        Button button = this.f35921h;
        if (button != null) {
            button.setOnClickListener(new e());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new f());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new g());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f35935p.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f35934o.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagReportActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.TagReportActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f35934o.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f35934o.a(this);
    }
}
