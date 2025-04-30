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
/* compiled from: MgForumWelcomeItemHotForumItemBinding.java */
/* loaded from: classes3.dex */
public final class r00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24140a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final iy f24141b;

    private r00(@NonNull LinearLayout linearLayout, @NonNull iy iyVar) {
        this.f24140a = linearLayout;
        this.f24141b = iyVar;
    }

    @NonNull
    public static r00 a(@NonNull View view) {
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.mg_forum_item);
        if (findChildViewById != null) {
            return new r00((LinearLayout) view, iy.a(findChildViewById));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.mg_forum_item)));
    }

    @NonNull
    public static r00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_welcome_item_hot_forum_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24140a;
    }
}
