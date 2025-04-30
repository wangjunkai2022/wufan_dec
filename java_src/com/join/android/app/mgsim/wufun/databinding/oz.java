package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumProfileFooterBinding.java */
/* loaded from: classes3.dex */
public final class oz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23384a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f23385b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f23386c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23387d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f23388e;

    private oz(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout) {
        this.f23384a = linearLayout;
        this.f23385b = linearLayout2;
        this.f23386c = simpleDraweeView;
        this.f23387d = textView;
        this.f23388e = relativeLayout;
    }

    @NonNull
    public static oz a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.post_profile_image;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.post_profile_image);
        if (simpleDraweeView != null) {
            i2 = R.id.post_profile_message;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.post_profile_message);
            if (textView != null) {
                i2 = R.id.post_profile_post_profile;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.post_profile_post_profile);
                if (relativeLayout != null) {
                    return new oz(linearLayout, linearLayout, simpleDraweeView, textView, relativeLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static oz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static oz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_profile_footer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23384a;
    }
}
