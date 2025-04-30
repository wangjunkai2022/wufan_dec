package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemModGameRecommendExpandBinding.java */
/* loaded from: classes3.dex */
public final class cr implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f19032a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f19033b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f19034c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f19035d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f19036e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ProgressBar f19037f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ConstraintLayout f19038g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f19039h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f19040i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f19041j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f19042k;

    private cr(@NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f19032a = constraintLayout;
        this.f19033b = simpleDraweeView;
        this.f19034c = simpleDraweeView2;
        this.f19035d = imageView;
        this.f19036e = linearLayout;
        this.f19037f = progressBar;
        this.f19038g = constraintLayout2;
        this.f19039h = textView;
        this.f19040i = textView2;
        this.f19041j = textView3;
        this.f19042k = textView4;
    }

    @NonNull
    public static cr a(@NonNull View view) {
        int i2 = R.id.ivGameIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ivGameIcon);
        if (simpleDraweeView != null) {
            i2 = R.id.ivGamePoster;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ivGamePoster);
            if (simpleDraweeView2 != null) {
                i2 = R.id.ivIconTag;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivIconTag);
                if (imageView != null) {
                    i2 = R.id.llTag;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llTag);
                    if (linearLayout != null) {
                        i2 = R.id.progress;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progress);
                        if (progressBar != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) view;
                            i2 = R.id.tvGameName;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvGameName);
                            if (textView != null) {
                                i2 = R.id.tvOption;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvOption);
                                if (textView2 != null) {
                                    i2 = R.id.tvTag;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTag);
                                    if (textView3 != null) {
                                        i2 = R.id.tvTags;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTags);
                                        if (textView4 != null) {
                                            return new cr(constraintLayout, simpleDraweeView, simpleDraweeView2, imageView, linearLayout, progressBar, constraintLayout, textView, textView2, textView3, textView4);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static cr c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cr d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_mod_game_recommend_expand, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f19032a;
    }
}
