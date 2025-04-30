package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GameTransferListItemBinding.java */
/* loaded from: classes3.dex */
public final class oj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23279a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f23280b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f23281c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23282d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23283e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final CheckBox f23284f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23285g;

    private oj(@NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull CheckBox checkBox, @NonNull TextView textView3) {
        this.f23279a = relativeLayout;
        this.f23280b = frameLayout;
        this.f23281c = simpleDraweeView;
        this.f23282d = textView;
        this.f23283e = textView2;
        this.f23284f = checkBox;
        this.f23285g = textView3;
    }

    @NonNull
    public static oj a(@NonNull View view) {
        int i2 = R.id.checkLayout;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.checkLayout);
        if (frameLayout != null) {
            i2 = R.id.game_transfer_item_game_icon_img;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.game_transfer_item_game_icon_img);
            if (simpleDraweeView != null) {
                i2 = R.id.game_transfer_item_game_name_txt;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.game_transfer_item_game_name_txt);
                if (textView != null) {
                    i2 = R.id.game_transfer_item_game_size_txt;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.game_transfer_item_game_size_txt);
                    if (textView2 != null) {
                        i2 = R.id.game_transfer_list_item_transfer_status_chk;
                        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.game_transfer_list_item_transfer_status_chk);
                        if (checkBox != null) {
                            i2 = R.id.game_transfer_list_item_transfer_status_txt;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.game_transfer_list_item_transfer_status_txt);
                            if (textView3 != null) {
                                return new oj((RelativeLayout) view, frameLayout, simpleDraweeView, textView, textView2, checkBox, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static oj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static oj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_transfer_list_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23279a;
    }
}
