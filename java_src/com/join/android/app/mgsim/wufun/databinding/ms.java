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
/* compiled from: ItemStandaloneHorizontalItemViewBinding.java */
/* loaded from: classes3.dex */
public final class ms implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22606a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22607b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f22608c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f22609d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22610e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22611f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f22612g;

    private ms(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2) {
        this.f22606a = linearLayout;
        this.f22607b = textView;
        this.f22608c = imageView;
        this.f22609d = simpleDraweeView;
        this.f22610e = textView2;
        this.f22611f = textView3;
        this.f22612g = linearLayout2;
    }

    @NonNull
    public static ms a(@NonNull View view) {
        int i2 = R.id.appname1;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appname1);
        if (textView != null) {
            i2 = R.id.flag;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.flag);
            if (imageView != null) {
                i2 = R.id.image1;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.image1);
                if (simpleDraweeView != null) {
                    i2 = R.id.mgListviewItemInstall;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemInstall);
                    if (textView2 != null) {
                        i2 = R.id.moneyText;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                        if (textView3 != null) {
                            LinearLayout linearLayout = (LinearLayout) view;
                            return new ms(linearLayout, textView, imageView, simpleDraweeView, textView2, textView3, linearLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ms c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ms d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_standalone_horizontal_item_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22606a;
    }
}
