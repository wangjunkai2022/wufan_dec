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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CommentDetailHeadViewBinding.java */
/* loaded from: classes3.dex */
public final class w7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26077a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f26078b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f26079c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f26080d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26081e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f26082f;

    private w7(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull View view) {
        this.f26077a = linearLayout;
        this.f26078b = simpleDraweeView;
        this.f26079c = imageView;
        this.f26080d = linearLayout2;
        this.f26081e = textView;
        this.f26082f = view;
    }

    @NonNull
    public static w7 a(@NonNull View view) {
        int i2 = R.id.appIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon);
        if (simpleDraweeView != null) {
            i2 = R.id.arrow;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.arrow);
            if (imageView != null) {
                i2 = R.id.commentDetailTopLl;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.commentDetailTopLl);
                if (linearLayout != null) {
                    i2 = R.id.gameName;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gameName);
                    if (textView != null) {
                        i2 = R.id.line;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                        if (findChildViewById != null) {
                            return new w7((LinearLayout) view, simpleDraweeView, imageView, linearLayout, textView, findChildViewById);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static w7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.comment_detail_head_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26077a;
    }
}
