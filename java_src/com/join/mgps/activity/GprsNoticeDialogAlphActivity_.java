package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.UpdateIntentDataBean;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class GprsNoticeDialogAlphActivity_ extends GprsNoticeDialogAlphActivity implements g3.a, i3.a, i3.b {

    /* renamed from: n  reason: collision with root package name */
    public static final String f32175n = "downloadTask";

    /* renamed from: o  reason: collision with root package name */
    public static final String f32176o = "showContent";

    /* renamed from: p  reason: collision with root package name */
    public static final String f32177p = "apkTable";

    /* renamed from: q  reason: collision with root package name */
    public static final String f32178q = "isUpdate";

    /* renamed from: r  reason: collision with root package name */
    public static final String f32179r = "updateIntentDataBean";

    /* renamed from: l  reason: collision with root package name */
    private final i3.c f32180l = new i3.c();

    /* renamed from: m  reason: collision with root package name */
    private final Map<Class<?>, Object> f32181m = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GprsNoticeDialogAlphActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GprsNoticeDialogAlphActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    public static class c extends org.androidannotations.api.builder.a<c> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32184a;

        public c(Context context) {
            super(context, GprsNoticeDialogAlphActivity_.class);
        }

        public c a(EMUApkTable eMUApkTable) {
            return (c) super.extra(GprsNoticeDialogAlphActivity_.f32177p, eMUApkTable);
        }

        public c b(DownloadTask downloadTask) {
            return (c) super.extra("downloadTask", downloadTask);
        }

        public c c(boolean z3) {
            return (c) super.extra(GprsNoticeDialogAlphActivity_.f32178q, z3);
        }

        public c d(String str) {
            return (c) super.extra(GprsNoticeDialogAlphActivity_.f32176o, str);
        }

        public c e(UpdateIntentDataBean updateIntentDataBean) {
            return (c) super.extra("updateIntentDataBean", updateIntentDataBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32184a;
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

        public c(Fragment fragment) {
            super(fragment.getActivity(), GprsNoticeDialogAlphActivity_.class);
            this.f32184a = fragment;
        }
    }

    public static c G0(Context context) {
        return new c(context);
    }

    public static c H0(Fragment fragment) {
        return new c(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("downloadTask")) {
                this.f32164a = (DownloadTask) extras.getSerializable("downloadTask");
            }
            if (extras.containsKey(f32176o)) {
                this.f32165b = extras.getString(f32176o);
            }
            if (extras.containsKey(f32177p)) {
                this.f32166c = (EMUApkTable) extras.getSerializable(f32177p);
            }
            if (extras.containsKey(f32178q)) {
                this.f32167d = extras.getBoolean(f32178q);
            }
            if (extras.containsKey("updateIntentDataBean")) {
                this.f32168e = (UpdateIntentDataBean) extras.getSerializable("updateIntentDataBean");
            }
        }
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f32181m.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f32180l);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.fc_notice_dialog);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32169f = (Button) aVar.internalFindViewById(R.id.dialog_button_keep);
        this.f32170g = (TextView) aVar.internalFindViewById(R.id.tip_title);
        this.f32171h = (TextView) aVar.internalFindViewById(R.id.dialog_content);
        this.f32172i = (TextView) aVar.internalFindViewById(R.id.textView);
        this.f32173j = (Button) aVar.internalFindViewById(R.id.dialog_button_ok);
        Button button = (Button) aVar.internalFindViewById(R.id.dialog_button_cancle);
        this.f32174k = button;
        if (button != null) {
            button.setOnClickListener(new a());
        }
        Button button2 = this.f32173j;
        if (button2 != null) {
            button2.setOnClickListener(new b());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f32181m.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f32180l.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f32180l.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f32180l.a(this);
    }
}
