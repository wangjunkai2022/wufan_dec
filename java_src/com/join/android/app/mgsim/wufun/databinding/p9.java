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
import com.join.mgps.customview.MStarBar;
/* compiled from: DetailGuesslikeItemBinding.java */
/* loaded from: classes3.dex */
public final class p9 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23522a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23523b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23524c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23525d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final MStarBar f23526e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f23527f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f23528g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f23529h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f23530i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f23531j;

    private p9(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull MStarBar mStarBar, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f23522a = relativeLayout;
        this.f23523b = textView;
        this.f23524c = textView2;
        this.f23525d = textView3;
        this.f23526e = mStarBar;
        this.f23527f = simpleDraweeView;
        this.f23528g = simpleDraweeView2;
        this.f23529h = linearLayout;
        this.f23530i = textView4;
        this.f23531j = textView5;
    }

    @NonNull
    public static p9 a(@NonNull View view) {
        int i2 = R.id.appName;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
        if (textView != null) {
            i2 = R.id.comment;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.comment);
            if (textView2 != null) {
                i2 = R.id.gameScore;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.gameScore);
                if (textView3 != null) {
                    i2 = R.id.gameStar;
                    MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(view, R.id.gameStar);
                    if (mStarBar != null) {
                        i2 = R.id.icon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                        if (simpleDraweeView != null) {
                            i2 = R.id.img;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img);
                            if (simpleDraweeView2 != null) {
                                i2 = R.id.main;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
                                if (linearLayout != null) {
                                    i2 = R.id.scrolNew;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.scrolNew);
                                    if (textView4 != null) {
                                        i2 = R.id.tag;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tag);
                                        if (textView5 != null) {
                                            return new p9((RelativeLayout) view, textView, textView2, textView3, mStarBar, simpleDraweeView, simpleDraweeView2, linearLayout, textView4, textView5);
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
    public static p9 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p9 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detail_guesslike_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23522a;
    }
}
