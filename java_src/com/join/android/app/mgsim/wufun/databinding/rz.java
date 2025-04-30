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
/* compiled from: MgForumProfileMessageItemBinding.java */
/* loaded from: classes3.dex */
public final class rz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24587a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f24588b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24589c;

    private rz(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull TextView textView) {
        this.f24587a = relativeLayout;
        this.f24588b = view;
        this.f24589c = textView;
    }

    @NonNull
    public static rz a(@NonNull View view) {
        int i2 = R.id.mg_forum_profile_message_divider;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.mg_forum_profile_message_divider);
        if (findChildViewById != null) {
            i2 = R.id.mg_forum_profile_message_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.mg_forum_profile_message_tv);
            if (textView != null) {
                return new rz((RelativeLayout) view, findChildViewById, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static rz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_profile_message_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24587a;
    }
}
