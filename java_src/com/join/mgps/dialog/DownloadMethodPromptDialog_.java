package com.join.mgps.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class DownloadMethodPromptDialog_ extends DownloadMethodPromptDialog implements g3.a, i3.a, i3.b {
    public static final String A = "ext";
    public static final String B = "isForceShow";
    public static final String C = "fromRecomDown";
    public static final String D = "disableShowSpeedUpPrompt";
    public static final String E = "data";
    public static final String F = "_from";
    public static final String G = "_from_type";

    /* renamed from: z  reason: collision with root package name */
    public static final String f47403z = "gameId";

    /* renamed from: x  reason: collision with root package name */
    private final i3.c f47404x = new i3.c();

    /* renamed from: y  reason: collision with root package name */
    private final Map<Class<?>, Object> f47405y = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QueryDownloadInfoResponseData f47406a;

        a(QueryDownloadInfoResponseData queryDownloadInfoResponseData) {
            this.f47406a = queryDownloadInfoResponseData;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadMethodPromptDialog_.super.update(this.f47406a);
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
                DownloadMethodPromptDialog_.super.I0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodPromptDialog_.this.close();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodPromptDialog_.this.K0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodPromptDialog_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodPromptDialog_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodPromptDialog_.this.M0();
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodPromptDialog_.this.protocolCheckPlaceholder();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodPromptDialog_.this.O0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadMethodPromptDialog_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f47417a;

        k(String str) {
            this.f47417a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadMethodPromptDialog_.super.E0(this.f47417a);
        }
    }

    /* loaded from: classes3.dex */
    public static class l extends org.androidannotations.api.builder.a<l> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f47419a;

        public l(Context context) {
            super(context, DownloadMethodPromptDialog_.class);
        }

        public l a(int i2) {
            return (l) super.extra(DownloadMethodPromptDialog_.F, i2);
        }

        public l b(int i2) {
            return (l) super.extra(DownloadMethodPromptDialog_.G, i2);
        }

        public l c(QueryDownloadInfoResponseData queryDownloadInfoResponseData) {
            return (l) super.extra("data", queryDownloadInfoResponseData);
        }

        public l d(boolean z3) {
            return (l) super.extra(DownloadMethodPromptDialog_.D, z3);
        }

        public l e(String str) {
            return (l) super.extra(DownloadMethodPromptDialog_.A, str);
        }

        public l f(boolean z3) {
            return (l) super.extra(DownloadMethodPromptDialog_.C, z3);
        }

        public l g(String str) {
            return (l) super.extra("gameId", str);
        }

        public l h(boolean z3) {
            return (l) super.extra(DownloadMethodPromptDialog_.B, z3);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f47419a;
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

        public l(Fragment fragment) {
            super(fragment.getActivity(), DownloadMethodPromptDialog_.class);
            this.f47419a = fragment;
        }
    }

    public static l S0(Context context) {
        return new l(context);
    }

    public static l T0(Fragment fragment) {
        return new l(fragment);
    }

    private void init_(Bundle bundle) {
        this.f47388k = new PrefDef_(this);
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.f47389l = extras.getString("gameId");
            }
            if (extras.containsKey(A)) {
                this.f47390m = extras.getString(A);
            }
            if (extras.containsKey(B)) {
                this.f47391n = extras.getBoolean(B);
            }
            if (extras.containsKey(C)) {
                this.f47392o = extras.getBoolean(C);
            }
            if (extras.containsKey(D)) {
                this.f47393p = extras.getBoolean(D);
            }
            if (extras.containsKey("data")) {
                this.f47394q = (QueryDownloadInfoResponseData) extras.getSerializable("data");
            }
            if (extras.containsKey(F)) {
                this.f47395r = extras.getInt(F);
            }
            if (extras.containsKey(G)) {
                this.f47396s = extras.getInt(G);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.dialog.DownloadMethodPromptDialog
    public void E0(String str) {
        org.androidannotations.api.b.e("", new k(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.dialog.DownloadMethodPromptDialog
    public void I0() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f47405y.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.join.mgps.dialog.DownloadMethodPromptDialog, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f47404x);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.dialog_download_method_prompt);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f47378a = aVar.internalFindViewById(R.id.protocolCheck);
        this.f47379b = aVar.internalFindViewById(R.id.noPromptCheck);
        this.f47380c = aVar.internalFindViewById(R.id.noPrompt);
        this.f47381d = (TextView) aVar.internalFindViewById(R.id.title);
        this.f47382e = (TextView) aVar.internalFindViewById(R.id.name);
        this.f47383f = (TextView) aVar.internalFindViewById(R.id.link);
        this.f47384g = (TextView) aVar.internalFindViewById(R.id.download);
        this.f47385h = (TextView) aVar.internalFindViewById(R.id.subTitle);
        this.f47386i = (TextView) aVar.internalFindViewById(R.id.userProtocolTxt);
        this.f47387j = (TextView) aVar.internalFindViewById(R.id.protocol);
        this.f47398u = aVar.internalFindViewById(R.id.constraintLayout);
        View internalFindViewById = aVar.internalFindViewById(R.id.close);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.outside);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.res);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.protocolCheckPlaceholder);
        View internalFindViewById5 = aVar.internalFindViewById(R.id.textView77);
        View internalFindViewById6 = aVar.internalFindViewById(R.id.noPromptCheckPlaceholder);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new c());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new d());
        }
        TextView textView = this.f47384g;
        if (textView != null) {
            textView.setOnClickListener(new e());
        }
        TextView textView2 = this.f47387j;
        if (textView2 != null) {
            textView2.setOnClickListener(new f());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new g());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new h());
        }
        if (internalFindViewById5 != null) {
            internalFindViewById5.setOnClickListener(new i());
        }
        if (internalFindViewById6 != null) {
            internalFindViewById6.setOnClickListener(new j());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f47405y.put(cls, t3);
    }

    @Override // com.join.mgps.dialog.DownloadMethodPromptDialog, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f47404x.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.dialog.DownloadMethodPromptDialog
    public void update(QueryDownloadInfoResponseData queryDownloadInfoResponseData) {
        org.androidannotations.api.b.e("", new a(queryDownloadInfoResponseData), 0L);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f47404x.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f47404x.a(this);
    }
}
