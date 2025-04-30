package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumWelcomeItemHotForumFooterBinding.java */
/* loaded from: classes3.dex */
public final class p00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23405a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23406b;

    private p00(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f23405a = linearLayout;
        this.f23406b = textView;
    }

    @NonNull
    public static p00 a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forums_hot_item_forum_all);
        if (textView != null) {
            return new p00((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.forums_hot_item_forum_all)));
    }

    @NonNull
    public static p00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_welcome_item_hot_forum_footer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23405a;
    }
}
