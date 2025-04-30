package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CloudBackupsCanUseBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class CloudRecodingActivity_ extends CloudRecodingActivity implements g3.a, i3.a, i3.b {

    /* renamed from: u  reason: collision with root package name */
    public static final String f28752u = "isrecoder";

    /* renamed from: v  reason: collision with root package name */
    public static final String f28753v = "bean";

    /* renamed from: s  reason: collision with root package name */
    private final i3.c f28754s = new i3.c();

    /* renamed from: t  reason: collision with root package name */
    private final Map<Class<?>, Object> f28755t = new HashMap();

    /* loaded from: classes3.dex */
    class a extends a.c {
        a(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudRecodingActivity_.super.F0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class b extends org.androidannotations.api.builder.a<b> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f28757a;

        public b(Context context) {
            super(context, CloudRecodingActivity_.class);
        }

        public b a(CloudBackupsCanUseBean cloudBackupsCanUseBean) {
            return (b) super.extra("bean", cloudBackupsCanUseBean);
        }

        public b b(boolean z3) {
            return (b) super.extra(CloudRecodingActivity_.f28752u, z3);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f28757a;
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

        public b(Fragment fragment) {
            super(fragment.getActivity(), CloudRecodingActivity_.class);
            this.f28757a = fragment;
        }
    }

    public static b H0(Context context) {
        return new b(context);
    }

    public static b I0(Fragment fragment) {
        return new b(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(f28752u)) {
                this.f28734a = extras.getBoolean(f28752u);
            }
            if (extras.containsKey("bean")) {
                this.f28751r = (CloudBackupsCanUseBean) extras.getSerializable("bean");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudRecodingActivity
    public void F0() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f28755t.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f28754s);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.cloud_recoding_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f28735b = (TextView) aVar.internalFindViewById(R.id.recoverinfo);
        this.f28736c = (LinearLayout) aVar.internalFindViewById(R.id.gameHistory);
        this.f28737d = (LinearLayout) aVar.internalFindViewById(R.id.gameList);
        this.f28738e = (LinearLayout) aVar.internalFindViewById(R.id.gamekey);
        this.f28739f = (TextView) aVar.internalFindViewById(R.id.gameHistoryinfo);
        this.f28740g = (TextView) aVar.internalFindViewById(R.id.gameListInfo);
        this.f28741h = (TextView) aVar.internalFindViewById(R.id.gamekeyinfo);
        this.f28742i = (ImageView) aVar.internalFindViewById(R.id.gameHistoryFinishImage);
        this.f28743j = (ImageView) aVar.internalFindViewById(R.id.gameListFinish);
        this.f28744k = (ImageView) aVar.internalFindViewById(R.id.gamekeyFinish);
        this.f28745l = (ProgressBar) aVar.internalFindViewById(R.id.gameHistoryLoding);
        this.f28746m = (ProgressBar) aVar.internalFindViewById(R.id.gameListloding);
        this.f28747n = (ProgressBar) aVar.internalFindViewById(R.id.gamekeyLoding);
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f28755t.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f28754s.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f28754s.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f28754s.a(this);
    }
}
