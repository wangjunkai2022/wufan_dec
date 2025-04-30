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
/* compiled from: MgForumProfilePostProfileBinding.java */
/* loaded from: classes3.dex */
public final class tz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25342a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25343b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25344c;

    private tz(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f25342a = relativeLayout;
        this.f25343b = imageView;
        this.f25344c = textView;
    }

    @NonNull
    public static tz a(@NonNull View view) {
        int i2 = R.id.post_profile_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.post_profile_image);
        if (imageView != null) {
            i2 = R.id.post_profile_message;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.post_profile_message);
            if (textView != null) {
                return new tz((RelativeLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static tz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static tz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_profile_post_profile, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25342a;
    }
}
