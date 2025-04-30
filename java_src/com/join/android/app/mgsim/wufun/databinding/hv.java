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
/* compiled from: ListviewDownloadCenterHistoryBinding.java */
/* loaded from: classes3.dex */
public final class hv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20906a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f20907b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f20908c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f20909d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20910e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20911f;

    private hv(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f20906a = linearLayout;
        this.f20907b = button;
        this.f20908c = button2;
        this.f20909d = imageView;
        this.f20910e = textView;
        this.f20911f = textView2;
    }

    @NonNull
    public static hv a(@NonNull View view) {
        int i2 = R.id.btnOp;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btnOp);
        if (button != null) {
            i2 = R.id.del;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.del);
            if (button2 != null) {
                i2 = R.id.img;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img);
                if (imageView != null) {
                    i2 = R.id.name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                    if (textView != null) {
                        i2 = R.id.status;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.status);
                        if (textView2 != null) {
                            return new hv((LinearLayout) view, button, button2, imageView, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static hv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.listview_download_center_history, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20906a;
    }
}
