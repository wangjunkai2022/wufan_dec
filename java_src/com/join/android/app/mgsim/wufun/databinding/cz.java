package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: MgForumPostActivityItemPostMessageNewBinding.java */
/* loaded from: classes3.dex */
public final class cz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19123a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f19124b;

    private cz(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.f19123a = linearLayout;
        this.f19124b = linearLayout2;
    }

    @NonNull
    public static cz a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        LinearLayout linearLayout = (LinearLayout) view;
        return new cz(linearLayout, linearLayout);
    }

    @NonNull
    public static cz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity_item_post_message_new, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19123a;
    }
}
