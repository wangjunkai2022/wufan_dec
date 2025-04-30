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
/* compiled from: GameDetailScreenshotItemV1Binding.java */
/* loaded from: classes3.dex */
public final class vi implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25849a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f25850b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25851c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25852d;

    private vi(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f25849a = relativeLayout;
        this.f25850b = simpleDraweeView;
        this.f25851c = textView;
        this.f25852d = textView2;
    }

    @NonNull
    public static vi a(@NonNull View view) {
        int i2 = R.id.imageViewHPic;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.imageViewHPic);
        if (simpleDraweeView != null) {
            i2 = R.id.number;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.number);
            if (textView != null) {
                i2 = R.id.title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                if (textView2 != null) {
                    return new vi((RelativeLayout) view, simpleDraweeView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vi c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vi d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_detail_screenshot_item_v1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25849a;
    }
}
