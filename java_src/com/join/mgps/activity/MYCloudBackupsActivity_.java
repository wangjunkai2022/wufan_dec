package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CloudBackupsCanUseBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MYCloudBackupsActivity_ extends MYCloudBackupsActivity implements g3.a, i3.a, i3.b {

    /* renamed from: g  reason: collision with root package name */
    private final i3.c f33714g = new i3.c();

    /* renamed from: h  reason: collision with root package name */
    private final Map<Class<?>, Object> f33715h = new HashMap();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYCloudBackupsActivity_.this.I0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYCloudBackupsActivity_.this.back_image();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MYCloudBackupsActivity_.this.G0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f33719a;

        d(List list) {
            this.f33719a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            MYCloudBackupsActivity_.super.H0(this.f33719a);
        }
    }

    /* loaded from: classes3.dex */
    class e extends a.c {
        e(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MYCloudBackupsActivity_.super.F0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class f extends org.androidannotations.api.builder.a<f> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f33722a;

        public f(Context context) {
            super(context, MYCloudBackupsActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f33722a;
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

        public f(Fragment fragment) {
            super(fragment.getActivity(), MYCloudBackupsActivity_.class);
            this.f33722a = fragment;
        }
    }

    public static f L0(Context context) {
        return new f(context);
    }

    public static f M0(Fragment fragment) {
        return new f(fragment);
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYCloudBackupsActivity
    public void F0() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.MYCloudBackupsActivity
    public void H0(List<CloudBackupsCanUseBean> list) {
        org.androidannotations.api.b.e("", new d(list), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f33715h.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f33714g);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.mycloud_backups_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f33703a = (ListView) aVar.internalFindViewById(R.id.backupsList);
        this.f33704b = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f33705c = (ImageView) aVar.internalFindViewById(R.id.share);
        View internalFindViewById = aVar.internalFindViewById(R.id.startBackups);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.back_image);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new b());
        }
        ImageView imageView = this.f33705c;
        if (imageView != null) {
            imageView.setOnClickListener(new c());
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f33715h.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.f33714g.a(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.f33714g.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.f33714g.a(this);
    }
}
