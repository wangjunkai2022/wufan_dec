package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: AlbumGridviewItemBinding.java */
/* loaded from: classes3.dex */
public final class t2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25052a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f25053b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f25054c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25055d;

    private t2(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f25052a = linearLayout;
        this.f25053b = button;
        this.f25054c = imageView;
        this.f25055d = textView;
    }

    @NonNull
    public static t2 a(@NonNull View view) {
        int i2 = R.id.buttonAlbum;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.buttonAlbum);
        if (button != null) {
            i2 = R.id.imgIconAlbum;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imgIconAlbum);
            if (imageView != null) {
                i2 = R.id.textViewAlbum;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textViewAlbum);
                if (textView != null) {
                    return new t2((LinearLayout) view, button, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static t2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.album_gridview_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25052a;
    }
}
