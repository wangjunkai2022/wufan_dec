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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgGamedetailmoreInfomationItemBinding.java */
/* loaded from: classes3.dex */
public final class w10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26001a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f26002b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f26003c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26004d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f26005e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f26006f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f26007g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f26008h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f26009i;

    private w10(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull View view, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f26001a = linearLayout;
        this.f26002b = simpleDraweeView;
        this.f26003c = linearLayout2;
        this.f26004d = textView;
        this.f26005e = linearLayout3;
        this.f26006f = linearLayout4;
        this.f26007g = view;
        this.f26008h = textView2;
        this.f26009i = textView3;
    }

    @NonNull
    public static w10 a(@NonNull View view) {
        int i2 = R.id.informationImage;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.informationImage);
        if (simpleDraweeView != null) {
            i2 = R.id.informationTitle;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.informationTitle);
            if (linearLayout != null) {
                i2 = R.id.informationTv;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.informationTv);
                if (textView != null) {
                    i2 = R.id.layoutInformation;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutInformation);
                    if (linearLayout2 != null) {
                        i2 = R.id.layoutTop;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutTop);
                        if (linearLayout3 != null) {
                            i2 = R.id.line_h;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.line_h);
                            if (findChildViewById != null) {
                                i2 = R.id.messageType;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.messageType);
                                if (textView2 != null) {
                                    i2 = R.id.pubtime1;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.pubtime1);
                                    if (textView3 != null) {
                                        return new w10((LinearLayout) view, simpleDraweeView, linearLayout, textView, linearLayout2, linearLayout3, findChildViewById, textView2, textView3);
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
    public static w10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_gamedetailmore_infomation_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26001a;
    }
}
