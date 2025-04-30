package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ListItemBinding.java */
/* loaded from: classes3.dex */
public final class yu implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f27049a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f27050b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f27051c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f27052d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f27053e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f27054f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f27055g;

    private yu(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f27049a = relativeLayout;
        this.f27050b = imageView;
        this.f27051c = simpleDraweeView;
        this.f27052d = relativeLayout2;
        this.f27053e = relativeLayout3;
        this.f27054f = textView;
        this.f27055g = textView2;
    }

    @NonNull
    public static yu a(@NonNull View view) {
        int i2 = R.id.iv_coll;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_coll);
        if (imageView != null) {
            i2 = R.id.iv_img;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_img);
            if (simpleDraweeView != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i2 = R.id.rl_content;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_content);
                if (relativeLayout2 != null) {
                    i2 = R.id.tv_size;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_size);
                    if (textView != null) {
                        i2 = R.id.tv_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView2 != null) {
                            return new yu(relativeLayout, imageView, simpleDraweeView, relativeLayout, relativeLayout2, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static yu c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yu d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.list_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f27049a;
    }
}
