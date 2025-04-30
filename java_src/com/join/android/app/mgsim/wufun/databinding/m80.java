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
/* compiled from: PopFriendInviteBinding.java */
/* loaded from: classes3.dex */
public final class m80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f22392a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22393b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f22394c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22395d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22396e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22397f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22398g;

    private m80(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f22392a = constraintLayout;
        this.f22393b = textView;
        this.f22394c = simpleDraweeView;
        this.f22395d = textView2;
        this.f22396e = textView3;
        this.f22397f = textView4;
        this.f22398g = textView5;
    }

    @NonNull
    public static m80 a(@NonNull View view) {
        int i2 = R.id.accept;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.accept);
        if (textView != null) {
            i2 = R.id.avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar);
            if (simpleDraweeView != null) {
                i2 = R.id.decline;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.decline);
                if (textView2 != null) {
                    i2 = R.id.gameName;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.gameName);
                    if (textView3 != null) {
                        i2 = R.id.name;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                        if (textView4 != null) {
                            i2 = R.id.textView46;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.textView46);
                            if (textView5 != null) {
                                return new m80((ConstraintLayout) view, textView, simpleDraweeView, textView2, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static m80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.pop_friend_invite, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f22392a;
    }
}
