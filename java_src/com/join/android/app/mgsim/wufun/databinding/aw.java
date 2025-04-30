package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CircleDownloadProgressBar;
/* compiled from: LodingProgressLayoutBinding.java */
/* loaded from: classes3.dex */
public final class aw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18306a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f18307b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CircleDownloadProgressBar f18308c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18309d;

    private aw(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull CircleDownloadProgressBar circleDownloadProgressBar, @NonNull TextView textView) {
        this.f18306a = relativeLayout;
        this.f18307b = relativeLayout2;
        this.f18308c = circleDownloadProgressBar;
        this.f18309d = textView;
    }

    @NonNull
    public static aw a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i2 = R.id.progressBar;
        CircleDownloadProgressBar circleDownloadProgressBar = (CircleDownloadProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
        if (circleDownloadProgressBar != null) {
            i2 = R.id.textView;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
            if (textView != null) {
                return new aw(relativeLayout, relativeLayout, circleDownloadProgressBar, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static aw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static aw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.loding_progress_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18306a;
    }
}
