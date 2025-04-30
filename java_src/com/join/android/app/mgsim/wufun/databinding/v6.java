package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CloudDownloadListBinding.java */
/* loaded from: classes3.dex */
public final class v6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25754a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25755b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ListView f25756c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f25757d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25758e;

    private v6(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ListView listView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView) {
        this.f25754a = linearLayout;
        this.f25755b = imageView;
        this.f25756c = listView;
        this.f25757d = relativeLayout;
        this.f25758e = textView;
    }

    @NonNull
    public static v6 a(@NonNull View view) {
        int i2 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.backImage);
        if (imageView != null) {
            i2 = R.id.listview;
            ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.listview);
            if (listView != null) {
                i2 = R.id.relativeLayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relativeLayout);
                if (relativeLayout != null) {
                    i2 = R.id.titleText;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                    if (textView != null) {
                        return new v6((LinearLayout) view, imageView, listView, relativeLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static v6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.cloud_download_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25754a;
    }
}
