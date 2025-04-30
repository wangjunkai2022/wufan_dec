package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamedetialQqItemBinding.java */
/* loaded from: classes3.dex */
public final class jm implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21502a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21503b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f21504c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21505d;

    private jm(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f21502a = linearLayout;
        this.f21503b = linearLayout2;
        this.f21504c = imageView;
        this.f21505d = textView;
    }

    @NonNull
    public static jm a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.imageView42;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView42);
        if (imageView != null) {
            i2 = R.id.suntitle;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.suntitle);
            if (textView != null) {
                return new jm(linearLayout, linearLayout, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static jm c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jm d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetial_qq_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21502a;
    }
}
