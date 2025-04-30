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
/* compiled from: MgForumPostActivityItemCommentMessageBinding.java */
/* loaded from: classes3.dex */
public final class py implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23758a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23759b;

    private py(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f23758a = linearLayout;
        this.f23759b = textView;
    }

    @NonNull
    public static py a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.comment_message);
        if (textView != null) {
            return new py((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.comment_message)));
    }

    @NonNull
    public static py c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static py d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity_item_comment_message, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23758a;
    }
}
