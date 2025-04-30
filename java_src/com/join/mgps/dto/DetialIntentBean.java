package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class DetialIntentBean implements Serializable {
    public static final int GIFTMORE = 4;
    public static final int INFORMITIONMORE = 2;
    public static final int SERVICEMORE = 3;
    public static final int STRATEGYMORE = 1;
    public static final int STRATEGYTABLE = 5;
    private String gameId;
    private int intentType;
    private int startegyTab;
    private List<GameDetialStrategyTag> strategyTags;

    public String getGameId() {
        return this.gameId;
    }

    public int getIntentType() {
        return this.intentType;
    }

    public int getStartegyTab() {
        return this.startegyTab;
    }

    public List<GameDetialStrategyTag> getStrategyTags() {
        return this.strategyTags;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setIntentType(int i2) {
        this.intentType = i2;
    }

    public void setStartegyTab(int i2) {
        this.startegyTab = i2;
    }

    public void setStrategyTags(List<GameDetialStrategyTag> list) {
        this.strategyTags = list;
    }
}
