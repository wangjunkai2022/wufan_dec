package com.join.mgps.activity.recomend;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import g3.a;
import i3.b;
import i3.c;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
import org.androidannotations.api.builder.f;
/* loaded from: classes3.dex */
public final class RecomendActivity_ extends RecomendActivity implements a, i3.a, b {
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    /* loaded from: classes3.dex */
    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, RecomendActivity_.class);
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
            super(fragment.getActivity(), RecomendActivity_.class);
            this.fragmentSupport_ = fragment;
        }
    }

    private void init_(Bundle bundle) {
        this.prefDef = new PrefDef_(this);
        c.b(this);
    }

    public static IntentBuilder_ intent(Context context) {
        return new IntentBuilder_(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.recomend.RecomendActivity
    public void delayRequest() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.recomend.RecomendActivity_.5
            @Override // java.lang.Runnable
            public void run() {
                RecomendActivity_.super.delayRequest();
            }
        }, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.recomend.RecomendActivity
    public void downv2(final boolean z3) {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.recomend.RecomendActivity_.8
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    RecomendActivity_.super.downv2(z3);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.recomend.RecomendActivity
    public void finishActivit() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.recomend.RecomendActivity_.4
            @Override // java.lang.Runnable
            public void run() {
                RecomendActivity_.super.finishActivit();
            }
        }, 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.recomend.RecomendActivity
    public void getData() {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.recomend.RecomendActivity_.7
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    RecomendActivity_.super.getData();
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
        c c4 = c.c(this.onViewChangedNotifier_);
        init_(bundle);
        super.onCreate(bundle);
        c.c(c4);
        setContentView(R.layout.recoment_activity_layout);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.recycleView = (RecyclerView) aVar.internalFindViewById(R.id.recycleView);
        this.enterGame = (TextView) aVar.internalFindViewById(R.id.enterGame);
        this.title = (TextView) aVar.internalFindViewById(R.id.title);
        this.protocol = aVar.internalFindViewById(R.id.protocol);
        this.protocolCheck = aVar.internalFindViewById(R.id.protocolCheck);
        this.userProtocolTxt = (TextView) aVar.internalFindViewById(R.id.userProtocolTxt);
        this.lodingImg = (ImageView) aVar.internalFindViewById(R.id.lodingImg);
        View internalFindViewById = aVar.internalFindViewById(R.id.protocolCheckPlaceholder);
        TextView textView = this.enterGame;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.RecomendActivity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    RecomendActivity_.this.enterGame();
                }
            });
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.RecomendActivity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    RecomendActivity_.this.protocolCheckPlaceholder();
                }
            });
        }
        afterView();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.recomend.RecomendActivity
    public void showToast(final String str) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.recomend.RecomendActivity_.3
            @Override // java.lang.Runnable
            public void run() {
                RecomendActivity_.super.showToast(str);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.recomend.RecomendActivity
    public void updateUI(final List<RecomentBean> list, final UserProtocolBean userProtocolBean) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.recomend.RecomendActivity_.6
            @Override // java.lang.Runnable
            public void run() {
                RecomendActivity_.super.updateUI(list, userProtocolBean);
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
