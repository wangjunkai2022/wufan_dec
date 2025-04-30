package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LayoutArenaRoomSortBinding.java */
/* loaded from: classes3.dex */
public final class dt implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19495a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ListView f19496b;

    private dt(@NonNull LinearLayout linearLayout, @NonNull ListView listView) {
        this.f19495a = linearLayout;
        this.f19496b = listView;
    }

    @NonNull
    public static dt a(@NonNull View view) {
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.list);
        if (listView != null) {
            return new dt((LinearLayout) view, listView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.list)));
    }

    @NonNull
    public static dt c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static dt d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_arena_room_sort, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19495a;
    }
}
