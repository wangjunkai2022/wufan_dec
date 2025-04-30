package com.papa91.arc.view;

import com.papa91.arc.bean.GateBean;
import com.papa91.arc.bean.SkillConfigBean;
import com.papa91.arc.bean.SkillTableDataBean;
import com.papa91.arc.bean.SpBindsDataBean;
import com.papa91.arc.bean.TypeBean;
import com.papa91.arc.bean.VipBean;
import java.util.List;
import org.ppsspp.ppsspp.CheatInfo;
import org.ppsspp.ppsspp.EditCheatInfo;
/* loaded from: classes4.dex */
public interface IEmulator {
    void addEditCheatInfo(EditCheatInfo editCheatInfo);

    void cheatInfoEnable(int i2, int i4);

    boolean checkCheatCodeInfo(String str, boolean z3);

    void deleteEditCheatInfo(int i2);

    void enableEidtCheat(int i2, int i4);

    boolean getAutoSlotStatus();

    int getAutoStateMax();

    int getAutoStateTimeCount();

    int getAutoStateTimeGap();

    List<CheatInfo> getCheatListData();

    int getCurrentChar();

    String getCustomCheatTip(boolean z3);

    List<EditCheatInfo> getEditCheatListData();

    String getGameId();

    List<GateBean> getGateData();

    List<TypeBean> getMenuTypes(int i2);

    String getModSubfix();

    SkillConfigBean getSkillConfigData();

    SkillTableDataBean getSkillTableData();

    int[] getSpBindImages(int i2);

    SpBindsDataBean getSpBindsData();

    String getUserId();

    int getVip();

    List<VipBean> getVipData();

    void goSlotShop();

    void goVipShop(int i2, boolean z3);

    boolean isSPVisible();

    void loadAdVideo();

    void loadGateStage(int i2);

    void loadSlotState(String str);

    void modifyEditCheatInfo(int i2, EditCheatInfo editCheatInfo);

    void pauseGame();

    void resumeGame();

    String romPath();

    void saveBindsFileData();

    void saveSlotState(String str);

    void screenMode(int i2);

    void setAutoSlotStatus(int i2);

    void setSPBindData(int i2, int i4, int i5);

    void setSPMenuVisible(boolean z3);

    void showAdVideo();

    boolean showGGCodeButton();

    void showVip(String... strArr);

    String ugcPath();
}
