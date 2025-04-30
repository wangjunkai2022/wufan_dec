package com.join.mgps.adapter;

import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.PAPAHomeBeanV7;
import java.util.List;
/* compiled from: FastEntryAdapter.java */
/* loaded from: classes3.dex */
public class s extends BaseQuickAdapter<PAPAHomeBeanV7.HomeBeanDTO, com.join.mgps.base.b> {
    public s(@Nullable List<PAPAHomeBeanV7.HomeBeanDTO> list) {
        super(R.layout.papamain_fastitem_layout_v2, list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* renamed from: a */
    public void convert(com.join.mgps.base.b bVar, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        MyImageLoader.h((SimpleDraweeView) bVar.k(R.id.icon), homeBeanDTO.getBig_pic());
        ((TextView) bVar.k(R.id.name)).setText(homeBeanDTO.getTitle());
    }
}
