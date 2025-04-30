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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GameolGiftListviewItemBinding.java */
/* loaded from: classes3.dex */
public final class bn implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18594a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18595b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18596c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18597d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f18598e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f18599f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f18600g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f18601h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SimpleDraweeView f18602i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18603j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f18604k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f18605l;

    private bn(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull TextView textView4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView5, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3) {
        this.f18594a = relativeLayout;
        this.f18595b = textView;
        this.f18596c = textView2;
        this.f18597d = textView3;
        this.f18598e = imageView;
        this.f18599f = view;
        this.f18600g = linearLayout;
        this.f18601h = textView4;
        this.f18602i = simpleDraweeView;
        this.f18603j = textView5;
        this.f18604k = relativeLayout2;
        this.f18605l = relativeLayout3;
    }

    @NonNull
    public static bn a(@NonNull View view) {
        int i2 = R.id.GiftCount;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.GiftCount);
        if (textView != null) {
            i2 = R.id.GiftEndTime;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.GiftEndTime);
            if (textView2 != null) {
                i2 = R.id.GiftSurplus;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.GiftSurplus);
                if (textView3 != null) {
                    i2 = R.id.giftPackageSwich;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.giftPackageSwich);
                    if (imageView != null) {
                        i2 = R.id.line;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                        if (findChildViewById != null) {
                            i2 = R.id.linearLayout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout);
                            if (linearLayout != null) {
                                i2 = R.id.mgListviewItemAppname;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemAppname);
                                if (textView4 != null) {
                                    i2 = R.id.mgListviewItemIcon;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.mgListviewItemIcon);
                                    if (simpleDraweeView != null) {
                                        i2 = R.id.mgListviewItemInstall;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemInstall);
                                        if (textView5 != null) {
                                            i2 = R.id.rLayoutRight;
                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rLayoutRight);
                                            if (relativeLayout != null) {
                                                RelativeLayout relativeLayout2 = (RelativeLayout) view;
                                                return new bn(relativeLayout2, textView, textView2, textView3, imageView, findChildViewById, linearLayout, textView4, simpleDraweeView, textView5, relativeLayout, relativeLayout2);
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
    public static bn c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bn d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gameol_gift_listview_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18594a;
    }
}
