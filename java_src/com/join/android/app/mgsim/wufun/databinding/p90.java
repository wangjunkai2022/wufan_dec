package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: RecomWifiActivityLayoutBinding.java */
/* loaded from: classes3.dex */
public final class p90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23532a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23533b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f23534c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final GridView f23535d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f23536e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23537f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23538g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f23539h;

    private p90(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull GridView gridView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f23532a = linearLayout;
        this.f23533b = imageView;
        this.f23534c = button;
        this.f23535d = gridView;
        this.f23536e = linearLayout2;
        this.f23537f = textView;
        this.f23538g = textView2;
        this.f23539h = textView3;
    }

    @NonNull
    public static p90 a(@NonNull View view) {
        int i2 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            i2 = R.id.downloadButn;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.downloadButn);
            if (button != null) {
                i2 = R.id.gridviewShowRecomed;
                GridView gridView = (GridView) ViewBindings.findChildViewById(view, R.id.gridviewShowRecomed);
                if (gridView != null) {
                    i2 = R.id.recomWifiLayout;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.recomWifiLayout);
                    if (linearLayout != null) {
                        i2 = R.id.textView13;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView13);
                        if (textView != null) {
                            i2 = R.id.textView15;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView15);
                            if (textView2 != null) {
                                i2 = R.id.titleTextview;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.titleTextview);
                                if (textView3 != null) {
                                    return new p90((LinearLayout) view, imageView, button, gridView, linearLayout, textView, textView2, textView3);
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
    public static p90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.recom_wifi_activity_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23532a;
    }
}
