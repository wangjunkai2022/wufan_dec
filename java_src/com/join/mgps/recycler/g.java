package com.join.mgps.recycler;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* compiled from: RecyclerViewUtils.java */
/* loaded from: classes4.dex */
public class g {
    public static int a(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        int headerViewsCount;
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter != null && (adapter instanceof a) && (headerViewsCount = ((a) adapter).getHeaderViewsCount()) > 0) {
            return viewHolder.getAdapterPosition() - headerViewsCount;
        }
        return viewHolder.getAdapterPosition();
    }

    public static int b(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        int headerViewsCount;
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter != null && (adapter instanceof a) && (headerViewsCount = ((a) adapter).getHeaderViewsCount()) > 0) {
            return viewHolder.getLayoutPosition() - headerViewsCount;
        }
        return viewHolder.getLayoutPosition();
    }

    public static void c(RecyclerView recyclerView) {
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter == null || !(adapter instanceof a)) {
            return;
        }
        a aVar = (a) adapter;
        if (aVar.getFooterViewsCount() > 0) {
            aVar.removeFooterView(aVar.c());
        }
    }

    public static void d(RecyclerView recyclerView) {
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter == null || !(adapter instanceof a)) {
            return;
        }
        a aVar = (a) adapter;
        if (aVar.getHeaderViewsCount() > 0) {
            aVar.removeFooterView(aVar.d());
        }
    }

    public static void e(RecyclerView recyclerView, View view) {
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter == null || !(adapter instanceof a)) {
            return;
        }
        a aVar = (a) adapter;
        if (aVar.getFooterViewsCount() == 0) {
            aVar.a(view);
        }
    }

    public static void f(RecyclerView recyclerView, View view) {
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter == null || !(adapter instanceof a)) {
            return;
        }
        a aVar = (a) adapter;
        if (aVar.getHeaderViewsCount() == 0) {
            aVar.b(view);
        }
    }
}
