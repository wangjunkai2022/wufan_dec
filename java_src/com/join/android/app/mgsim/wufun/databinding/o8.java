package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CommunityReplyitemBinding.java */
/* loaded from: classes3.dex */
public final class o8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23168a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23169b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f23170c;

    private o8(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout2) {
        this.f23168a = relativeLayout;
        this.f23169b = textView;
        this.f23170c = relativeLayout2;
    }

    @NonNull
    public static o8 a(@NonNull View view) {
        int i2 = R.id.reply_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.reply_name);
        if (textView != null) {
            i2 = R.id.rl_reply;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_reply);
            if (relativeLayout != null) {
                return new o8((RelativeLayout) view, textView, relativeLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static o8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.community_replyitem, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23168a;
    }
}
