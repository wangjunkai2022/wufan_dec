package com.join.mgps.adapter;

import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.business.CollectionBeanSubBusiness;
import java.util.List;
/* compiled from: ModGameRecomendShrinkAdapter.java */
/* loaded from: classes3.dex */
public class z2 extends BaseQuickAdapter<CollectionBeanSubBusiness, com.join.mgps.base.b> {
    public z2(@Nullable List<CollectionBeanSubBusiness> list) {
        super(R.layout.item_mod_game_recommend_shrink, list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* renamed from: a */
    public void convert(com.join.mgps.base.b bVar, CollectionBeanSubBusiness collectionBeanSubBusiness) {
        MyImageLoader.h((SimpleDraweeView) bVar.k(R.id.ivGameIcon), collectionBeanSubBusiness.getIco_remote());
        ((TextView) bVar.k(R.id.tvGameName)).setText(collectionBeanSubBusiness.getGame_name());
    }
}
