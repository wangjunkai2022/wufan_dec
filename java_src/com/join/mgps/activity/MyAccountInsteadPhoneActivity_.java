package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountBean;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class MyAccountInsteadPhoneActivity_ extends MyAccountInsteadPhoneActivity implements g3.a, i3.a, i3.b {

    /* renamed from: j  reason: collision with root package name */
    public static final String f34048j = "accountBean";

    /* renamed from: h  reason: collision with root package name */
    private final i3.c f34049h = new i3.c();

    /* renamed from: i  reason: collision with root package name */
    private final Map<Class<?>, Object> f34050i = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountInsteadPhoneActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyAccountInsteadPhoneActivity_.this.E0();
        }
    }

    /* loaded from: classes3.dex */
    class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            MyAccountInsteadPhoneActivity_.this.F0();
        }
    }

    /* loaded from: classes3.dex */
    public static class d extends org.androidannotations.api.builder.a<d> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f34054a;

        public d(Context context) {
            super(context, MyAccountInsteadPhoneActivity_.class);
        }

        public d a(AccountBean accountBean) {
            return (d) super.extra("accountBean", accountBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f34054a;
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
            super(fragment.getActivity(), MyAccountInsteadPhoneActivity_.class);
            this.f34054a = fragment;
        }
    }

    public static d H0(Context context) {
        return new d(context);
    }

    public static d I0(Fragment fragment) {
        return new d(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("accountBean")) {
            return;
        }
        this.f34045e = (AccountBean) extras.getSerializable("accountBean");
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f34050i.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f34049h);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.instead_phone_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34041a = (TextView) aVar.internalFindViewById(R.id.titleText);
        this.f34042b = (TextView) aVar.internalFindViewById(R.id.myAccountTv);
        this.f34043c = (EditText) aVar.internalFindViewById(R.id.inputPhone);
        this.f34044d = (Button) aVar.internalFindViewById(R.id.insteadButn);
        View internalFindViewById = aVar.internalFindViewById(R.id.backImage);
        Button button = this.f34044d;
        if (button != null) {
            button.setOnClickListener(new a());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        TextView textView = (TextView) aVar.internalFindViewById(R.id.inputPhone);
        if (textView != null) {
            textView.addTextChangedListener(new c());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f34050i.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f34049h.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f34049h.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f34049h.a(this);
    }
}
