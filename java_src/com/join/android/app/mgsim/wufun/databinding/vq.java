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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.textview.MovementTextView;
/* compiled from: ItemIntroductionCommontDetialReplayBinding.java */
/* loaded from: classes3.dex */
public final class vq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25907a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f25908b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final MovementTextView f25909c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f25910d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f25911e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25912f;

    private vq(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull MovementTextView movementTextView, @NonNull View view, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView) {
        this.f25907a = relativeLayout;
        this.f25908b = relativeLayout2;
        this.f25909c = movementTextView;
        this.f25910d = view;
        this.f25911e = simpleDraweeView;
        this.f25912f = textView;
    }

    @NonNull
    public static vq a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i2 = R.id.content;
        MovementTextView movementTextView = (MovementTextView) ViewBindings.findChildViewById(view, R.id.content);
        if (movementTextView != null) {
            i2 = R.id.layoutTop;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.layoutTop);
            if (findChildViewById != null) {
                i2 = R.id.siv_head;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.siv_head);
                if (simpleDraweeView != null) {
                    i2 = R.id.userName;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                    if (textView != null) {
                        return new vq(relativeLayout, relativeLayout, movementTextView, findChildViewById, simpleDraweeView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_introduction_commont_detial_replay, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25907a;
    }
}
