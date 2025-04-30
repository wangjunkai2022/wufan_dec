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
/* compiled from: MgForumMyItemExHeaderBinding.java */
/* loaded from: classes3.dex */
public final class ky implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21917a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f21918b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f21919c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f21920d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f21921e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f21922f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f21923g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f21924h;

    private ky(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull View view2, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f21917a = linearLayout;
        this.f21918b = imageView;
        this.f21919c = view;
        this.f21920d = view2;
        this.f21921e = imageView2;
        this.f21922f = relativeLayout;
        this.f21923g = textView;
        this.f21924h = textView2;
    }

    @NonNull
    public static ky a(@NonNull View view) {
        int i2 = R.id.arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.arrow);
        if (imageView != null) {
            i2 = R.id.divider;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
            if (findChildViewById != null) {
                i2 = R.id.divider1;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.divider1);
                if (findChildViewById2 != null) {
                    i2 = R.id.icon;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
                    if (imageView2 != null) {
                        i2 = R.id.llComment;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.llComment);
                        if (relativeLayout != null) {
                            i2 = R.id.state;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.state);
                            if (textView != null) {
                                i2 = R.id.title;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                if (textView2 != null) {
                                    return new ky((LinearLayout) view, imageView, findChildViewById, findChildViewById2, imageView2, relativeLayout, textView, textView2);
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
    public static ky c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ky d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_my_item_ex_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21917a;
    }
}
