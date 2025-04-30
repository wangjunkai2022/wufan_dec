package com.join.mgps.adapter;

import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.PAPAHomeBeanV7;
import java.util.Date;
import java.util.List;
/* compiled from: HomeGameListGameNewsAdapter.java */
/* loaded from: classes3.dex */
public class l2 extends BaseQuickAdapter<PAPAHomeBeanV7.NgSelectionDTO, com.join.mgps.base.b> {
    public l2(@Nullable List<PAPAHomeBeanV7.NgSelectionDTO> list) {
        super(R.layout.mgpapa_home_game_news_layout, list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* renamed from: a */
    public void convert(com.join.mgps.base.b bVar, PAPAHomeBeanV7.NgSelectionDTO ngSelectionDTO) {
        try {
            long parseLong = Long.parseLong(ngSelectionDTO.getDate()) * 1000;
            ((TextView) bVar.k(R.id.tvDate)).setText(com.join.mgps.Util.x.t(parseLong) ? "今天" : com.join.mgps.Util.x.e(new Date(parseLong), "MM.dd"));
        } catch (Exception unused) {
            ((TextView) bVar.k(R.id.tvDate)).setText(ngSelectionDTO.getDate());
        }
        ((TextView) bVar.k(R.id.tvDesc)).setText(ngSelectionDTO.getTitle());
        ((TextView) bVar.k(R.id.tvGameName)).setText(ngSelectionDTO.getName());
        MyImageLoader.h((SimpleDraweeView) bVar.k(R.id.ivGameIcon), ngSelectionDTO.getIco());
    }
}
