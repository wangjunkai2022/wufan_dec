package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class RecommendAdInfoData implements Serializable {
    private RecommendAdInfoMainBean main;
    private List<RecommendAdInfoBean> sub;

    public RecommendAdInfoMainBean getMain() {
        return this.main;
    }

    public List<RecommendAdInfoBean> getSub() {
        return this.sub;
    }

    public void setMain(RecommendAdInfoMainBean recommendAdInfoMainBean) {
        this.main = recommendAdInfoMainBean;
    }

    public void setSub(List<RecommendAdInfoBean> list) {
        this.sub = list;
    }
}
