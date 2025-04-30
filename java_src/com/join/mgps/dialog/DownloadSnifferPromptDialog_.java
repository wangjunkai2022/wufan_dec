package com.join.mgps.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class DownloadSnifferPromptDialog_ extends DownloadSnifferPromptDialog implements g3.a, i3.a, i3.b {

    /* renamed from: n  reason: collision with root package name */
    public static final String f47433n = "downloadTask";

    /* renamed from: o  reason: collision with root package name */
    public static final String f47434o = "downloadSourceUrl";

    /* renamed from: p  reason: collision with root package name */
    public static final String f47435p = "downloadSearchUrl";

    /* renamed from: q  reason: collision with root package name */
    public static final String f47436q = "download_original_switch";

    /* renamed from: l  reason: collision with root package name */
    private final i3.c f47437l = new i3.c();

    /* renamed from: m  reason: collision with root package name */
    private final Map<Class<?>, Object> f47438m = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSnifferPromptDialog_.this.close();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSnifferPromptDialog_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSnifferPromptDialog_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSnifferPromptDialog_.this.H0();
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSnifferPromptDialog_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    public static class f extends org.androidannotations.api.builder.a<f> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f47444a;

        public f(Context context) {
            super(context, DownloadSnifferPromptDialog_.class);
        }

        public f a(String str) {
            return (f) super.extra(DownloadSnifferPromptDialog_.f47435p, str);
        }

        public f b(String str) {
            return (f) super.extra(DownloadSnifferPromptDialog_.f47434o, str);
        }

        public f c(DownloadTask downloadTask) {
            return (f) super.extra("downloadTask", downloadTask);
        }

        public f d(String str) {
            return (f) super.extra(DownloadSnifferPromptDialog_.f47436q, str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f47444a;
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

        public f(Fragment fragment) {
            super(fragment.getActivity(), DownloadSnifferPromptDialog_.class);
            this.f47444a = fragment;
        }
    }

    public static f O0(Context context) {
        return new f(context);
    }

    public static f P0(Fragment fragment) {
        return new f(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("downloadTask")) {
                this.f47420a = (DownloadTask) extras.getSerializable("downloadTask");
            }
            if (extras.containsKey(f47434o)) {
                this.f47421b = extras.getString(f47434o);
            }
            if (extras.containsKey(f47435p)) {
                this.f47422c = extras.getString(f47435p);
            }
            if (extras.containsKey(f47436q)) {
                this.f47423d = extras.getString(f47436q);
            }
        }
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f47438m.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.join.mgps.dialog.DownloadSnifferPromptDialog, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f47437l);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.dialog_sniffer_promt);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f47428i = aVar.internalFindViewById(R.id.constraintLayout);
        View internalFindViewById = aVar.internalFindViewById(R.id.close);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.outside);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.btnDownload);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.btnSource);
        View internalFindViewById5 = aVar.internalFindViewById(R.id.btnSearch);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new b());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new c());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new d());
        }
        if (internalFindViewById5 != null) {
            internalFindViewById5.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f47438m.put(cls, t3);
    }

    @Override // com.join.mgps.dialog.DownloadSnifferPromptDialog, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f47437l.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f47437l.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f47437l.a(this);
    }
}
