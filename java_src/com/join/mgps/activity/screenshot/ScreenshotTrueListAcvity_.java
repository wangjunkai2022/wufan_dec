package com.join.mgps.activity.screenshot;

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
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import g3.a;
import i3.b;
import i3.c;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
import org.androidannotations.api.builder.f;
/* loaded from: classes3.dex */
public final class ScreenshotTrueListAcvity_ extends ScreenshotTrueListAcvity implements a, i3.a, b {
    public static final String FROM_DATA_EXTRA = "fromData";
    public static final String GAME_ID_EXTRA = "gameId";
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    /* loaded from: classes3.dex */
    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, ScreenshotTrueListAcvity_.class);
        }

        public IntentBuilder_ fromData(ScreenshotGamedetialBean screenshotGamedetialBean) {
            return (IntentBuilder_) super.extra(ScreenshotTrueListAcvity_.FROM_DATA_EXTRA, screenshotGamedetialBean);
        }

        public IntentBuilder_ gameId(String str) {
            return (IntentBuilder_) super.extra("gameId", str);
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
            super(fragment.getActivity(), ScreenshotTrueListAcvity_.class);
            this.fragmentSupport_ = fragment;
        }
    }

    private void init_(Bundle bundle) {
        c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey(FROM_DATA_EXTRA)) {
                this.fromData = (ScreenshotGamedetialBean) extras.getSerializable(FROM_DATA_EXTRA);
            }
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
        }
    }

    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity
    public void getTabdata() {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity_.4
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    ScreenshotTrueListAcvity_.super.getTabdata();
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

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        c c4 = c.c(this.onViewChangedNotifier_);
        init_(bundle);
        super.onCreate(bundle);
        c.c(c4);
        setContentView(R.layout.screenshort_activity_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.tableLayout = (SlidingTabLayoutScreenShort) aVar.internalFindViewById(R.id.tableLayout);
        this.back = (ImageView) aVar.internalFindViewById(R.id.back);
        this.upload = (TextView) aVar.internalFindViewById(R.id.upload);
        this.viewpager = (ViewPager) aVar.internalFindViewById(R.id.viewpager);
        TextView textView = this.upload;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ScreenshotTrueListAcvity_.this.upload();
                }
            });
        }
        ImageView imageView = this.back;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ScreenshotTrueListAcvity_.this.back();
                }
            });
        }
        afterView();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.beans_.put(cls, t3);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity
    public void updateTable(final List<ScreenshortTabBean> list) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity_.3
            @Override // java.lang.Runnable
            public void run() {
                ScreenshotTrueListAcvity_.super.updateTable(list);
            }
        }, 0L);
    }

    public static IntentBuilder_ intent(Fragment fragment) {
        return new IntentBuilder_(fragment);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
