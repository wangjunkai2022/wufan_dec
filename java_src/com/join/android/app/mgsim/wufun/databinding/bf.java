package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FightHotGameItemBinding.java */
/* loaded from: classes3.dex */
public final class bf implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18518a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f18519b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f18520c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f18521d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f18522e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f18523f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f18524g;

    private bf(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2) {
        this.f18518a = linearLayout;
        this.f18519b = imageView;
        this.f18520c = imageView2;
        this.f18521d = simpleDraweeView;
        this.f18522e = simpleDraweeView2;
        this.f18523f = relativeLayout;
        this.f18524g = relativeLayout2;
    }

    @NonNull
    public static bf a(@NonNull View view) {
        int i2 = R.id.fightIconLeft;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.fightIconLeft);
        if (imageView != null) {
            i2 = R.id.fightIconRight;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.fightIconRight);
            if (imageView2 != null) {
                i2 = R.id.fightImgLeft;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.fightImgLeft);
                if (simpleDraweeView != null) {
                    i2 = R.id.fightImgRight;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.fightImgRight);
                    if (simpleDraweeView2 != null) {
                        i2 = R.id.fightLayoutLeft;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.fightLayoutLeft);
                        if (relativeLayout != null) {
                            i2 = R.id.fightLayoutRight;
                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.fightLayoutRight);
                            if (relativeLayout2 != null) {
                                return new bf((LinearLayout) view, imageView, imageView2, simpleDraweeView, simpleDraweeView2, relativeLayout, relativeLayout2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static bf c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bf d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fight_hot_game_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18518a;
    }
}
