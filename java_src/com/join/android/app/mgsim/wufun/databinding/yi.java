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
/* compiled from: GameDetialServiceItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class yi implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26938a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f26939b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26940c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26941d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f26942e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26943f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26944g;

    private yi(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f26938a = linearLayout;
        this.f26939b = linearLayout2;
        this.f26940c = textView;
        this.f26941d = textView2;
        this.f26942e = view;
        this.f26943f = textView3;
        this.f26944g = textView4;
    }

    @NonNull
    public static yi a(@NonNull View view) {
        int i2 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.backLayout);
        if (linearLayout != null) {
            i2 = R.id.date;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.date);
            if (textView != null) {
                i2 = R.id.dateMorning;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.dateMorning);
                if (textView2 != null) {
                    i2 = R.id.line;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                    if (findChildViewById != null) {
                        i2 = R.id.message;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.message);
                        if (textView3 != null) {
                            i2 = R.id.messageType;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.messageType);
                            if (textView4 != null) {
                                return new yi((LinearLayout) view, linearLayout, textView, textView2, findChildViewById, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static yi c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yi d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_detial_service_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26938a;
    }
}
