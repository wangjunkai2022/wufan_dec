package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumItemForWelcome1Binding.java */
/* loaded from: classes3.dex */
public final class hy implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20920a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f20921b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20922c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20923d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f20924e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20925f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f20926g;

    private hy(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3, @NonNull RelativeLayout relativeLayout) {
        this.f20920a = linearLayout;
        this.f20921b = imageView;
        this.f20922c = textView;
        this.f20923d = textView2;
        this.f20924e = simpleDraweeView;
        this.f20925f = textView3;
        this.f20926g = relativeLayout;
    }

    @NonNull
    public static hy a(@NonNull View view) {
        int i2 = R.id.arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.arrow);
        if (imageView != null) {
            i2 = R.id.countTv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.countTv);
            if (textView != null) {
                i2 = R.id.forum_desc;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_desc);
                if (textView2 != null) {
                    i2 = R.id.forum_icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.forum_icon);
                    if (simpleDraweeView != null) {
                        i2 = R.id.forum_name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_name);
                        if (textView3 != null) {
                            i2 = R.id.forumTodayPostsParent;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.forumTodayPostsParent);
                            if (relativeLayout != null) {
                                return new hy((LinearLayout) view, imageView, textView, textView2, simpleDraweeView, textView3, relativeLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static hy c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hy d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_item_for_welcome1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20920a;
    }
}
