package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MyIconActivityBinding.java */
/* loaded from: classes3.dex */
public final class v40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25739a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25740b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final GridView f25741c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f25742d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f25743e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f25744f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f25745g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25746h;

    private v40(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull GridView gridView, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f25739a = relativeLayout;
        this.f25740b = imageView;
        this.f25741c = gridView;
        this.f25742d = relativeLayout2;
        this.f25743e = relativeLayout3;
        this.f25744f = imageView2;
        this.f25745g = linearLayout;
        this.f25746h = textView;
    }

    @NonNull
    public static v40 a(@NonNull View view) {
        int i2 = R.id.album_collapse_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.album_collapse_image);
        if (imageView != null) {
            i2 = R.id.album_grid;
            GridView gridView = (GridView) ViewBindings.findChildViewById(view, R.id.album_grid);
            if (gridView != null) {
                i2 = R.id.album_main;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.album_main);
                if (relativeLayout != null) {
                    i2 = R.id.album_title;
                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.album_title);
                    if (relativeLayout2 != null) {
                        i2 = R.id.back_image;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
                        if (imageView2 != null) {
                            i2 = R.id.layout_show_album;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_show_album);
                            if (linearLayout != null) {
                                i2 = R.id.layout_title;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.layout_title);
                                if (textView != null) {
                                    return new v40((RelativeLayout) view, imageView, gridView, relativeLayout, relativeLayout2, imageView2, linearLayout, textView);
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
    public static v40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.my_icon_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25739a;
    }
}
