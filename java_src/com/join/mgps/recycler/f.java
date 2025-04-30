package com.join.mgps.recycler;

import android.app.Activity;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.join.mgps.recycler.LoadingFooter;
/* compiled from: RecyclerViewStateUtils.java */
/* loaded from: classes4.dex */
public class f {
    public static LoadingFooter.State a(RecyclerView recyclerView) {
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter != null && (adapter instanceof a)) {
            a aVar = (a) adapter;
            if (aVar.getFooterViewsCount() > 0) {
                return ((LoadingFooter) aVar.c()).getState();
            }
        }
        return LoadingFooter.State.Normal;
    }

    public static void b(Activity activity, RecyclerView recyclerView, int i2, LoadingFooter.State state, View.OnClickListener onClickListener) {
        RecyclerView.Adapter adapter;
        if (activity == null || activity.isFinishing() || (adapter = recyclerView.getAdapter()) == null || !(adapter instanceof a)) {
            return;
        }
        a aVar = (a) adapter;
        if (aVar.e().getItemCount() < i2) {
            return;
        }
        if (aVar.getFooterViewsCount() > 0) {
            LoadingFooter loadingFooter = (LoadingFooter) aVar.c();
            loadingFooter.setState(state);
            if (state == LoadingFooter.State.NetWorkError) {
                loadingFooter.setOnClickListener(onClickListener);
            }
            recyclerView.scrollToPosition(aVar.getItemCount() - 1);
            return;
        }
        LoadingFooter loadingFooter2 = new LoadingFooter(activity);
        loadingFooter2.setState(state);
        if (state == LoadingFooter.State.NetWorkError) {
            loadingFooter2.setOnClickListener(onClickListener);
        }
        aVar.a(loadingFooter2);
        recyclerView.scrollToPosition(aVar.getItemCount() - 1);
    }

    public static void c(RecyclerView recyclerView, LoadingFooter.State state) {
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter == null || !(adapter instanceof a)) {
            return;
        }
        a aVar = (a) adapter;
        if (aVar.getFooterViewsCount() > 0) {
            ((LoadingFooter) aVar.c()).setState(state);
        }
    }
}
