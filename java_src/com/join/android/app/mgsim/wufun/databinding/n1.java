package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityPapayFinishBinding.java */
/* loaded from: classes3.dex */
public final class n1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22670a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f22671b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f22672c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22673d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22674e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f22675f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22676g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22677h;

    private n1(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f22670a = linearLayout;
        this.f22671b = button;
        this.f22672c = imageView;
        this.f22673d = textView;
        this.f22674e = textView2;
        this.f22675f = linearLayout2;
        this.f22676g = textView3;
        this.f22677h = textView4;
    }

    @NonNull
    public static n1 a(@NonNull View view) {
        int i2 = R.id.backButn;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.backButn);
        if (button != null) {
            i2 = R.id.imageSuccessOrFailed;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageSuccessOrFailed);
            if (imageView != null) {
                i2 = R.id.orderid;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.orderid);
                if (textView != null) {
                    i2 = R.id.pabiNumber;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.pabiNumber);
                    if (textView2 != null) {
                        i2 = R.id.paySuccess;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.paySuccess);
                        if (linearLayout != null) {
                            i2 = R.id.userName;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                            if (textView3 != null) {
                                i2 = R.id.vipRecharge;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.vipRecharge);
                                if (textView4 != null) {
                                    return new n1((LinearLayout) view, button, imageView, textView, textView2, linearLayout, textView3, textView4);
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
    public static n1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_papay_finish, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22670a;
    }
}
