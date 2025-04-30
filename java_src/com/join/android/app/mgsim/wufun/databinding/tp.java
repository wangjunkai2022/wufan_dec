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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemFriendAddBinding.java */
/* loaded from: classes3.dex */
public final class tp implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f25273a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f25274b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25275c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25276d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25277e;

    private tp(@NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f25273a = constraintLayout;
        this.f25274b = simpleDraweeView;
        this.f25275c = textView;
        this.f25276d = textView2;
        this.f25277e = textView3;
    }

    @NonNull
    public static tp a(@NonNull View view) {
        int i2 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (simpleDraweeView != null) {
            i2 = R.id.button;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.button);
            if (textView != null) {
                i2 = R.id.desc;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
                if (textView2 != null) {
                    i2 = R.id.name;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                    if (textView3 != null) {
                        return new tp((ConstraintLayout) view, simpleDraweeView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static tp c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static tp d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_friend_add, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f25273a;
    }
}
