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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ClassfyTypeImageLayoutBinding.java */
/* loaded from: classes3.dex */
public final class f6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20036a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f20037b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20038c;

    private f6(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView) {
        this.f20036a = linearLayout;
        this.f20037b = simpleDraweeView;
        this.f20038c = textView;
    }

    @NonNull
    public static f6 a(@NonNull View view) {
        int i2 = R.id.icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
        if (simpleDraweeView != null) {
            i2 = R.id.name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
            if (textView != null) {
                return new f6((LinearLayout) view, simpleDraweeView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static f6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.classfy_type_image_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20036a;
    }
}
