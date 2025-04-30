package com.join.mgps.activity.gamedetail;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.pref.PrefDef_;
import g3.a;
import i3.b;
import i3.c;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
import org.androidannotations.api.builder.d;
/* loaded from: classes3.dex */
public final class GameDetailVideoFragment_ extends GameDetailVideoFragment implements a, i3.a, b {
    private View contentView_;
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    /* loaded from: classes3.dex */
    public static class FragmentBuilder_ extends d<FragmentBuilder_, GameDetailVideoFragment> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.androidannotations.api.builder.d
        public GameDetailVideoFragment build() {
            GameDetailVideoFragment_ gameDetailVideoFragment_ = new GameDetailVideoFragment_();
            gameDetailVideoFragment_.setArguments(this.args);
            return gameDetailVideoFragment_;
        }
    }

    public static FragmentBuilder_ builder() {
        return new FragmentBuilder_();
    }

    private void init_(Bundle bundle) {
        this.prefDef = new PrefDef_(getActivity());
        c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.gamedetail.GameDetailVideoFragment
    public void changeGameFollow(final int i2) {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.14
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    GameDetailVideoFragment_.super.changeGameFollow(i2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.gamedetail.GameDetailVideoFragment
    public void delayCheckplay() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.8
            @Override // java.lang.Runnable
            public void run() {
                GameDetailVideoFragment_.super.delayCheckplay();
            }
        }, 1000L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.contentView_;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        c c4 = c.c(this.onViewChangedNotifier_);
        init_(bundle);
        super.onCreate(bundle);
        c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.contentView_ = onCreateView;
        if (onCreateView == null) {
            this.contentView_ = layoutInflater.inflate(R.layout.gamedetail_video_fragment, viewGroup, false);
        }
        return this.contentView_;
    }

    @Override // com.join.mgps.activity.gamedetail.GameDetailVideoFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.contentView_ = null;
        this.cover = null;
        this.coverback = null;
        this.icon = null;
        this.videoView = null;
        this.sound = null;
        this.gameName = null;
        this.content = null;
        this.statuHVIew = null;
        this.instalButtomButn = null;
        this.progressbarLayout = null;
        this.instalbutnLayout = null;
        this.butn_showdownload = null;
        this.percent = null;
        this.playIcon = null;
        this.butnProgressBar = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.cover = (SimpleDraweeView) aVar.internalFindViewById(R.id.cover);
        this.coverback = (SimpleDraweeView) aVar.internalFindViewById(R.id.coverback);
        this.icon = (SimpleDraweeView) aVar.internalFindViewById(R.id.icon);
        this.videoView = (FulllScreenVideoView) aVar.internalFindViewById(R.id.videoView);
        this.sound = (ImageView) aVar.internalFindViewById(R.id.sound);
        this.gameName = (TextView) aVar.internalFindViewById(R.id.gameName);
        this.content = (TextView) aVar.internalFindViewById(R.id.content);
        this.statuHVIew = aVar.internalFindViewById(R.id.statuHVIew);
        this.instalButtomButn = (TextView) aVar.internalFindViewById(R.id.instalButtomButn);
        this.progressbarLayout = (RelativeLayout) aVar.internalFindViewById(R.id.progressbarLayout);
        this.instalbutnLayout = (RelativeLayout) aVar.internalFindViewById(R.id.instalbutnLayout);
        this.butn_showdownload = (ImageView) aVar.internalFindViewById(R.id.butn_showdownload);
        this.percent = (TextView) aVar.internalFindViewById(R.id.percent);
        this.playIcon = aVar.internalFindViewById(R.id.playIcon);
        this.butnProgressBar = (ProgressBar) aVar.internalFindViewById(R.id.butnProgressBar);
        View internalFindViewById = aVar.internalFindViewById(R.id.coverText);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.gameInfoLayout);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.iv_back);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.progress_layout);
        View internalFindViewById5 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GameDetailVideoFragment_.this.coverText();
                }
            });
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GameDetailVideoFragment_.this.gameInfoLayout();
                }
            });
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GameDetailVideoFragment_.this.iv_back();
                }
            });
        }
        ImageView imageView = this.sound;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GameDetailVideoFragment_.this.sound();
                }
            });
        }
        TextView textView = this.instalButtomButn;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GameDetailVideoFragment_.this.instalButtomButn();
                }
            });
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GameDetailVideoFragment_.this.progress_layout();
                }
            });
        }
        if (internalFindViewById5 != null) {
            internalFindViewById5.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GameDetailVideoFragment_.this.setNetwork();
                }
            });
        }
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.beans_.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.gamedetail.GameDetailVideoFragment
    public void showInstallButn() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.11
            @Override // java.lang.Runnable
            public void run() {
                GameDetailVideoFragment_.super.showInstallButn();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.gamedetail.GameDetailVideoFragment
    public void showProgress() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.10
            @Override // java.lang.Runnable
            public void run() {
                GameDetailVideoFragment_.super.showProgress();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.gamedetail.GameDetailVideoFragment
    public void updateButn() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.12
            @Override // java.lang.Runnable
            public void run() {
                GameDetailVideoFragment_.super.updateButn();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.gamedetail.GameDetailVideoFragment
    public void updatePlayImg() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.9
            @Override // java.lang.Runnable
            public void run() {
                GameDetailVideoFragment_.super.updatePlayImg();
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.gamedetail.GameDetailVideoFragment
    public void updateTitleButn(final ResultMainBean resultMainBean, final int i2) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.13
            @Override // java.lang.Runnable
            public void run() {
                GameDetailVideoFragment_.super.updateTitleButn(resultMainBean, i2);
            }
        }, 0L);
    }
}
