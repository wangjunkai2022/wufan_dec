package com.join.mgps.base;

import android.util.SparseIntArray;
import android.view.ViewGroup;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import com.join.mgps.base.b;
import j1.b;
import java.util.List;
/* compiled from: BaseMultiItemQuickAdapter.java */
/* loaded from: classes3.dex */
public abstract class a<T extends j1.b, K extends b> extends BaseQuickAdapter<T, K> {

    /* renamed from: b  reason: collision with root package name */
    private static final int f44736b = -255;

    /* renamed from: c  reason: collision with root package name */
    public static final int f44737c = -404;

    /* renamed from: a  reason: collision with root package name */
    private SparseIntArray f44738a;

    public a(List<T> list) {
        super(list);
    }

    private int b(int i2) {
        return this.f44738a.get(i2, f44737c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i2, @LayoutRes int i4) {
        if (this.f44738a == null) {
            this.f44738a = new SparseIntArray();
        }
        this.f44738a.put(i2, i4);
    }

    public int c(int i2) {
        List<T> data = getData();
        j1.b bVar = (j1.b) getItem(i2);
        if (!isExpandable(bVar)) {
            for (int i4 = i2 - 1; i4 >= 0; i4--) {
                if (isExpandable((j1.b) data.get(i4))) {
                    return i4;
                }
            }
            return -1;
        }
        j1.a aVar = (j1.a) bVar;
        for (int i5 = i2 - 1; i5 >= 0; i5--) {
            j1.b bVar2 = (j1.b) data.get(i5);
            if (isExpandable(bVar2) && aVar.h() > ((j1.a) bVar2).h()) {
                return i5;
            }
        }
        return -1;
    }

    @Override // com.join.mgps.base.BaseQuickAdapter
    /* renamed from: d */
    public boolean isExpandable(j1.b bVar) {
        return bVar != null && (bVar instanceof j1.a);
    }

    protected void e(j1.a aVar, int i2) {
        List c4;
        if (!aVar.b() || (c4 = aVar.c()) == null || c4.size() == 0) {
            return;
        }
        int size = c4.size();
        for (int i4 = 0; i4 < size; i4++) {
            remove(i2 + 1);
        }
    }

    protected void f(T t3) {
        j1.a aVar;
        int parentPosition = getParentPosition(t3);
        if (parentPosition < 0 || (aVar = (j1.a) this.mData.get(parentPosition)) == t3) {
            return;
        }
        aVar.c().remove(t3);
    }

    protected void g(@LayoutRes int i2) {
        a(f44736b, i2);
    }

    @Override // com.join.mgps.base.BaseQuickAdapter
    protected int getDefItemViewType(int i2) {
        j1.b bVar = (j1.b) this.mData.get(i2);
        return bVar != null ? bVar.getItemType() : f44736b;
    }

    @Override // com.join.mgps.base.BaseQuickAdapter
    protected K onCreateDefViewHolder(ViewGroup viewGroup, int i2) {
        return createBaseViewHolder(viewGroup, b(i2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.mgps.base.BaseQuickAdapter
    public void remove(@IntRange(from = 0) int i2) {
        List<T> list = this.mData;
        if (list == 0 || i2 < 0 || i2 >= list.size()) {
            return;
        }
        j1.b bVar = (j1.b) this.mData.get(i2);
        if (bVar instanceof j1.a) {
            e((j1.a) bVar, i2);
        }
        f(bVar);
        super.remove(i2);
    }
}
