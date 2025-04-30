package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ViewActivityTabViewOneBinding.java */
/* loaded from: classes3.dex */
public final class qd0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23960a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23961b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23962c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f23963d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23964e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23965f;

    private qd0(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f23960a = linearLayout;
        this.f23961b = imageView;
        this.f23962c = imageView2;
        this.f23963d = linearLayout2;
        this.f23964e = textView;
        this.f23965f = textView2;
    }

    @NonNull
    public static qd0 a(@NonNull View view) {
        int i2 = R.id.imageView5;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView5);
        if (imageView != null) {
            i2 = R.id.iv_icon_1;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon_1);
            if (imageView2 != null) {
                i2 = R.id.ll_tab_1;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_tab_1);
                if (linearLayout != null) {
                    i2 = R.id.tv_desc_1;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_desc_1);
                    if (textView != null) {
                        i2 = R.id.tv_title_1;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title_1);
                        if (textView2 != null) {
                            return new qd0((LinearLayout) view, imageView, imageView2, linearLayout, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qd0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qd0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.view_activity_tab_view_one, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23960a;
    }
}
