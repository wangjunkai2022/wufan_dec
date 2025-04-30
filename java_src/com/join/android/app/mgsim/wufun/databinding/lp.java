package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemArenaRoomSortBinding.java */
/* loaded from: classes3.dex */
public final class lp implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22190a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f22191b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22192c;

    private lp(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TextView textView) {
        this.f22190a = linearLayout;
        this.f22191b = view;
        this.f22192c = textView;
    }

    @NonNull
    public static lp a(@NonNull View view) {
        int i2 = R.id.emptyView;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.emptyView);
        if (findChildViewById != null) {
            i2 = R.id.tv_info;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_info);
            if (textView != null) {
                return new lp((LinearLayout) view, findChildViewById, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static lp c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lp d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_arena_room_sort, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22190a;
    }
}
