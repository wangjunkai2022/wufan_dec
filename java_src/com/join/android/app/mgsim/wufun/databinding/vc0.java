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
/* compiled from: ToptipLayoutBinding.java */
/* loaded from: classes3.dex */
public final class vc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25810a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25811b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f25812c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25813d;

    private vc0(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f25810a = linearLayout;
        this.f25811b = linearLayout2;
        this.f25812c = imageView;
        this.f25813d = textView;
    }

    @NonNull
    public static vc0 a(@NonNull View view) {
        int i2 = R.id.topTip;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.topTip);
        if (linearLayout != null) {
            i2 = R.id.topTipClose;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.topTipClose);
            if (imageView != null) {
                i2 = R.id.toptipText;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.toptipText);
                if (textView != null) {
                    return new vc0((LinearLayout) view, linearLayout, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.toptip_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25810a;
    }
}
