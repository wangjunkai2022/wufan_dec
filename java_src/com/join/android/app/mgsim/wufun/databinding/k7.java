package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyGridView;
/* compiled from: CollectionModuleOneBinding.java */
/* loaded from: classes3.dex */
public final class k7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21725a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final MyGridView f21726b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f21727c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21728d;

    private k7(@NonNull RelativeLayout relativeLayout, @NonNull MyGridView myGridView, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f21725a = relativeLayout;
        this.f21726b = myGridView;
        this.f21727c = imageView;
        this.f21728d = textView;
    }

    @NonNull
    public static k7 a(@NonNull View view) {
        int i2 = R.id.gridViewAlbum;
        MyGridView myGridView = (MyGridView) ViewBindings.findChildViewById(view, R.id.gridViewAlbum);
        if (myGridView != null) {
            i2 = R.id.imgBackground;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imgBackground);
            if (imageView != null) {
                i2 = R.id.top_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.top_title);
                if (textView != null) {
                    return new k7((RelativeLayout) view, myGridView, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static k7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.collection_module_one, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21725a;
    }
}
