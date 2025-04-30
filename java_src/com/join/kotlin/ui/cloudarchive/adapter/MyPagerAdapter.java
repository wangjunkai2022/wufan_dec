package com.join.kotlin.ui.cloudarchive.adapter;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MyPagerAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u0011¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0002H\u0016J \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0006H\u0016R\u001f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u00118\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/adapter/MyPagerAdapter;", "Landroidx/viewpager/widget/PagerAdapter;", "", "getCount", "Landroid/view/View;", "p0", "", "p1", "", "isViewFromObject", "Landroid/view/ViewGroup;", "container", "position", "instantiateItem", "any", "", "destroyItem", "", "mViewList", "Ljava/util/List;", "getMViewList", "()Ljava/util/List;", "<init>", "(Ljava/util/List;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class MyPagerAdapter extends PagerAdapter {
    @NotNull
    private final List<View> mViewList;

    /* JADX WARN: Multi-variable type inference failed */
    public MyPagerAdapter(@NotNull List<? extends View> mViewList) {
        Intrinsics.checkNotNullParameter(mViewList, "mViewList");
        this.mViewList = mViewList;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(@NotNull ViewGroup container, int i2, @NotNull Object any) {
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(any, "any");
        List<View> list = this.mViewList;
        Intrinsics.checkNotNull(list);
        container.removeView(list.get(i2));
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        List<View> list = this.mViewList;
        Intrinsics.checkNotNull(list);
        return list.size();
    }

    @NotNull
    public final List<View> getMViewList() {
        return this.mViewList;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @NotNull
    public Object instantiateItem(@NotNull ViewGroup container, int i2) {
        Intrinsics.checkNotNullParameter(container, "container");
        List<View> list = this.mViewList;
        container.addView(list != null ? list.get(i2) : null);
        List<View> list2 = this.mViewList;
        Intrinsics.checkNotNull(list2);
        return list2.get(i2);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(@NotNull View p02, @NotNull Object p12) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        Intrinsics.checkNotNullParameter(p12, "p1");
        return Intrinsics.areEqual(p02, p12);
    }
}
