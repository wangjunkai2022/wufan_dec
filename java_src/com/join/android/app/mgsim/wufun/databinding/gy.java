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
import com.join.android.app.common.view.RoundImageView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumItemBinding.java */
/* loaded from: classes3.dex */
public final class gy implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20602a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RoundImageView f20603b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20604c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20605d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20606e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f20607f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f20608g;

    private gy(@NonNull LinearLayout linearLayout, @NonNull RoundImageView roundImageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.f20602a = linearLayout;
        this.f20603b = roundImageView;
        this.f20604c = textView;
        this.f20605d = textView2;
        this.f20606e = textView3;
        this.f20607f = imageView;
        this.f20608g = imageView2;
    }

    @NonNull
    public static gy a(@NonNull View view) {
        int i2 = R.id.forum_icon;
        RoundImageView roundImageView = (RoundImageView) ViewBindings.findChildViewById(view, R.id.forum_icon);
        if (roundImageView != null) {
            i2 = R.id.forum_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forum_name);
            if (textView != null) {
                i2 = R.id.forum_posts_tv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_posts_tv);
                if (textView2 != null) {
                    i2 = R.id.forum_users_tv;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_users_tv);
                    if (textView3 != null) {
                        i2 = R.id.imageView6;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView6);
                        if (imageView != null) {
                            i2 = R.id.imageView7;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView7);
                            if (imageView2 != null) {
                                return new gy((LinearLayout) view, roundImageView, textView, textView2, textView3, imageView, imageView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static gy c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gy d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20602a;
    }
}
