package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class FightWifiInputDialogActivity_ extends FightWifiInputDialogActivity implements g3.a, i3.a, i3.b {

    /* renamed from: e  reason: collision with root package name */
    private final i3.c f29772e = new i3.c();

    /* renamed from: f  reason: collision with root package name */
    private final Map<Class<?>, Object> f29773f = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FightWifiInputDialogActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FightWifiInputDialogActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    public static class c extends org.androidannotations.api.builder.a<c> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f29776a;

        public c(Context context) {
            super(context, FightWifiInputDialogActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f29776a;
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
            super(fragment.getActivity(), FightWifiInputDialogActivity_.class);
            this.f29776a = fragment;
        }
    }

    public static c G0(Context context) {
        return new c(context);
    }

    public static c H0(Fragment fragment) {
        return new c(fragment);
    }

    private void init_(Bundle bundle) {
        this.f29771c = new PrefDef_(this);
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f29773f.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f29772e);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.dialog_fight_wifi_ip);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f29769a = (EditText) aVar.internalFindViewById(R.id.txtIP);
        this.f29770b = (Button) aVar.internalFindViewById(R.id.join);
        View internalFindViewById = aVar.internalFindViewById(R.id.iv_close);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        Button button = this.f29770b;
        if (button != null) {
            button.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f29773f.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f29772e.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f29772e.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f29772e.a(this);
    }
}
