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
/* compiled from: GamedetialBtNoticeItemBinding.java */
/* loaded from: classes3.dex */
public final class sl implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f24881a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f24882b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24883c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24884d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24885e;

    private sl(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f24881a = constraintLayout;
        this.f24882b = constraintLayout2;
        this.f24883c = textView;
        this.f24884d = textView2;
        this.f24885e = textView3;
    }

    @NonNull
    public static sl a(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i2 = R.id.message;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.message);
        if (textView != null) {
            i2 = R.id.tag;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tag);
            if (textView2 != null) {
                i2 = R.id.title;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                if (textView3 != null) {
                    return new sl(constraintLayout, constraintLayout, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static sl c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sl d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetial_bt_notice_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f24881a;
    }
}
