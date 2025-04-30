package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumSearchItemAllSectionTitleBinding.java */
/* loaded from: classes3.dex */
public final class yz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f27073a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f27074b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f27075c;

    private yz(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f27073a = constraintLayout;
        this.f27074b = imageView;
        this.f27075c = textView;
    }

    @NonNull
    public static yz a(@NonNull View view) {
        int i2 = R.id.imageView50;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView50);
        if (imageView != null) {
            i2 = R.id.title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
            if (textView != null) {
                return new yz((ConstraintLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static yz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_search_item_all_section_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f27073a;
    }
}
