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
/* compiled from: GamedetailItemImageV1Binding.java */
/* loaded from: classes3.dex */
public final class kk implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f21857a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21858b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f21859c;

    private kk(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView) {
        this.f21857a = constraintLayout;
        this.f21858b = textView;
        this.f21859c = simpleDraweeView;
    }

    @NonNull
    public static kk a(@NonNull View view) {
        int i2 = R.id.count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count);
        if (textView != null) {
            i2 = R.id.image;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.image);
            if (simpleDraweeView != null) {
                return new kk((ConstraintLayout) view, textView, simpleDraweeView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static kk c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static kk d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_image_v1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f21857a;
    }
}
