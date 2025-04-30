package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CloudBinding.java */
/* loaded from: classes3.dex */
public final class s6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f24716a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24717b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ListView f24718c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f24719d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24720e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Button f24721f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24722g;

    private s6(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ListView listView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull Button button, @NonNull TextView textView2) {
        this.f24716a = frameLayout;
        this.f24717b = imageView;
        this.f24718c = listView;
        this.f24719d = relativeLayout;
        this.f24720e = textView;
        this.f24721f = button;
        this.f24722g = textView2;
    }

    @NonNull
    public static s6 a(@NonNull View view) {
        int i2 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.backImage);
        if (imageView != null) {
            i2 = R.id.listview;
            ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.listview);
            if (listView != null) {
                i2 = R.id.relativeLayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relativeLayout);
                if (relativeLayout != null) {
                    i2 = R.id.select_txt;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.select_txt);
                    if (textView != null) {
                        i2 = R.id.sub;
                        Button button = (Button) ViewBindings.findChildViewById(view, R.id.sub);
                        if (button != null) {
                            i2 = R.id.titleText;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                            if (textView2 != null) {
                                return new s6((FrameLayout) view, imageView, listView, relativeLayout, textView, button, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static s6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.cloud, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f24716a;
    }
}
