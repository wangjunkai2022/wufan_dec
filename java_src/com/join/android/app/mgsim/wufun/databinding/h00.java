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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumSharePostsAItemHelpMoneyBinding.java */
/* loaded from: classes3.dex */
public final class h00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20634a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f20635b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20636c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20637d;

    private h00(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f20634a = relativeLayout;
        this.f20635b = relativeLayout2;
        this.f20636c = imageView;
        this.f20637d = textView;
    }

    @NonNull
    public static h00 a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i2 = R.id.itemRadioImg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.itemRadioImg);
        if (imageView != null) {
            i2 = R.id.itemRadioText;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.itemRadioText);
            if (textView != null) {
                return new h00(relativeLayout, relativeLayout, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static h00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static h00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_share_posts_a_item_help_money, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20634a;
    }
}
