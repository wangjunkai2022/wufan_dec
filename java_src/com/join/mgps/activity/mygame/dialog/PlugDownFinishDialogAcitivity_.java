package com.join.mgps.activity.mygame.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import g3.a;
import i3.b;
import i3.c;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.builder.f;
/* loaded from: classes3.dex */
public final class PlugDownFinishDialogAcitivity_ extends PlugDownFinishDialogAcitivity implements a, i3.a, b {
    public static final String PLUG_NUMBER_EXTRA = "plugNumber";
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    /* loaded from: classes3.dex */
    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, PlugDownFinishDialogAcitivity_.class);
        }

        public IntentBuilder_ plugNumber(String str) {
            return (IntentBuilder_) super.extra("plugNumber", str);
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
            super(fragment.getActivity(), PlugDownFinishDialogAcitivity_.class);
            this.fragmentSupport_ = fragment;
        }
    }

    private void init_(Bundle bundle) {
        c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("plugNumber")) {
            return;
        }
        this.plugNumber = extras.getString("plugNumber");
    }

    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.mygame.dialog.PlugDownFinishDialogAcitivity
    public void notifyUi() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.mygame.dialog.PlugDownFinishDialogAcitivity_.3
            @Override // java.lang.Runnable
            public void run() {
                PlugDownFinishDialogAcitivity_.super.notifyUi();
            }
        }, 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        c c4 = c.c(this.onViewChangedNotifier_);
        init_(bundle);
        super.onCreate(bundle);
        c.c(c4);
        setContentView(R.layout.plugdown_finish_dialog_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.title = (TextView) aVar.internalFindViewById(R.id.title);
        this.progressBarZip = (ProgressBar) aVar.internalFindViewById(R.id.progressBarZip);
        this.progressBar = (ProgressBar) aVar.internalFindViewById(R.id.progressBar);
        this.appSize = (TextView) aVar.internalFindViewById(R.id.appSize);
        this.lodingInfo = (TextView) aVar.internalFindViewById(R.id.lodingInfo);
        this.cancle = (ImageView) aVar.internalFindViewById(R.id.cancle);
        this.ok = (TextView) aVar.internalFindViewById(R.id.ok);
        this.info = (TextView) aVar.internalFindViewById(R.id.info);
        this.icon = (SimpleDraweeView) aVar.internalFindViewById(R.id.icon);
        ImageView imageView = this.cancle;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.PlugDownFinishDialogAcitivity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PlugDownFinishDialogAcitivity_.this.cancle();
                }
            });
        }
        TextView textView = this.ok;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.PlugDownFinishDialogAcitivity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PlugDownFinishDialogAcitivity_.this.ok();
                }
            });
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.beans_.put(cls, t3);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    public static IntentBuilder_ intent(Fragment fragment) {
        return new IntentBuilder_(fragment);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
