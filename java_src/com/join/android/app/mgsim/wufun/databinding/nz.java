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
/* compiled from: MgForumProfileFavoritesHeaderBinding.java */
/* loaded from: classes3.dex */
public final class nz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23027a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f23028b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23029c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23030d;

    private nz(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f23027a = linearLayout;
        this.f23028b = view;
        this.f23029c = textView;
        this.f23030d = textView2;
    }

    @NonNull
    public static nz a(@NonNull View view) {
        int i2 = R.id.forum_post_divider;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.forum_post_divider);
        if (findChildViewById != null) {
            i2 = R.id.timestampTv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.timestampTv);
            if (textView != null) {
                i2 = R.id.typeTv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.typeTv);
                if (textView2 != null) {
                    return new nz((LinearLayout) view, findChildViewById, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static nz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static nz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_profile_favorites_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23027a;
    }
}
