package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ScrollTextViewLayout;
/* compiled from: DownloadTitleLayoutBinding.java */
/* loaded from: classes3.dex */
public final class de implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19332a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19333b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f19334c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f19335d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f19336e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f19337f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f19338g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ScrollTextViewLayout f19339h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final View f19340i;

    private de(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView2, @NonNull ScrollTextViewLayout scrollTextViewLayout, @NonNull View view) {
        this.f19332a = relativeLayout;
        this.f19333b = textView;
        this.f19334c = linearLayout;
        this.f19335d = imageView;
        this.f19336e = imageView2;
        this.f19337f = imageView3;
        this.f19338g = textView2;
        this.f19339h = scrollTextViewLayout;
        this.f19340i = view;
    }

    @NonNull
    public static de a(@NonNull View view) {
        int i2 = R.id.biground;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.biground);
        if (textView != null) {
            i2 = R.id.downloadLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.downloadLayout);
            if (linearLayout != null) {
                i2 = R.id.downloadLine;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.downloadLine);
                if (imageView != null) {
                    i2 = R.id.hasNewFinishedGameImage;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.hasNewFinishedGameImage);
                    if (imageView2 != null) {
                        i2 = R.id.imageLoading;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageLoading);
                        if (imageView3 != null) {
                            i2 = R.id.scroll_text;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.scroll_text);
                            if (textView2 != null) {
                                i2 = R.id.scroll_text_layout;
                                ScrollTextViewLayout scrollTextViewLayout = (ScrollTextViewLayout) ViewBindings.findChildViewById(view, R.id.scroll_text_layout);
                                if (scrollTextViewLayout != null) {
                                    i2 = R.id.statubar;
                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.statubar);
                                    if (findChildViewById != null) {
                                        return new de((RelativeLayout) view, textView, linearLayout, imageView, imageView2, imageView3, textView2, scrollTextViewLayout, findChildViewById);
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
    public static de c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static de d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.download_title_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19332a;
    }
}
