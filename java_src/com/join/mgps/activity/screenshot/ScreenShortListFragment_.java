package com.join.mgps.activity.screenshot;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import g3.a;
import i3.b;
import i3.c;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
import org.androidannotations.api.builder.d;
/* loaded from: classes3.dex */
public final class ScreenShortListFragment_ extends ScreenShortListFragment implements a, i3.a, b {
    private View contentView_;
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    /* loaded from: classes3.dex */
    public static class FragmentBuilder_ extends d<FragmentBuilder_, ScreenShortListFragment> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.androidannotations.api.builder.d
        public ScreenShortListFragment build() {
            ScreenShortListFragment_ screenShortListFragment_ = new ScreenShortListFragment_();
            screenShortListFragment_.setArguments(this.args);
            return screenShortListFragment_;
        }
    }

    public static FragmentBuilder_ builder() {
        return new FragmentBuilder_();
    }

    private void init_(Bundle bundle) {
        c.b(this);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.screenshot.ScreenShortListFragment
    public void loadListData(final int i2) {
        org.androidannotations.api.a.l(new a.c("", 0L, "") { // from class: com.join.mgps.activity.screenshot.ScreenShortListFragment_.4
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    ScreenShortListFragment_.super.loadListData(i2);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
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
            this.contentView_ = layoutInflater.inflate(R.layout.screenshort_list_fragment_layout, viewGroup, false);
        }
        return this.contentView_;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.contentView_ = null;
        this.recycleView = null;
        this.loding_layout = null;
        this.loding_faile = null;
        this.loading_none = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.recycleView = (XRecyclerView) aVar.internalFindViewById(R.id.recycleView);
        this.loding_layout = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.loading_none = (LinearLayout) aVar.internalFindViewById(R.id.loading_none);
        afterview();
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
    @Override // com.join.mgps.activity.screenshot.ScreenShortListFragment
    public void showError() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.screenshot.ScreenShortListFragment_.2
            @Override // java.lang.Runnable
            public void run() {
                ScreenShortListFragment_.super.showError();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.screenshot.ScreenShortListFragment
    public void showNone() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.screenshot.ScreenShortListFragment_.1
            @Override // java.lang.Runnable
            public void run() {
                ScreenShortListFragment_.super.showNone();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.screenshot.ScreenShortListFragment
    public void updateUi(final List<ScreenShortListItemBean> list) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.screenshot.ScreenShortListFragment_.3
            @Override // java.lang.Runnable
            public void run() {
                ScreenShortListFragment_.super.updateUi(list);
            }
        }, 0L);
    }
}
