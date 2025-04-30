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
/* compiled from: ItemGameMainNewViewBinding.java */
/* loaded from: classes3.dex */
public final class jq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f21535a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f21536b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21537c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f21538d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21539e;

    private jq(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView2) {
        this.f21535a = constraintLayout;
        this.f21536b = imageView;
        this.f21537c = textView;
        this.f21538d = constraintLayout2;
        this.f21539e = textView2;
    }

    @NonNull
    public static jq a(@NonNull View view) {
        int i2 = R.id.imageView79;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView79);
        if (imageView != null) {
            i2 = R.id.itemGameMainNameTx;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.itemGameMainNameTx);
            if (textView != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                i2 = R.id.itemGameMainTipTv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.itemGameMainTipTv);
                if (textView2 != null) {
                    return new jq(constraintLayout, imageView, textView, constraintLayout, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static jq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_game_main_new_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f21535a;
    }
}
