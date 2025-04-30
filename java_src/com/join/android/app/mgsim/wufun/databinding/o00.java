package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumWelcomeItemGiftItemBinding.java */
/* loaded from: classes3.dex */
public final class o00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23055a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f23056b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f23057c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23058d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f23059e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23060f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f23061g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f23062h;

    private o00(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull TextView textView3) {
        this.f23055a = relativeLayout;
        this.f23056b = button;
        this.f23057c = simpleDraweeView;
        this.f23058d = textView;
        this.f23059e = linearLayout;
        this.f23060f = textView2;
        this.f23061g = imageView;
        this.f23062h = textView3;
    }

    @NonNull
    public static o00 a(@NonNull View view) {
        int i2 = R.id.actionButton;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.actionButton);
        if (button != null) {
            i2 = R.id.forum_icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.forum_icon);
            if (simpleDraweeView != null) {
                i2 = R.id.giftDesc;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.giftDesc);
                if (textView != null) {
                    i2 = R.id.linearLayout3;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout3);
                    if (linearLayout != null) {
                        i2 = R.id.sectionTitle;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.sectionTitle);
                        if (textView2 != null) {
                            i2 = R.id.tag;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.tag);
                            if (imageView != null) {
                                i2 = R.id.title;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                if (textView3 != null) {
                                    return new o00((RelativeLayout) view, button, simpleDraweeView, textView, linearLayout, textView2, imageView, textView3);
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
    public static o00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_welcome_item_gift_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23055a;
    }
}
