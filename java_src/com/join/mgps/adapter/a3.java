package com.join.mgps.adapter;

import android.graphics.Color;
import android.text.TextUtils;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.TipBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: ModGameRecommendExpandAdapter.java */
/* loaded from: classes3.dex */
public class a3 extends BaseQuickAdapter<CollectionBeanSubBusiness, com.join.mgps.base.b> {

    /* renamed from: a  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f41263a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f41264b;

    /* renamed from: c  reason: collision with root package name */
    private String[] f41265c;

    public a3(@Nullable List<CollectionBeanSubBusiness> list) {
        super(R.layout.item_mod_game_recommend_expand, list);
        this.f41264b = new int[]{R.drawable.shape_bg_mod_game_recommend_tag1, R.drawable.shape_bg_mod_game_recommend_tag2, R.drawable.shape_bg_mod_game_recommend_tag3};
        this.f41265c = new String[]{"#EACBC3", "#E8E351", "#D1AFF4"};
        this.f41263a = list;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* renamed from: a */
    public void convert(com.join.mgps.base.b bVar, CollectionBeanSubBusiness collectionBeanSubBusiness) {
        DownloadTask B;
        Iterator<TipBean> it2;
        ((TextView) bVar.k(R.id.tvGameName)).setText(collectionBeanSubBusiness.getGame_name());
        bVar.k(R.id.root).setBackgroundResource(collectionBeanSubBusiness.a() ? R.drawable.shape_bg_recom_selected : 0);
        int i2 = 0;
        for (CollectionBeanSubBusiness collectionBeanSubBusiness2 : this.f41263a) {
            if (TextUtils.equals(collectionBeanSubBusiness2.getGame_id(), collectionBeanSubBusiness.getGame_id())) {
                break;
            } else if (!TextUtils.isEmpty(collectionBeanSubBusiness2.getGame_dimension())) {
                i2++;
            }
        }
        int i4 = i2 % 3;
        bVar.k(R.id.llTag).setBackgroundResource(this.f41264b[i4]);
        ((TextView) bVar.k(R.id.tvTag)).setTextColor(Color.parseColor(this.f41265c[i4]));
        bVar.O(R.id.llTag, !TextUtils.isEmpty(collectionBeanSubBusiness.getGame_dimension()));
        ((TextView) bVar.k(R.id.tvTag)).setText(collectionBeanSubBusiness.getGame_dimension());
        ArrayList<TipBean> tag_info = collectionBeanSubBusiness.getTag_info();
        String str = "";
        if (tag_info != null) {
            while (tag_info.iterator().hasNext()) {
                str = str + it2.next().getName() + " ";
            }
        }
        ((TextView) bVar.k(R.id.tvTags)).setText(str);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) bVar.k(R.id.ivGameIcon);
        if (simpleDraweeView.getTag() == null || !TextUtils.equals(simpleDraweeView.getTag().toString(), collectionBeanSubBusiness.getIco_remote())) {
            MyImageLoader.h(simpleDraweeView, collectionBeanSubBusiness.getIco_remote());
            simpleDraweeView.setTag(collectionBeanSubBusiness.getIco_remote());
        }
        if (collectionBeanSubBusiness.getPic_info() != null && collectionBeanSubBusiness.getPic_info().size() > 0 && collectionBeanSubBusiness.getPic_info().get(0).getRemote() != null) {
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) bVar.k(R.id.ivGamePoster);
            if (simpleDraweeView2.getTag() == null || !TextUtils.equals(simpleDraweeView2.getTag().toString(), collectionBeanSubBusiness.getPic_info().get(0).getRemote().getPath())) {
                MyImageLoader.h(simpleDraweeView2, collectionBeanSubBusiness.getPic_info().get(0).getRemote().getPath());
                simpleDraweeView2.getHierarchy().x(r.c.f12144g);
                simpleDraweeView2.setTag(collectionBeanSubBusiness.getPic_info().get(0).getRemote().getPath());
            }
        }
        ProgressBar progressBar = (ProgressBar) bVar.k(R.id.progress);
        if (collectionBeanSubBusiness.getMod_info() != null) {
            B = g1.f.G().B(collectionBeanSubBusiness.getDownloadtaskDown().getRef_crc_sign_id());
        } else {
            B = g1.f.G().B(collectionBeanSubBusiness.getDownloadtaskDown().getCrc_link_type_val());
        }
        String str2 = "暂停";
        if (B != null) {
            int status = B.getStatus();
            if (status != 0) {
                if (status == 27) {
                    progressBar.setVisibility(0);
                    progressBar.setProgress((int) B.getProgress());
                } else if (status == 48) {
                    progressBar.setVisibility(8);
                    str2 = "安装中";
                } else if (status != 2) {
                    if (status != 3) {
                        if (status != 5) {
                            if (status != 6) {
                                if (status != 7) {
                                    if (status != 42) {
                                        if (status != 43) {
                                            switch (status) {
                                                case 10:
                                                    progressBar.setVisibility(8);
                                                    str2 = "等待";
                                                    break;
                                                case 11:
                                                    progressBar.setVisibility(8);
                                                    str2 = "安装";
                                                    break;
                                                case 12:
                                                    progressBar.setVisibility(8);
                                                    str2 = "解压中";
                                                    break;
                                                case 13:
                                                    progressBar.setVisibility(8);
                                                    str2 = "解压";
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        progressBar.setVisibility(8);
                        str2 = "启动";
                    }
                    progressBar.setVisibility(0);
                    progressBar.setProgress((int) B.getProgress());
                    str2 = "继续";
                } else {
                    progressBar.setVisibility(0);
                    progressBar.setProgress((int) B.getProgress());
                }
                ((TextView) bVar.k(R.id.tvOption)).setText(str2);
                bVar.c(R.id.tvOption);
            }
            progressBar.setVisibility(8);
        }
        str2 = "获取";
        ((TextView) bVar.k(R.id.tvOption)).setText(str2);
        bVar.c(R.id.tvOption);
    }

    @Override // com.join.mgps.base.BaseQuickAdapter
    public void setNewData(@Nullable List<CollectionBeanSubBusiness> list) {
        super.setNewData(list);
        this.f41263a = list;
    }
}
