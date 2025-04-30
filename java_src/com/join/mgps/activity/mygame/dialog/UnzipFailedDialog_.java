package com.join.mgps.activity.mygame.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import g3.a;
import i3.b;
import i3.c;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.builder.f;
/* loaded from: classes3.dex */
public final class UnzipFailedDialog_ extends UnzipFailedDialog implements a, i3.a, b {
    public static final String FROM_EXTRA = "from";
    public static final String GAME_ID_EXTRA = "gameId";
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    /* loaded from: classes3.dex */
    public static class IntentBuilder_ extends org.androidannotations.api.builder.a<IntentBuilder_> {
        private Fragment fragmentSupport_;

        public IntentBuilder_(Context context) {
            super(context, UnzipFailedDialog_.class);
        }

        public IntentBuilder_ from(int i2) {
            return (IntentBuilder_) super.extra("from", i2);
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
            super(fragment.getActivity(), UnzipFailedDialog_.class);
            this.fragmentSupport_ = fragment;
        }
    }

    private void init_(Bundle bundle) {
        this.prefDef_ = new PrefDef_(this);
        c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("from")) {
                this.from = extras.getInt("from");
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

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        c c4 = c.c(this.onViewChangedNotifier_);
        init_(bundle);
        super.onCreate(bundle);
        c.c(c4);
        setContentView(R.layout.wufungame_unzipfailed_dialog);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.moreSelecter = (LinearLayout) aVar.internalFindViewById(R.id.moreSelecter);
        this.message = (TextView) aVar.internalFindViewById(R.id.message);
        this.gameName = (TextView) aVar.internalFindViewById(R.id.gameName);
        this.startButn = (TextView) aVar.internalFindViewById(R.id.startButn);
        this.goH5 = (TextView) aVar.internalFindViewById(R.id.goH5);
        this.icon = (SimpleDraweeView) aVar.internalFindViewById(R.id.icon);
        this.llReUnzip = (LinearLayout) aVar.internalFindViewById(R.id.llReUnzip);
        View internalFindViewById = aVar.internalFindViewById(R.id.tvReUnzip);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.tvReDownload);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.close);
        TextView textView = this.startButn;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    UnzipFailedDialog_.this.startButn();
                }
            });
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    UnzipFailedDialog_.this.tvReUnzip();
                }
            });
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    UnzipFailedDialog_.this.tvReDownload();
                }
            });
        }
        TextView textView2 = this.goH5;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    UnzipFailedDialog_.this.goH5();
                }
            });
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    UnzipFailedDialog_.this.close();
                }
            });
        }
        afterviews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.beans_.put(cls, t3);
    }

    @Override // android.app.Activity
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

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
