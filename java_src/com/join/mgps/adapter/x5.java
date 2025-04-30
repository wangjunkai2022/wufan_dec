package com.join.mgps.adapter;

import android.content.Intent;
import android.view.View;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.findgame.CategoryDetailListActivity;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.SimulatorFastEntryBean;
import java.util.List;
/* compiled from: SimulatorFastEntryAdapter.java */
/* loaded from: classes3.dex */
public class x5 extends BaseQuickAdapter<SimulatorFastEntryBean.FastEntryBean, com.join.mgps.base.b> {
    public x5(@Nullable List<SimulatorFastEntryBean.FastEntryBean> list) {
        super(R.layout.layout_simulator_fast_entry_item, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(SimulatorFastEntryBean.FastEntryBean fastEntryBean, View view) {
        Intent intent = new Intent(this.mContext, CategoryDetailListActivity.class);
        intent.putExtra("typeId", 1);
        intent.putExtra("tagId", fastEntryBean.getId());
        intent.putExtra("tagName", fastEntryBean.getTitle());
        this.mContext.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* renamed from: b */
    public void convert(com.join.mgps.base.b bVar, final SimulatorFastEntryBean.FastEntryBean fastEntryBean) {
        MyImageLoader.h((SimpleDraweeView) bVar.k(R.id.icon), fastEntryBean.getPic());
        bVar.K(R.id.name, fastEntryBean.getTitle());
        bVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.w5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                x5.this.c(fastEntryBean, view);
            }
        });
    }
}
