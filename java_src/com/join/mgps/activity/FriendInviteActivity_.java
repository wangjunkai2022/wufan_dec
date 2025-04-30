package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.FriendInviteBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class FriendInviteActivity_ extends FriendInviteActivity implements g3.a, i3.a, i3.b {

    /* renamed from: x0  reason: collision with root package name */
    public static final String f30910x0 = "inviteNotification";

    /* renamed from: v0  reason: collision with root package name */
    private final i3.c f30911v0 = new i3.c();

    /* renamed from: w0  reason: collision with root package name */
    private final Map<Class<?>, Object> f30912w0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FriendInviteActivity_.this.z1();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FriendInviteActivity_.this.y1();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FriendInviteActivity_.this.A1();
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                FriendInviteActivity_.super.B1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class e extends org.androidannotations.api.builder.a<e> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f30917a;

        public e(Context context) {
            super(context, FriendInviteActivity_.class);
        }

        public e a(FriendInviteBean friendInviteBean) {
            return (e) super.extra(FriendInviteActivity_.f30910x0, friendInviteBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f30917a;
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
            super(fragment.getActivity(), FriendInviteActivity_.class);
            this.f30917a = fragment;
        }
    }

    public static e E1(Context context) {
        return new e(context);
    }

    public static e F1(Fragment fragment) {
        return new e(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(f30910x0)) {
            return;
        }
        this.f30906s0 = (FriendInviteBean) extras.getSerializable(f30910x0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.FriendInviteActivity
    public void B1() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f30912w0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f30911v0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_friend_invite);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f30902o0 = (SimpleDraweeView) aVar.internalFindViewById(R.id.avatar);
        this.f30903p0 = (TextView) aVar.internalFindViewById(R.id.name);
        this.f30904q0 = (TextView) aVar.internalFindViewById(R.id.decline);
        this.f30905r0 = (TextView) aVar.internalFindViewById(R.id.gameName);
        View internalFindViewById = aVar.internalFindViewById(R.id.accept);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.iv_close);
        TextView textView = this.f30904q0;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
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
        this.f30912w0.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f30911v0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f30911v0.a(this);
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f30911v0.a(this);
    }
}
