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
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class DownloadSpeedOptionDialog_ extends DownloadSpeedOptionDialog implements g3.a, i3.a, i3.b {

    /* renamed from: h  reason: collision with root package name */
    public static final String f47452h = "downloadTask";

    /* renamed from: f  reason: collision with root package name */
    private final i3.c f47453f = new i3.c();

    /* renamed from: g  reason: collision with root package name */
    private final Map<Class<?>, Object> f47454g = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSpeedOptionDialog_.this.close();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSpeedOptionDialog_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSpeedOptionDialog_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadSpeedOptionDialog_.this.downloadAcc();
        }
    }

    /* loaded from: classes3.dex */
    public static class e extends org.androidannotations.api.builder.a<e> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f47459a;

        public e(Context context) {
            super(context, DownloadSpeedOptionDialog_.class);
        }

        public e a(DownloadTask downloadTask) {
            return (e) super.extra("downloadTask", downloadTask);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f47459a;
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

        public e(Fragment fragment) {
            super(fragment.getActivity(), DownloadSpeedOptionDialog_.class);
            this.f47459a = fragment;
        }
    }

    public static e K0(Context context) {
        return new e(context);
    }

    public static e L0(Fragment fragment) {
        return new e(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("downloadTask")) {
            return;
        }
        this.f47446b = (DownloadTask) extras.getSerializable("downloadTask");
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f47454g.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.join.mgps.dialog.DownloadSpeedOptionDialog, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f47453f);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.dialog_download_high_speed_opt);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f47445a = (TextView) aVar.internalFindViewById(R.id.tip);
        this.f47447c = aVar.internalFindViewById(R.id.constraintLayout);
        View internalFindViewById = aVar.internalFindViewById(R.id.close);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.outside);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.download);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.downloadAcc);
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
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f47454g.put(cls, t3);
    }

    @Override // com.join.mgps.dialog.DownloadSpeedOptionDialog, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f47453f.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f47453f.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f47453f.a(this);
    }
}
