package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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
/* compiled from: MyAlbumActivityBinding.java */
/* loaded from: classes3.dex */
public final class r40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24205a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24206b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final GridView f24207c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f24208d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f24209e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f24210f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f24211g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f24212h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f24213i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Button f24214j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f24215k;

    private r40(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull GridView gridView, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull ImageView imageView2, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull Button button, @NonNull TextView textView2) {
        this.f24205a = relativeLayout;
        this.f24206b = imageView;
        this.f24207c = gridView;
        this.f24208d = relativeLayout2;
        this.f24209e = relativeLayout3;
        this.f24210f = imageView2;
        this.f24211g = view;
        this.f24212h = linearLayout;
        this.f24213i = textView;
        this.f24214j = button;
        this.f24215k = textView2;
    }

    @NonNull
    public static r40 a(@NonNull View view) {
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
                            i2 = R.id.cover;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.cover);
                            if (findChildViewById != null) {
                                i2 = R.id.layout_show_album;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_show_album);
                                if (linearLayout != null) {
                                    i2 = R.id.layout_title;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.layout_title);
                                    if (textView != null) {
                                        i2 = R.id.ok_image;
                                        Button button = (Button) ViewBindings.findChildViewById(view, R.id.ok_image);
                                        if (button != null) {
                                            i2 = R.id.select_num;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.select_num);
                                            if (textView2 != null) {
                                                return new r40((RelativeLayout) view, imageView, gridView, relativeLayout, relativeLayout2, imageView2, findChildViewById, linearLayout, textView, button, textView2);
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
    public static r40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.my_album_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24205a;
    }
}
