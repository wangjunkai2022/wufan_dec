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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumSearchItemPostTopAreaBinding.java */
/* loaded from: classes3.dex */
public final class f00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f19951a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19952b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19953c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f19954d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f19955e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f19956f;

    private f00(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull TextView textView3) {
        this.f19951a = constraintLayout;
        this.f19952b = textView;
        this.f19953c = textView2;
        this.f19954d = simpleDraweeView;
        this.f19955e = imageView;
        this.f19956f = textView3;
    }

    @NonNull
    public static f00 a(@NonNull View view) {
        int i2 = R.id.count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count);
        if (textView != null) {
            i2 = R.id.desc;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
            if (textView2 != null) {
                i2 = R.id.icon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                if (simpleDraweeView != null) {
                    i2 = R.id.imageView49;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView49);
                    if (imageView != null) {
                        i2 = R.id.name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                        if (textView3 != null) {
                            return new f00((ConstraintLayout) view, textView, textView2, simpleDraweeView, imageView, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static f00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_search_item_post_top_area, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f19951a;
    }
}
