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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumWelcomeItemMyForumHeaderBinding.java */
/* loaded from: classes3.dex */
public final class u00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25356a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25357b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25358c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f25359d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f25360e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f25361f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25362g;

    private u00(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2) {
        this.f25356a = relativeLayout;
        this.f25357b = linearLayout;
        this.f25358c = textView;
        this.f25359d = linearLayout2;
        this.f25360e = imageView;
        this.f25361f = linearLayout3;
        this.f25362g = textView2;
    }

    @NonNull
    public static u00 a(@NonNull View view) {
        int i2 = R.id.forumMore;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forumMore);
        if (linearLayout != null) {
            i2 = R.id.forumMoreTitle;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forumMoreTitle);
            if (textView != null) {
                i2 = R.id.forums_hot_item_container;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forums_hot_item_container);
                if (linearLayout2 != null) {
                    i2 = R.id.imageViewMore;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageViewMore);
                    if (imageView != null) {
                        i2 = R.id.layout_hot_title;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_hot_title);
                        if (linearLayout3 != null) {
                            i2 = R.id.sectionTitle;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.sectionTitle);
                            if (textView2 != null) {
                                return new u00((RelativeLayout) view, linearLayout, textView, linearLayout2, imageView, linearLayout3, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static u00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_welcome_item_my_forum_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25356a;
    }
}
