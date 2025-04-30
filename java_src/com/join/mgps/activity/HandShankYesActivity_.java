package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.HandShankAdView;
import com.join.mgps.db.tables.HandShankTable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class HandShankYesActivity_ extends HandShankYesActivity implements g3.a, i3.a, i3.b {

    /* renamed from: n  reason: collision with root package name */
    private final i3.c f32595n = new i3.c();

    /* renamed from: o  reason: collision with root package name */
    private final Map<Class<?>, Object> f32596o = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankYesActivity_.this.f1();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankYesActivity_.this.c1();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HandShankYesActivity_.this.W0();
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
                HandShankYesActivity_.super.X0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HandShankTable f32601a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, long j4, String str2, HandShankTable handShankTable) {
            super(str, j4, str2);
            this.f32601a = handShankTable;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                HandShankYesActivity_.super.h1(this.f32601a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f32603a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, long j4, String str2, List list) {
            super(str, j4, str2);
            this.f32603a = list;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                HandShankYesActivity_.super.g1(this.f32603a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class g extends org.androidannotations.api.builder.a<g> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f32605a;

        public g(Context context) {
            super(context, HandShankYesActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f32605a;
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

        public g(Fragment fragment) {
            super(fragment.getActivity(), HandShankYesActivity_.class);
            this.f32605a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    public static g m1(Context context) {
        return new g(context);
    }

    public static g n1(Fragment fragment) {
        return new g(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HandShankYesActivity
    public void X0() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HandShankYesActivity
    public void g1(List<HandShankTable> list) {
        org.androidannotations.api.a.l(new f("", 0L, "", list));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f32596o.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.HandShankYesActivity
    public void h1(HandShankTable handShankTable) {
        org.androidannotations.api.a.l(new e("", 0L, "", handShankTable));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f32595n);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.handshank_layout_yes);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f32577c = (ListView) aVar.internalFindViewById(R.id.listview);
        this.f32578d = (FrameLayout) aVar.internalFindViewById(R.id.handshank_tip_lay);
        this.f32579e = (Button) aVar.internalFindViewById(R.id.rightButn);
        this.f32580f = (TextView) aVar.internalFindViewById(R.id.papahandList);
        this.f32586l = (HandShankAdView) aVar.internalFindViewById(R.id.mAdView);
        View internalFindViewById = aVar.internalFindViewById(R.id.backImage);
        Button button = this.f32579e;
        if (button != null) {
            button.setOnClickListener(new a());
        }
        TextView textView = this.f32580f;
        if (textView != null) {
            textView.setOnClickListener(new b());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new c());
        }
        afterView();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f32596o.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f32595n.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f32595n.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f32595n.a(this);
    }
}
