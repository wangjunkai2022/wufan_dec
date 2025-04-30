package com.join.mgps.adapter;

import android.content.Context;
import android.view.ViewGroup;
import com.join.mgps.adapter.a5;
import com.join.mgps.customview.GameTransferListItem;
import com.join.mgps.customview.GameTransferListItem_;
import com.join.mgps.dto.GameTransferBean;
import org.androidannotations.annotations.EBean;
import org.androidannotations.annotations.RootContext;
/* compiled from: GameTransferListAdapter.java */
@EBean
/* loaded from: classes3.dex */
public class i2 extends a5<GameTransferBean, GameTransferListItem> {

    /* renamed from: f  reason: collision with root package name */
    private static final String f42253f = "i2";
    @RootContext

    /* renamed from: d  reason: collision with root package name */
    Context f42254d;

    /* renamed from: e  reason: collision with root package name */
    boolean f42255e = false;

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: j */
    public void onBindViewHolder(a5.a<GameTransferListItem> aVar, int i2) {
        if (aVar instanceof a5.a) {
            aVar.a().b(i2, this.f41269a, this.f42255e);
            StringBuilder sb = new StringBuilder();
            sb.append("onBindViewHolder: ");
            sb.append(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.adapter.a5
    /* renamed from: k */
    public GameTransferListItem d(ViewGroup viewGroup, int i2) {
        return GameTransferListItem_.d(this.f42254d);
    }

    public void l(boolean z3) {
        this.f42255e = z3;
    }
}
