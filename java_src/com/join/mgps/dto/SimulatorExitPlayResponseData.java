package com.join.mgps.dto;

import com.join.mgps.dto.FriendBackGameRspBean;
import java.util.List;
/* loaded from: classes4.dex */
public class SimulatorExitPlayResponseData {
    private RecomDatabean adInfo;
    private List<FriendBackGameRspBean.FriendInfo> buddyList;
    private List<GamedetialModleFourBean> gameList;
    private GameMasteryLevel gameMasteryLevel;

    public RecomDatabean getAdInfo() {
        return this.adInfo;
    }

    public List<FriendBackGameRspBean.FriendInfo> getBuddyList() {
        return this.buddyList;
    }

    public List<GamedetialModleFourBean> getGameList() {
        return this.gameList;
    }

    public GameMasteryLevel getGameMasteryLevel() {
        return this.gameMasteryLevel;
    }

    public void setAdInfo(RecomDatabean recomDatabean) {
        this.adInfo = recomDatabean;
    }

    public void setBuddyList(List<FriendBackGameRspBean.FriendInfo> list) {
        this.buddyList = list;
    }

    public void setGameList(List<GamedetialModleFourBean> list) {
        this.gameList = list;
    }

    public void setGameMasteryLevel(GameMasteryLevel gameMasteryLevel) {
        this.gameMasteryLevel = gameMasteryLevel;
    }
}
