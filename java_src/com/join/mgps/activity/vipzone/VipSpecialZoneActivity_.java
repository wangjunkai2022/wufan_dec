package com.join.mgps.activity.vipzone;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
import org.androidannotations.api.builder.f;
/* loaded from: classes3.dex */
public final class VipSpecialZoneActivity_ extends VipSpecialZoneActivity implements g3.a, i3.a, i3.b {
    public static final String BOARD_ID_EXTRA = "boardId";
    private final i3.c onViewChangedNotifier_ = new i3.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    /* loaded from: classes3.dex */
    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, VipSpecialZoneActivity_.class);
        }

        public IntentBuilder_ boardId(int i2) {
            return (IntentBuilder_) super.extra(VipSpecialZoneActivity_.BOARD_ID_EXTRA, i2);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public f startForResult(int i2) {
            Fragment fragment = this.fragmentSupport_;
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
            return new f(this.context);
        }

        public IntentBuilder_(Fragment fragment) {
            super(fragment.getActivity(), VipSpecialZoneActivity_.class);
            this.fragmentSupport_ = fragment;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey(BOARD_ID_EXTRA)) {
            return;
        }
        this.boardId = extras.getInt(BOARD_ID_EXTRA);
    }

    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.vipzone.VipSpecialZoneActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity_.6
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    VipSpecialZoneActivity_.super.getDownloadTaskInfo();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.onViewChangedNotifier_);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.vip_specialzone_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.back = (ImageView) aVar.internalFindViewById(R.id.back);
        this.title = (TextView) aVar.internalFindViewById(R.id.title);
        this.search = (ImageView) aVar.internalFindViewById(R.id.search);
        this.filter = aVar.internalFindViewById(R.id.filter);
        this.filterArr = aVar.internalFindViewById(R.id.filterArr);
        this.downloadView = (CustomerDownloadView) aVar.internalFindViewById(R.id.downloadView);
        this.recyclerView = (XRecyclerView) aVar.internalFindViewById(R.id.recyclerView);
        this.appbar = aVar.internalFindViewById(R.id.appbar);
        this.loding_layout = aVar.internalFindViewById(R.id.loding_layout);
        this.loding_faile = aVar.internalFindViewById(R.id.loding_faile);
        CustomerDownloadView customerDownloadView = this.downloadView;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    VipSpecialZoneActivity_.this.downloadView();
                }
            });
        }
        View view = this.filter;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    VipSpecialZoneActivity_.this.filter();
                }
            });
        }
        ImageView imageView = this.back;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    VipSpecialZoneActivity_.this.back();
                }
            });
        }
        ImageView imageView2 = this.search;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    VipSpecialZoneActivity_.this.search();
                }
            });
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.beans_.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.vipzone.VipSpecialZoneActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                VipSpecialZoneActivity_.super.updateDownloadView();
            }
        }, 0L);
    }

    public static IntentBuilder_ intent(Fragment fragment) {
        return new IntentBuilder_(fragment);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
