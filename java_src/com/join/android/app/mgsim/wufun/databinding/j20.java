package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: MgViewForumMyHeaderViewBinding.java */
/* loaded from: classes3.dex */
public final class j20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f21357a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f21358b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f21359c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f21360d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21361e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f21362f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f21363g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f21364h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f21365i;

    private j20(@NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView4, @NonNull TextView textView2) {
        this.f21357a = view;
        this.f21358b = imageView;
        this.f21359c = imageView2;
        this.f21360d = imageView3;
        this.f21361e = textView;
        this.f21362f = relativeLayout;
        this.f21363g = relativeLayout2;
        this.f21364h = imageView4;
        this.f21365i = textView2;
    }

    @NonNull
    public static j20 a(@NonNull View view) {
        int i2 = R.id.arrowImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.arrowImage);
        if (imageView != null) {
            i2 = R.id.arrowImageCommit;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.arrowImageCommit);
            if (imageView2 != null) {
                i2 = R.id.commitImage;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.commitImage);
                if (imageView3 != null) {
                    i2 = R.id.itemTitle;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.itemTitle);
                    if (textView != null) {
                        i2 = R.id.llComment;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.llComment);
                        if (relativeLayout != null) {
                            i2 = R.id.llPost;
                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.llPost);
                            if (relativeLayout2 != null) {
                                i2 = R.id.messageImage;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.messageImage);
                                if (imageView4 != null) {
                                    i2 = R.id.unreadMessageCountBadge;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.unreadMessageCountBadge);
                                    if (textView2 != null) {
                                        return new j20(view, imageView, imageView2, imageView3, textView, relativeLayout, relativeLayout2, imageView4, textView2);
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
    public static j20 b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.mg_view_forum_my_header_view, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f21357a;
    }
}
