package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameShareData {
    GameShareStatisticsInfo statistics_info;
    List<TipBean> tag_info;

    public GameShareStatisticsInfo getStatistics_info() {
        return this.statistics_info;
    }

    public List<TipBean> getTag_info() {
        return this.tag_info;
    }

    public void setStatistics_info(GameShareStatisticsInfo gameShareStatisticsInfo) {
        this.statistics_info = gameShareStatisticsInfo;
    }

    public void setTag_info(List<TipBean> list) {
        this.tag_info = list;
    }
}
