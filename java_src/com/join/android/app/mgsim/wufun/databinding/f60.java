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
/* compiled from: NotificationJpushViewBinding.java */
/* loaded from: classes3.dex */
public final class f60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20039a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f20040b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20041c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f20042d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20043e;

    private f60(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2) {
        this.f20039a = linearLayout;
        this.f20040b = imageView;
        this.f20041c = textView;
        this.f20042d = linearLayout2;
        this.f20043e = textView2;
    }

    @NonNull
    public static f60 a(@NonNull View view) {
        int i2 = R.id.notifyIv;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.notifyIv);
        if (imageView != null) {
            i2 = R.id.notifyProgressTv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.notifyProgressTv);
            if (textView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i2 = R.id.notifyTitleTv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.notifyTitleTv);
                if (textView2 != null) {
                    return new f60(linearLayout, imageView, textView, linearLayout, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static f60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.notification_jpush_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20039a;
    }
}
