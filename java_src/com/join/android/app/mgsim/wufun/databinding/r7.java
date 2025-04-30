package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CollectionTwoHeaderBinding.java */
/* loaded from: classes3.dex */
public final class r7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24254a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f24255b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f24256c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24257d;

    private r7(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView) {
        this.f24254a = relativeLayout;
        this.f24255b = simpleDraweeView;
        this.f24256c = relativeLayout2;
        this.f24257d = textView;
    }

    @NonNull
    public static r7 a(@NonNull View view) {
        int i2 = R.id.imgBreak;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.imgBreak);
        if (simpleDraweeView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textViewBreak);
            if (textView != null) {
                return new r7(relativeLayout, simpleDraweeView, relativeLayout, textView);
            }
            i2 = R.id.textViewBreak;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static r7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.collection_two_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24254a;
    }
}
