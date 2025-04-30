package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CollectionSixNewHeaderBinding.java */
/* loaded from: classes3.dex */
public final class o7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23155a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f23156b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f23157c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f23158d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23159e;

    private o7(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView) {
        this.f23155a = relativeLayout;
        this.f23156b = linearLayout;
        this.f23157c = simpleDraweeView;
        this.f23158d = relativeLayout2;
        this.f23159e = textView;
    }

    @NonNull
    public static o7 a(@NonNull View view) {
        int i2 = R.id.headerViewLl;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.headerViewLl);
        if (linearLayout != null) {
            i2 = R.id.imgBreak;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.imgBreak);
            if (simpleDraweeView != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i2 = R.id.textViewBreak;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textViewBreak);
                if (textView != null) {
                    return new o7(relativeLayout, linearLayout, simpleDraweeView, relativeLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static o7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.collection_six_new_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23155a;
    }
}
