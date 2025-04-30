package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogArenaNoRecordBinding.java */
/* loaded from: classes3.dex */
public final class qa implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23915a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23916b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f23917c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f23918d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f23919e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23920f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23921g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f23922h;

    private qa(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull ConstraintLayout constraintLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f23915a = relativeLayout;
        this.f23916b = imageView;
        this.f23917c = linearLayout;
        this.f23918d = constraintLayout;
        this.f23919e = relativeLayout2;
        this.f23920f = textView;
        this.f23921g = textView2;
        this.f23922h = textView3;
    }

    @NonNull
    public static qa a(@NonNull View view) {
        int i2 = R.id.iv1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv1);
        if (imageView != null) {
            i2 = R.id.iv_close;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_close);
            if (linearLayout != null) {
                i2 = R.id.noRecord;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.noRecord);
                if (constraintLayout != null) {
                    i2 = R.id.rl_top;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_top);
                    if (relativeLayout != null) {
                        i2 = R.id.tv1;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv1);
                        if (textView != null) {
                            i2 = R.id.tv2;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv2);
                            if (textView2 != null) {
                                i2 = R.id.tv_top;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_top);
                                if (textView3 != null) {
                                    return new qa((RelativeLayout) view, imageView, linearLayout, constraintLayout, relativeLayout, textView, textView2, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qa c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qa d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_arena_no_record, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23915a;
    }
}
