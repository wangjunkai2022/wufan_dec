package com.bytedance.sdk.openadsdk;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.dislike.TTDislikeListView;
/* loaded from: classes2.dex */
public abstract class TTDislikeDialogAbstract extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private View f10493a;

    /* renamed from: b  reason: collision with root package name */
    private TTDislikeController f10494b;

    public TTDislikeDialogAbstract(Context context) {
        super(context);
    }

    protected void a() {
        if (this.f10494b == null || this.f10493a == null) {
            return;
        }
        int[] tTDislikeListViewIds = getTTDislikeListViewIds();
        if (tTDislikeListViewIds != null && tTDislikeListViewIds.length > 0) {
            for (int i2 : tTDislikeListViewIds) {
                View findViewById = this.f10493a.findViewById(i2);
                if (findViewById != null) {
                    if (findViewById instanceof TTDislikeListView) {
                        ((TTDislikeListView) findViewById).setDislikeInfo(this.f10494b);
                    } else {
                        throw new IllegalArgumentException("getTTDislikeListViewIds找到的view类型异常，请检查");
                    }
                } else {
                    throw new IllegalArgumentException("getTTDislikeListViewIds提供的id找不到view，请检查");
                }
            }
            return;
        }
        throw new IllegalArgumentException("dislike选项列表为空，请设置TTDislikeListView");
    }

    protected void b() {
        TTDislikeController tTDislikeController = this.f10494b;
        if (tTDislikeController != null) {
            tTDislikeController.onDislikeEvent(getContext(), true);
        }
    }

    public abstract int getLayoutId();

    public abstract ViewGroup.LayoutParams getLayoutParams();

    public abstract int[] getTTDislikeListViewIds();

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) null);
        this.f10493a = inflate;
        if (inflate != null) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            View view = this.f10493a;
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(-1, -1);
            }
            setContentView(view, layoutParams);
            a();
            return;
        }
        throw new IllegalArgumentException("getLayoutId布局文件id可能异常，请检查");
    }

    public void setDislikeModel(TTDislikeController tTDislikeController) {
        this.f10494b = tTDislikeController;
        a();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        b();
    }

    public void startPersonalizePromptActivity() {
        TTDislikeController tTDislikeController = this.f10494b;
        if (tTDislikeController != null) {
            tTDislikeController.openWebPage(getContext(), true);
            this.f10494b.onDislikeEvent(getContext(), false);
        }
    }

    public TTDislikeDialogAbstract(Context context, int i2) {
        super(context, i2);
    }
}
