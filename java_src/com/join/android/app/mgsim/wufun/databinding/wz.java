package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumProfileReplyMessageReplyItemBinding.java */
/* loaded from: classes3.dex */
public final class wz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26298a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f26299b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f26300c;

    private wz(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull View view) {
        this.f26298a = relativeLayout;
        this.f26299b = linearLayout;
        this.f26300c = view;
    }

    @NonNull
    public static wz a(@NonNull View view) {
        int i2 = R.id.comment_reply_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.comment_reply_container);
        if (linearLayout != null) {
            i2 = R.id.comment_reply_divider;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.comment_reply_divider);
            if (findChildViewById != null) {
                return new wz((RelativeLayout) view, linearLayout, findChildViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static wz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_profile_reply_message_reply_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26298a;
    }
}
