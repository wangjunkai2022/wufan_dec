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
/* compiled from: MgForumWelcomeItemLiveEntryBinding.java */
/* loaded from: classes3.dex */
public final class s00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24629a;

    private s00(@NonNull LinearLayout linearLayout) {
        this.f24629a = linearLayout;
    }

    @NonNull
    public static s00 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new s00((LinearLayout) view);
    }

    @NonNull
    public static s00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_welcome_item_live_entry, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24629a;
    }
}
