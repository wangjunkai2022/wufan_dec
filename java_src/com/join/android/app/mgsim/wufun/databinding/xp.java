package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemFriendItemHeaderRecommendBinding.java */
/* loaded from: classes3.dex */
public final class xp implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f26638a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26639b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26640c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26641d;

    private xp(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f26638a = constraintLayout;
        this.f26639b = textView;
        this.f26640c = textView2;
        this.f26641d = textView3;
    }

    @NonNull
    public static xp a(@NonNull View view) {
        int i2 = R.id.label;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.label);
        if (textView != null) {
            i2 = R.id.reqPermission;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.reqPermission);
            if (textView2 != null) {
                i2 = R.id.textView105;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView105);
                if (textView3 != null) {
                    return new xp((ConstraintLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static xp c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xp d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_friend_item_header_recommend, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f26638a;
    }
}
