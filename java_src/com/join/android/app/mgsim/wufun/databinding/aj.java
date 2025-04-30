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
/* compiled from: GameDetialmoreServiceItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class aj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18183a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18184b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18185c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f18186d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f18187e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f18188f;

    private aj(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f18183a = linearLayout;
        this.f18184b = textView;
        this.f18185c = textView2;
        this.f18186d = view;
        this.f18187e = textView3;
        this.f18188f = textView4;
    }

    @NonNull
    public static aj a(@NonNull View view) {
        int i2 = R.id.date;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.date);
        if (textView != null) {
            i2 = R.id.dateMorning;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.dateMorning);
            if (textView2 != null) {
                i2 = R.id.line_h;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.line_h);
                if (findChildViewById != null) {
                    i2 = R.id.message;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.message);
                    if (textView3 != null) {
                        i2 = R.id.messageType;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.messageType);
                        if (textView4 != null) {
                            return new aj((LinearLayout) view, textView, textView2, findChildViewById, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static aj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static aj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_detialmore_service_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18183a;
    }
}
