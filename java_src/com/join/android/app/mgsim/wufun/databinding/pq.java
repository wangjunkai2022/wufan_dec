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
/* compiled from: ItemGameinfo2Binding.java */
/* loaded from: classes3.dex */
public final class pq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f23718a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f23719b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23720c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23721d;

    private pq(@NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f23718a = constraintLayout;
        this.f23719b = simpleDraweeView;
        this.f23720c = textView;
        this.f23721d = textView2;
    }

    @NonNull
    public static pq a(@NonNull View view) {
        int i2 = R.id.cover;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.cover);
        if (simpleDraweeView != null) {
            i2 = R.id.name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
            if (textView != null) {
                i2 = R.id.state;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.state);
                if (textView2 != null) {
                    return new pq((ConstraintLayout) view, simpleDraweeView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static pq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_gameinfo_2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f23718a;
    }
}
