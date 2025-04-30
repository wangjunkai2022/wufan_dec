package com.join.mgps.adapter;

import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.List;
/* compiled from: HomeRecommendAdapter.java */
/* loaded from: classes3.dex */
public class m2 extends BaseQuickAdapter<PAPAHomeBeanV7.HomeBeanDTO, com.join.mgps.base.b> {
    public m2(@Nullable List<PAPAHomeBeanV7.HomeBeanDTO> list) {
        super(R.layout.mgpapa_home_recommend_item, list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* renamed from: a */
    public void convert(com.join.mgps.base.b bVar, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        PAPAHomeBeanV7.GInfoDTO g_info = homeBeanDTO.getG_info();
        if (g_info != null) {
            MyImageLoader.h((SimpleDraweeView) bVar.k(R.id.ivGameIcon), g_info.getIco());
            ((TextView) bVar.k(R.id.tvGameName)).setText(g_info.getName());
        }
        bVar.c(R.id.tvBtn);
        bVar.O(R.id.tvBtn, true);
        bVar.O(R.id.loading_progress, false);
        TextView textView = (TextView) bVar.k(R.id.tvBtn);
        textView.setText("获取");
        DownloadTask downloadTask = homeBeanDTO.getDownloadTask();
        CollectionBeanSub gameBean = homeBeanDTO.getGameBean();
        if (downloadTask != null) {
            downloadTask.getSize();
        }
        if (gameBean != null) {
            if ((ConstantIntEnum.H5.value() + "").equals(gameBean.getPlugin_num())) {
                textView.setText("开始");
                return;
            }
        }
        if (downloadTask == null) {
            if (gameBean == null) {
                return;
            }
            if (UtilsMy.e0(gameBean.getTag_info())) {
                if (com.join.android.app.common.utils.a.g0(this.mContext).c(this.mContext, gameBean.getPackageName()) && UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) == 0) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this.mContext).k(this.mContext, gameBean.getPackageName());
                    if (com.join.mgps.Util.d2.i(gameBean.getVer()) && k4.d() < Integer.parseInt(gameBean.getVer())) {
                        textView.setText("更新");
                        return;
                    } else {
                        textView.setText("启动");
                        return;
                    }
                }
                UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
                UtilsMy.t2(textView, textView, gameBean);
                return;
            }
            UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id());
            UtilsMy.t2(textView, textView, gameBean);
            return;
        }
        int status = downloadTask.getStatus();
        if (gameBean != null && UtilsMy.m0(gameBean.getPay_tag_info(), gameBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 27) {
                textView.setText("暂停中");
                return;
            } else if (status == 48) {
                textView.setText("安装中");
                return;
            } else if (status != 2) {
                if (status != 3) {
                    if (status != 5) {
                        if (status != 6) {
                            if (status != 7) {
                                if (status != 42) {
                                    if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                textView.setText("更新");
                                                return;
                                            case 10:
                                                textView.setText("等待");
                                                return;
                                            case 11:
                                                textView.setText("安装");
                                                return;
                                            case 12:
                                                textView.setText("解压中");
                                                return;
                                            case 13:
                                                textView.setText("解压");
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    textView.setText("启动");
                    return;
                }
                textView.setText("继续");
                return;
            } else {
                UtilsMy.C3(downloadTask);
                textView.setText(downloadTask.getProgress() + "%");
                return;
            }
        }
        textView.setText("获取");
    }
}
