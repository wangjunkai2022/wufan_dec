package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LuckDrawAddressDialogLayoutBinding.java */
/* loaded from: classes3.dex */
public final class dw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19502a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19503b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f19504c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f19505d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f19506e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final EditText f19507f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f19508g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final EditText f19509h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f19510i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f19511j;

    private dw(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull EditText editText2, @NonNull TextView textView2, @NonNull EditText editText3, @NonNull LinearLayout linearLayout3, @NonNull TextView textView3) {
        this.f19502a = linearLayout;
        this.f19503b = textView;
        this.f19504c = editText;
        this.f19505d = imageView;
        this.f19506e = linearLayout2;
        this.f19507f = editText2;
        this.f19508g = textView2;
        this.f19509h = editText3;
        this.f19510i = linearLayout3;
        this.f19511j = textView3;
    }

    @NonNull
    public static dw a(@NonNull View view) {
        int i2 = R.id.address1;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.address1);
        if (textView != null) {
            i2 = R.id.address2;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.address2);
            if (editText != null) {
                i2 = R.id.closed;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.closed);
                if (imageView != null) {
                    i2 = R.id.la;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.la);
                    if (linearLayout != null) {
                        i2 = R.id.name;
                        EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.name);
                        if (editText2 != null) {
                            i2 = R.id.ok;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.ok);
                            if (textView2 != null) {
                                i2 = R.id.phoneNumber;
                                EditText editText3 = (EditText) ViewBindings.findChildViewById(view, R.id.phoneNumber);
                                if (editText3 != null) {
                                    i2 = R.id.selectAddress;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.selectAddress);
                                    if (linearLayout2 != null) {
                                        i2 = R.id.title;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                        if (textView3 != null) {
                                            return new dw((LinearLayout) view, textView, editText, imageView, linearLayout, editText2, textView2, editText3, linearLayout2, textView3);
                                        }
                                    }
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
    public static dw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static dw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.luck_draw_address_dialog_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19502a;
    }
}
