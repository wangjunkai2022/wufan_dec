package com.join.mgps.dialog;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class DownloadHighSpeedingDialog_ extends DownloadHighSpeedingDialog implements g3.a, i3.a, i3.b {

    /* renamed from: r  reason: collision with root package name */
    public static final String f47366r = "downloadTask";

    /* renamed from: s  reason: collision with root package name */
    public static final String f47367s = "gameId";

    /* renamed from: n  reason: collision with root package name */
    private final i3.c f47368n = new i3.c();

    /* renamed from: o  reason: collision with root package name */
    private final Map<Class<?>, Object> f47369o = new HashMap();

    /* renamed from: p  reason: collision with root package name */
    private final IntentFilter f47370p = new IntentFilter();

    /* renamed from: q  reason: collision with root package name */
    private final BroadcastReceiver f47371q = new a();

    /* loaded from: classes3.dex */
    class a extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f47372b = "adAction";

        /* renamed from: c  reason: collision with root package name */
        public static final String f47373c = "gameId";

        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            DownloadHighSpeedingDialog_.this.I0(extras.getInt(f47372b), extras.getString("gameId"));
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadHighSpeedingDialog_.this.close();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadHighSpeedingDialog_.this.J0();
        }
    }

    /* loaded from: classes3.dex */
    public static class d extends org.androidannotations.api.builder.a<d> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f47377a;

        public d(Context context) {
            super(context, DownloadHighSpeedingDialog_.class);
        }

        public d a(DownloadTask downloadTask) {
            return (d) super.extra("downloadTask", downloadTask);
        }

        public d b(String str) {
            return (d) super.extra("gameId", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f47377a;
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

        public d(Fragment fragment) {
            super(fragment.getActivity(), DownloadHighSpeedingDialog_.class);
            this.f47377a = fragment;
        }
    }

    public static d M0(Context context) {
        return new d(context);
    }

    public static d N0(Fragment fragment) {
        return new d(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
        this.f47370p.addAction("com.join.android.app.mgsim.wufun.ad.result");
        registerReceiver(this.f47371q, this.f47370p);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("downloadTask")) {
                this.f47350c = (DownloadTask) extras.getSerializable("downloadTask");
            }
            if (extras.containsKey("gameId")) {
                this.f47351d = extras.getString("gameId");
            }
        }
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f47369o.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.join.mgps.dialog.DownloadHighSpeedingDialog, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f47368n);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.dialog_download_high_speeding);
    }

    @Override // com.join.mgps.dialog.DownloadHighSpeedingDialog, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.f47371q);
        super.onDestroy();
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f47348a = (TextView) aVar.internalFindViewById(R.id.speed);
        this.f47349b = (ProgressBar) aVar.internalFindViewById(R.id.progressBar);
        this.f47358k = aVar.internalFindViewById(R.id.constraintLayout);
        View internalFindViewById = aVar.internalFindViewById(R.id.close);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.outside);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f47369o.put(cls, t3);
    }

    @Override // com.join.mgps.dialog.DownloadHighSpeedingDialog, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f47368n.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f47368n.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f47368n.a(this);
    }
}
