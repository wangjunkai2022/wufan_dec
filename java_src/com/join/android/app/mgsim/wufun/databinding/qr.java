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
/* compiled from: ItemRolesListviewBinding.java */
/* loaded from: classes3.dex */
public final class qr implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24056a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24057b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f24058c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f24059d;

    private qr(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView) {
        this.f24056a = linearLayout;
        this.f24057b = textView;
        this.f24058c = linearLayout2;
        this.f24059d = imageView;
    }

    @NonNull
    public static qr a(@NonNull View view) {
        int i2 = R.id.item_name_tx;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.item_name_tx);
        if (textView != null) {
            i2 = R.id.item_roles_ll;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.item_roles_ll);
            if (linearLayout != null) {
                i2 = R.id.item_select_iv;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.item_select_iv);
                if (imageView != null) {
                    return new qr((LinearLayout) view, textView, linearLayout, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qr c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qr d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_roles_listview, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24056a;
    }
}
