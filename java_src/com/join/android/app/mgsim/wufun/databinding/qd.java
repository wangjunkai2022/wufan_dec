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
/* compiled from: DownlargeGameDialogActivityBinding.java */
/* loaded from: classes3.dex */
public final class qd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23954a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23955b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23956c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f23957d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23958e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23959f;

    private qd(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f23954a = linearLayout;
        this.f23955b = imageView;
        this.f23956c = textView;
        this.f23957d = imageView2;
        this.f23958e = textView2;
        this.f23959f = textView3;
    }

    @NonNull
    public static qd a(@NonNull View view) {
        int i2 = R.id.closed;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.closed);
        if (imageView != null) {
            i2 = R.id.content;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
            if (textView != null) {
                i2 = R.id.icon;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
                if (imageView2 != null) {
                    i2 = R.id.openH5;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.openH5);
                    if (textView2 != null) {
                        i2 = R.id.title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                        if (textView3 != null) {
                            return new qd((LinearLayout) view, imageView, textView, imageView2, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.downlarge_game_dialog_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23954a;
    }
}
