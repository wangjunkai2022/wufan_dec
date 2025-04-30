package com.join.mgps.dto;

import com.join.kotlin.ui.findgame.data.TagData;
import java.util.List;
/* loaded from: classes4.dex */
public class RankingMainDataBean {
    private List<CollectionBeanSub> rank_list;
    private List<TagData> rank_type;

    public List<CollectionBeanSub> getRank_list() {
        return this.rank_list;
    }

    public List<TagData> getRank_type() {
        return this.rank_type;
    }

    public void setRank_list(List<CollectionBeanSub> list) {
        this.rank_list = list;
    }

    public void setRank_type(List<TagData> list) {
        this.rank_type = list;
    }
}
