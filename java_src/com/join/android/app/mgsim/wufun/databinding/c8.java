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
/* compiled from: CommentListItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class c8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18799a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f18800b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18801c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18802d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f18803e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f18804f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f18805g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f18806h;

    private c8(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView) {
        this.f18799a = linearLayout;
        this.f18800b = simpleDraweeView;
        this.f18801c = textView;
        this.f18802d = textView2;
        this.f18803e = textView3;
        this.f18804f = textView4;
        this.f18805g = linearLayout2;
        this.f18806h = imageView;
    }

    @NonNull
    public static c8 a(@NonNull View view) {
        int i2 = R.id.appIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon);
        if (simpleDraweeView != null) {
            i2 = R.id.appName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
            if (textView != null) {
                i2 = R.id.appTag;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appTag);
                if (textView2 != null) {
                    i2 = R.id.appType;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.appType);
                    if (textView3 != null) {
                        i2 = R.id.content;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.content);
                        if (textView4 != null) {
                            LinearLayout linearLayout = (LinearLayout) view;
                            i2 = R.id.selectbutn;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.selectbutn);
                            if (imageView != null) {
                                return new c8(linearLayout, simpleDraweeView, textView, textView2, textView3, textView4, linearLayout, imageView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static c8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.comment_list_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18799a;
    }
}
