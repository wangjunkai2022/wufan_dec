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
import com.join.mgps.db.tables.EMUApkTable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class PlugInstallDialog_ extends PlugInstallDialog implements g3.a, i3.a, i3.b {

    /* renamed from: m  reason: collision with root package name */
    public static final String f47483m = "table";

    /* renamed from: n  reason: collision with root package name */
    public static final String f47484n = "downloadTask";

    /* renamed from: o  reason: collision with root package name */
    public static final String f47485o = "status";

    /* renamed from: k  reason: collision with root package name */
    private final i3.c f47486k = new i3.c();

    /* renamed from: l  reason: collision with root package name */
    private final Map<Class<?>, Object> f47487l = new HashMap();

    /* loaded from: classes3.dex */
    public static class a extends org.androidannotations.api.builder.a<a> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f47488a;

        public a(Context context) {
            super(context, PlugInstallDialog_.class);
        }

        public a a(DownloadTask downloadTask) {
            return (a) super.extra("downloadTask", downloadTask);
        }

        public a b(int i2) {
            return (a) super.extra("status", i2);
        }

        public a c(EMUApkTable eMUApkTable) {
            return (a) super.extra("table", eMUApkTable);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f47488a;
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

        public a(Fragment fragment) {
            super(fragment.getActivity(), PlugInstallDialog_.class);
            this.f47488a = fragment;
        }
    }

    public static a I0(Context context) {
        return new a(context);
    }

    public static a J0(Fragment fragment) {
        return new a(fragment);
    }

    private void init_(Bundle bundle) {
        injectExtras_();
        i3.c.b(this);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("table")) {
                this.f47479g = (EMUApkTable) extras.getSerializable("table");
            }
            if (extras.containsKey("downloadTask")) {
                this.f47480h = (DownloadTask) extras.getSerializable("downloadTask");
            }
            if (extras.containsKey("status")) {
                this.f47481i = extras.getInt("status");
            }
        }
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f47487l.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.join.mgps.dialog.PlugInstallDialog, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f47486k);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f47487l.put(cls, t3);
    }

    @Override // com.join.mgps.dialog.PlugInstallDialog, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f47486k.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f47486k.a(this);
    }

    @Override // com.join.mgps.dialog.PlugInstallDialog, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f47486k.a(this);
    }
}
