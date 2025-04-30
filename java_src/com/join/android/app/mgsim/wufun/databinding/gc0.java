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
/* compiled from: SwitchLayoutBinding.java */
/* loaded from: classes3.dex */
public final class gc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20397a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f20398b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f20399c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f20400d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20401e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20402f;

    private gc0(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f20397a = linearLayout;
        this.f20398b = linearLayout2;
        this.f20399c = linearLayout3;
        this.f20400d = linearLayout4;
        this.f20401e = textView;
        this.f20402f = textView2;
    }

    @NonNull
    public static gc0 a(@NonNull View view) {
        int i2 = R.id.ll_elite_room;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_elite_room);
        if (linearLayout != null) {
            i2 = R.id.ll_standard_room;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_standard_room);
            if (linearLayout2 != null) {
                i2 = R.id.ll_tab;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_tab);
                if (linearLayout3 != null) {
                    i2 = R.id.tv_elite_room_name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_elite_room_name);
                    if (textView != null) {
                        i2 = R.id.tv_standard_room_name;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_standard_room_name);
                        if (textView2 != null) {
                            return new gc0((LinearLayout) view, linearLayout, linearLayout2, linearLayout3, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static gc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.switch_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20397a;
    }
}
