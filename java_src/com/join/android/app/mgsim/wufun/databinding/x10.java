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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgGamedetailmoreInfomationItemTopBinding.java */
/* loaded from: classes3.dex */
public final class x10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26370a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f26371b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f26372c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f26373d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26374e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f26375f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f26376g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f26377h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f26378i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f26379j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f26380k;

    private x10(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull View view, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f26370a = linearLayout;
        this.f26371b = imageView;
        this.f26372c = imageView2;
        this.f26373d = simpleDraweeView;
        this.f26374e = textView;
        this.f26375f = view;
        this.f26376g = linearLayout2;
        this.f26377h = textView2;
        this.f26378i = textView3;
        this.f26379j = textView4;
        this.f26380k = textView5;
    }

    @NonNull
    public static x10 a(@NonNull View view) {
        int i2 = R.id.imageView16;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView16);
        if (imageView != null) {
            i2 = R.id.imageView17;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView17);
            if (imageView2 != null) {
                i2 = R.id.informationImage;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.informationImage);
                if (simpleDraweeView != null) {
                    i2 = R.id.informationTv;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.informationTv);
                    if (textView != null) {
                        i2 = R.id.itemLine;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.itemLine);
                        if (findChildViewById != null) {
                            i2 = R.id.layoutInformation;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutInformation);
                            if (linearLayout != null) {
                                i2 = R.id.messageType;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.messageType);
                                if (textView2 != null) {
                                    i2 = R.id.pubtime;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.pubtime);
                                    if (textView3 != null) {
                                        i2 = R.id.pv;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.pv);
                                        if (textView4 != null) {
                                            i2 = R.id.uv;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.uv);
                                            if (textView5 != null) {
                                                return new x10((LinearLayout) view, imageView, imageView2, simpleDraweeView, textView, findChildViewById, linearLayout, textView2, textView3, textView4, textView5);
                                            }
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
    public static x10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_gamedetailmore_infomation_item_top, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26370a;
    }
}
