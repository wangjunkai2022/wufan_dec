package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.dto.SimulatorFastEntryBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class SimulatorFastEntryActivity_ extends v2 implements g3.a, i3.a, i3.b {

    /* renamed from: k  reason: collision with root package name */
    private final i3.c f35732k = new i3.c();

    /* renamed from: l  reason: collision with root package name */
    private final Map<Class<?>, Object> f35733l = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorFastEntryActivity_.this.D0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorFastEntryActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorFastEntryActivity_.this.setNetwork();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimulatorFastEntryActivity_.this.relodingimag();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SimulatorFastEntryBean f35738a;

        e(SimulatorFastEntryBean simulatorFastEntryBean) {
            this.f35738a = simulatorFastEntryBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorFastEntryActivity_.super.E0(this.f35738a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorFastEntryActivity_.super.showLoding();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorFastEntryActivity_.super.showLodingFailed();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SimulatorFastEntryActivity_.super.F0();
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {
        i(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SimulatorFastEntryActivity_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class j extends org.androidannotations.api.builder.a<j> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f35744a;

        public j(Context context) {
            super(context, SimulatorFastEntryActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f35744a;
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

        public j(Fragment fragment) {
            super(fragment.getActivity(), SimulatorFastEntryActivity_.class);
            this.f35744a = fragment;
        }
    }

    public static j L0(Context context) {
        return new j(context);
    }

    public static j M0(Fragment fragment) {
        return new j(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.v2
    public void E0(SimulatorFastEntryBean simulatorFastEntryBean) {
        org.androidannotations.api.b.e("", new e(simulatorFastEntryBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.v2
    public void F0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f35733l.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.v2
    public void getData() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f35732k);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.activity_simulator_fast_entry);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f38422a = (RelativeLayout) aVar.internalFindViewById(R.id.headview);
        this.f38423b = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f38424c = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f38425d = (ScrollTextViewLayout) aVar.internalFindViewById(R.id.scroll_text_layout);
        this.f38426e = (TextView) aVar.internalFindViewById(R.id.tvSearch);
        this.f38427f = (ImageView) aVar.internalFindViewById(R.id.ivSearchIcon);
        this.f38428g = (RecyclerView) aVar.internalFindViewById(R.id.recyclerview);
        this.f38429h = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f38430i = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f38431j = aVar.internalFindViewById(R.id.statubar);
        View internalFindViewById = aVar.internalFindViewById(R.id.flSearch);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.relodingimag);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        ImageView imageView = this.f38423b;
        if (imageView != null) {
            imageView.setOnClickListener(new b());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new c());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new d());
        }
        afterviews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f35733l.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f35732k.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.v2
    public void showLoding() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.v2
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f35732k.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f35732k.a(this);
    }
}
