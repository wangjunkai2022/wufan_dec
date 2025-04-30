package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogAddShortcutViewBinding.java */
/* loaded from: classes3.dex */
public final class la implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22068a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22069b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f22070c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f22071d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22072e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f22073f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f22074g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22075h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f22076i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f22077j;

    private la(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f22068a = relativeLayout;
        this.f22069b = imageView;
        this.f22070c = relativeLayout2;
        this.f22071d = imageView2;
        this.f22072e = textView;
        this.f22073f = simpleDraweeView;
        this.f22074g = simpleDraweeView2;
        this.f22075h = textView2;
        this.f22076i = textView3;
        this.f22077j = textView4;
    }

    @NonNull
    public static la a(@NonNull View view) {
        int i2 = R.id.iv1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv1);
        if (imageView != null) {
            i2 = R.id.rl1;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl1);
            if (relativeLayout != null) {
                i2 = R.id.shortcutCloseIv;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.shortcutCloseIv);
                if (imageView2 != null) {
                    i2 = R.id.shortcutCreateTv;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.shortcutCreateTv);
                    if (textView != null) {
                        i2 = R.id.shortcutIconOneIv;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.shortcutIconOneIv);
                        if (simpleDraweeView != null) {
                            i2 = R.id.shortcutIconTwoIv;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.shortcutIconTwoIv);
                            if (simpleDraweeView2 != null) {
                                i2 = R.id.shortcutNoMoreReminderTv;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.shortcutNoMoreReminderTv);
                                if (textView2 != null) {
                                    i2 = R.id.tv1;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv1);
                                    if (textView3 != null) {
                                        i2 = R.id.tv2;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv2);
                                        if (textView4 != null) {
                                            return new la((RelativeLayout) view, imageView, relativeLayout, imageView2, textView, simpleDraweeView, simpleDraweeView2, textView2, textView3, textView4);
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
    public static la c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static la d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_add_shortcut_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22068a;
    }
}
