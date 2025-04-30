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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ManageTopItemBinding.java */
/* loaded from: classes3.dex */
public final class nw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22997a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22998b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f22999c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f23000d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23001e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f23002f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f23003g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f23004h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f23005i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f23006j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f23007k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f23008l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f23009m;

    private nw(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull RelativeLayout relativeLayout) {
        this.f22997a = linearLayout;
        this.f22998b = textView;
        this.f22999c = imageView;
        this.f23000d = imageView2;
        this.f23001e = textView2;
        this.f23002f = linearLayout2;
        this.f23003g = linearLayout3;
        this.f23004h = linearLayout4;
        this.f23005i = textView3;
        this.f23006j = textView4;
        this.f23007k = imageView3;
        this.f23008l = imageView4;
        this.f23009m = relativeLayout;
    }

    @NonNull
    public static nw a(@NonNull View view) {
        int i2 = R.id.accountName;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.accountName);
        if (textView != null) {
            i2 = R.id.arrowImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.arrowImage);
            if (imageView != null) {
                i2 = R.id.genderText;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.genderText);
                if (imageView2 != null) {
                    i2 = R.id.levelTv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.levelTv);
                    if (textView2 != null) {
                        LinearLayout linearLayout = (LinearLayout) view;
                        i2 = R.id.myAccountSuccess;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.myAccountSuccess);
                        if (linearLayout2 != null) {
                            i2 = R.id.myAccountUnSuccess;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.myAccountUnSuccess);
                            if (linearLayout3 != null) {
                                i2 = R.id.papaGonglue;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.papaGonglue);
                                if (textView3 != null) {
                                    i2 = R.id.papabiNumber;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.papabiNumber);
                                    if (textView4 != null) {
                                        i2 = R.id.setUser;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.setUser);
                                        if (imageView3 != null) {
                                            i2 = R.id.userIcon;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.userIcon);
                                            if (imageView4 != null) {
                                                i2 = R.id.userModify;
                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.userModify);
                                                if (relativeLayout != null) {
                                                    return new nw(linearLayout, textView, imageView, imageView2, textView2, linearLayout, linearLayout2, linearLayout3, textView3, textView4, imageView3, imageView4, relativeLayout);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static nw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static nw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.manage_top_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22997a;
    }
}
