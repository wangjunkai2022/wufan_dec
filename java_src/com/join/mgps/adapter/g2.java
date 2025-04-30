package com.join.mgps.adapter;

import android.content.Context;
import android.view.ViewGroup;
import com.join.mgps.adapter.a5;
import com.join.mgps.customview.GameTransferHistoryListItem;
import com.join.mgps.customview.GameTransferHistoryListItem_;
import com.join.mgps.dto.GameTransferBean;
import org.androidannotations.annotations.EBean;
import org.androidannotations.annotations.RootContext;
/* compiled from: GameTransferHistoryAdapter.java */
@EBean
/* loaded from: classes3.dex */
public class g2 extends a5<GameTransferBean, GameTransferHistoryListItem> {

    /* renamed from: e  reason: collision with root package name */
    private static final String f41674e = "g2";
    @RootContext

    /* renamed from: d  reason: collision with root package name */
    Context f41675d;

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: j */
    public void onBindViewHolder(a5.a<GameTransferHistoryListItem> aVar, int i2) {
        if (aVar instanceof a5.a) {
            StringBuilder sb = new StringBuilder();
            sb.append("onBindViewHolder: position");
            sb.append(i2);
            aVar.a().b((GameTransferBean) this.f41269a.valueAt(i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.adapter.a5
    /* renamed from: k */
    public GameTransferHistoryListItem d(ViewGroup viewGroup, int i2) {
        return GameTransferHistoryListItem_.e(this.f41675d);
    }
}
