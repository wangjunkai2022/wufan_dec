package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.HorizontalRecyclerView;
/* compiled from: PapamainItemGameNewsBinding.java */
/* loaded from: classes3.dex */
public final class k70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f21729a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f21730b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final HorizontalRecyclerView f21731c;

    private k70(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull HorizontalRecyclerView horizontalRecyclerView) {
        this.f21729a = frameLayout;
        this.f21730b = frameLayout2;
        this.f21731c = horizontalRecyclerView;
    }

    @NonNull
    public static k70 a(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
        if (horizontalRecyclerView != null) {
            return new k70(frameLayout, frameLayout, horizontalRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.recyclerView)));
    }

    @NonNull
    public static k70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_item_game_news, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f21729a;
    }
}
