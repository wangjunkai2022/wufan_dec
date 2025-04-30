package com.join.kotlin.ui.introduction;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameBbsPostListBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class MoreIntroductionFragment_ extends MoreIntroductionFragment implements g3.a, i3.a, i3.b {
    private View contentView_;
    private final i3.c onViewChangedNotifier_ = new i3.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    /* loaded from: classes3.dex */
    public static class FragmentBuilder_ extends org.androidannotations.api.builder.d<FragmentBuilder_, MoreIntroductionFragment> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.androidannotations.api.builder.d
        public MoreIntroductionFragment build() {
            MoreIntroductionFragment_ moreIntroductionFragment_ = new MoreIntroductionFragment_();
            moreIntroductionFragment_.setArguments(this.args);
            return moreIntroductionFragment_;
        }
    }

    public static FragmentBuilder_ builder() {
        return new FragmentBuilder_();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.MoreIntroductionFragment
    public void hideLoading() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.MoreIntroductionFragment_.6
            @Override // java.lang.Runnable
            public void run() {
                MoreIntroductionFragment_.super.hideLoading();
            }
        }, 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.contentView_;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.MoreIntroductionFragment
    public void loadData(final int i2) {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.MoreIntroductionFragment_.8
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    MoreIntroductionFragment_.super.loadData(i2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.onViewChangedNotifier_);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.contentView_ = onCreateView;
        if (onCreateView == null) {
            this.contentView_ = layoutInflater.inflate(R.layout.fragment_more_introduction, viewGroup, false);
        }
        return this.contentView_;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.contentView_ = null;
        this.rv_list_data = null;
        this.loding_layout = null;
        this.loding_faile = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.rv_list_data = (RecyclerView) aVar.internalFindViewById(R.id.rv_list_data);
        this.loding_layout = aVar.internalFindViewById(R.id.loding_layout);
        this.loding_faile = aVar.internalFindViewById(R.id.loding_faile);
        View internalFindViewById = aVar.internalFindViewById(R.id.setNetwork);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.iv_close);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.MoreIntroductionFragment_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MoreIntroductionFragment_.this.setNetwork();
                }
            });
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.MoreIntroductionFragment_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MoreIntroductionFragment_.this.relodingimag();
                }
            });
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.MoreIntroductionFragment_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MoreIntroductionFragment_.this.onClockClick();
                }
            });
        }
        aftervidew();
    }

    @Override // com.join.kotlin.ui.introduction.MoreIntroductionFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.beans_.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.MoreIntroductionFragment
    public void showLoadFailed(final String str) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.MoreIntroductionFragment_.5
            @Override // java.lang.Runnable
            public void run() {
                MoreIntroductionFragment_.super.showLoadFailed(str);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.MoreIntroductionFragment
    public void showLoadingView() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.MoreIntroductionFragment_.7
            @Override // java.lang.Runnable
            public void run() {
                MoreIntroductionFragment_.super.showLoadingView();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.MoreIntroductionFragment
    public void showMain(final GameBbsPostListBean gameBbsPostListBean, final boolean z3) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.MoreIntroductionFragment_.4
            @Override // java.lang.Runnable
            public void run() {
                MoreIntroductionFragment_.super.showMain(gameBbsPostListBean, z3);
            }
        }, 0L);
    }
}
