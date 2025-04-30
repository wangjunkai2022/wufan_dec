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
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class DownloadHighSpeedDialog_ extends DownloadHighSpeedDialog implements g3.a, i3.a, i3.b {

    /* renamed from: g  reason: collision with root package name */
    public static final String f47342g = "gameId";

    /* renamed from: e  reason: collision with root package name */
    private final i3.c f47343e = new i3.c();

    /* renamed from: f  reason: collision with root package name */
    private final Map<Class<?>, Object> f47344f = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadHighSpeedDialog_.this.close();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadHighSpeedDialog_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    public static class c extends org.androidannotations.api.builder.a<c> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f47347a;

        public c(Context context) {
            super(context, DownloadHighSpeedDialog_.class);
        }

        public c a(String str) {
            return (c) super.extra("gameId", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f47347a;
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
            super(fragment.getActivity(), DownloadHighSpeedDialog_.class);
            this.f47347a = fragment;
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
        if (extras == null || !extras.containsKey("gameId")) {
            return;
        }
        this.f47341d = extras.getString("gameId");
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f47344f.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.join.mgps.dialog.DownloadHighSpeedDialog, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f47343e);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.dialog_download_high_speed);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f47338a = aVar.internalFindViewById(R.id.container);
        this.f47339b = aVar.internalFindViewById(R.id.content);
        this.f47340c = (TextView) aVar.internalFindViewById(R.id.tip);
        View internalFindViewById = aVar.internalFindViewById(R.id.close);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.confirm);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f47344f.put(cls, t3);
    }

    @Override // com.join.mgps.dialog.DownloadHighSpeedDialog, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f47343e.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f47343e.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f47343e.a(this);
    }
}
