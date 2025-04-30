package com.join.mgps.activity.recomend;

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
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import g3.a;
import i3.b;
import i3.c;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.builder.f;
/* loaded from: classes3.dex */
public final class GamedownloadRecomdActivity_ extends GamedownloadRecomdActivity implements a, i3.a, b {
    public static final String GAME_NAME_EXTRA = "gameName";
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    /* loaded from: classes3.dex */
    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, GamedownloadRecomdActivity_.class);
        }

        public IntentBuilder_ gameName(String str) {
            return (IntentBuilder_) super.extra("gameName", str);
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
            super(fragment.getActivity(), GamedownloadRecomdActivity_.class);
            this.fragmentSupport_ = fragment;
        }
    }

    private void init_(Bundle bundle) {
        this.prefDef = new PrefDef_(this);
        c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("gameName")) {
            return;
        }
        this.gameName = extras.getString("gameName");
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

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        c c4 = c.c(this.onViewChangedNotifier_);
        init_(bundle);
        super.onCreate(bundle);
        c.c(c4);
        setContentView(R.layout.game_download_recomd_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.title = (TextView) aVar.internalFindViewById(R.id.title);
        this.close = (ImageView) aVar.internalFindViewById(R.id.close);
        this.close3 = (ImageView) aVar.internalFindViewById(R.id.close3);
        this.icon = (SimpleDraweeView) aVar.internalFindViewById(R.id.icon);
        this.recyclerView = (RecyclerView) aVar.internalFindViewById(R.id.recyclerView);
        this.speedLayout = aVar.internalFindViewById(R.id.speedLayout);
        this.downNumber = (TextView) aVar.internalFindViewById(R.id.downNumber);
        this.tip = (TextView) aVar.internalFindViewById(R.id.tip);
        this.seetext = (TextView) aVar.internalFindViewById(R.id.seetext);
        this.close2 = aVar.internalFindViewById(R.id.close2);
        this.main = aVar.internalFindViewById(R.id.main);
        this.xx = aVar.internalFindViewById(R.id.xx);
        this.appbar = (AppBarLayout) aVar.internalFindViewById(R.id.appbar);
        View internalFindViewById = aVar.internalFindViewById(R.id.downloadAcc);
        ImageView imageView = this.close;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.GamedownloadRecomdActivity_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GamedownloadRecomdActivity_.this.close();
                }
            });
        }
        View view = this.close2;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.GamedownloadRecomdActivity_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    GamedownloadRecomdActivity_.this.close2();
                }
            });
        }
        ImageView imageView2 = this.close3;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.GamedownloadRecomdActivity_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    GamedownloadRecomdActivity_.this.close3();
                }
            });
        }
        View view2 = this.main;
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.GamedownloadRecomdActivity_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    GamedownloadRecomdActivity_.this.main();
                }
            });
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.GamedownloadRecomdActivity_.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    GamedownloadRecomdActivity_.this.downloadAcc();
                }
            });
        }
        afterview();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.beans_.put(cls, t3);
    }

    @Override // com.join.mgps.activity.recomend.GamedownloadRecomdActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
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
