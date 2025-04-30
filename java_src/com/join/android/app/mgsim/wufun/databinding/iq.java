package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemGameLevelCardBinding.java */
/* loaded from: classes3.dex */
public final class iq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f21236a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f21237b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21238c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21239d;

    private iq(@NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f21236a = constraintLayout;
        this.f21237b = simpleDraweeView;
        this.f21238c = textView;
        this.f21239d = textView2;
    }

    @NonNull
    public static iq a(@NonNull View view) {
        int i2 = R.id.ic;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ic);
        if (simpleDraweeView != null) {
            i2 = R.id.level;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.level);
            if (textView != null) {
                i2 = R.id.name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                if (textView2 != null) {
                    return new iq((ConstraintLayout) view, simpleDraweeView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static iq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static iq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_game_level_card, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f21236a;
    }
}
