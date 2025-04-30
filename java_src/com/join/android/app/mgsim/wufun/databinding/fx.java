package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumAllActivityItemBinding.java */
/* loaded from: classes3.dex */
public final class fx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20242a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final iy f20243b;

    private fx(@NonNull LinearLayout linearLayout, @NonNull iy iyVar) {
        this.f20242a = linearLayout;
        this.f20243b = iyVar;
    }

    @NonNull
    public static fx a(@NonNull View view) {
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.mg_forum_item);
        if (findChildViewById != null) {
            return new fx((LinearLayout) view, iy.a(findChildViewById));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.mg_forum_item)));
    }

    @NonNull
    public static fx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_all_activity_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20242a;
    }
}
