package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: HavenForumListItemBinding.java */
/* loaded from: classes3.dex */
public final class xn implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f26620a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26621b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f26622c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26623d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ConstraintLayout f26624e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f26625f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ConstraintLayout f26626g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f26627h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f26628i;

    private xn(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView2, @NonNull ConstraintLayout constraintLayout3, @NonNull ImageView imageView, @NonNull ConstraintLayout constraintLayout4, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f26620a = constraintLayout;
        this.f26621b = textView;
        this.f26622c = constraintLayout2;
        this.f26623d = textView2;
        this.f26624e = constraintLayout3;
        this.f26625f = imageView;
        this.f26626g = constraintLayout4;
        this.f26627h = textView3;
        this.f26628i = textView4;
    }

    @NonNull
    public static xn a(@NonNull View view) {
        int i2 = R.id.appName;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
        if (textView != null) {
            i2 = R.id.constraintLayout14;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.constraintLayout14);
            if (constraintLayout != null) {
                i2 = R.id.content;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.content);
                if (textView2 != null) {
                    i2 = R.id.detail;
                    ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.detail);
                    if (constraintLayout2 != null) {
                        i2 = R.id.imageView53;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView53);
                        if (imageView != null) {
                            ConstraintLayout constraintLayout3 = (ConstraintLayout) view;
                            i2 = R.id.textView50;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView50);
                            if (textView3 != null) {
                                i2 = R.id.textView75;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.textView75);
                                if (textView4 != null) {
                                    return new xn(constraintLayout3, textView, constraintLayout, textView2, constraintLayout2, imageView, constraintLayout3, textView3, textView4);
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
    public static xn c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xn d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.haven_forum_list_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f26620a;
    }
}
