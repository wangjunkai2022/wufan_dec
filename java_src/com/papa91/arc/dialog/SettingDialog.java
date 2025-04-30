package com.papa91.arc.dialog;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import com.papa91.arc.bean.GateBean;
import com.papa91.arc.bean.SkillConfigBean;
import com.papa91.arc.bean.SkillTableDataBean;
import com.papa91.arc.bean.SpBindsDataBean;
import com.papa91.arc.bean.TypeBean;
import com.papa91.arc.bean.VipBean;
import com.papa91.arc.view.BaseDialog;
import com.papa91.arc.view.IEmulator;
import java.util.ArrayList;
import java.util.List;
import org.ppsspp.ppsspp.CheatInfo;
import org.ppsspp.ppsspp.EditCheatInfo;
/* loaded from: classes4.dex */
public abstract class SettingDialog extends BaseDialog implements View.OnClickListener, IEmulator {
    protected String appContent;
    protected IEmulator emulatorListener;

    public SettingDialog(Context context) {
        super(context);
        this.appContent = "http://anv3cjapi.5fun.com";
        setContentView(getLayoutId());
        setBackgroundDimAmount(1.0f);
    }

    @Override // com.papa91.arc.view.IEmulator
    public void addEditCheatInfo(EditCheatInfo editCheatInfo) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.addEditCheatInfo(editCheatInfo);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void cheatInfoEnable(int i2, int i4) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.cheatInfoEnable(i2, i4);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean checkCheatCodeInfo(String str, boolean z3) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.checkCheatCodeInfo(str, z3);
        }
        return false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void deleteEditCheatInfo(int i2) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.deleteEditCheatInfo(i2);
        }
    }

    @Override // com.papa91.arc.view.BaseDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        resumeGame();
    }

    public void dismissOnly() {
        super.dismiss();
    }

    @Override // com.papa91.arc.view.IEmulator
    public void enableEidtCheat(int i2, int i4) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.enableEidtCheat(i2, i4);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean getAutoSlotStatus() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getAutoSlotStatus();
        }
        return false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getAutoStateMax() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getAutoStateMax();
        }
        return 10;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getAutoStateTimeCount() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getAutoStateTimeCount();
        }
        return 0;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getAutoStateTimeGap() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getAutoStateTimeGap();
        }
        return 20;
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<CheatInfo> getCheatListData() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getCheatListData();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getCurrentChar() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getCurrentChar();
        }
        return 0;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getCustomCheatTip(boolean z3) {
        IEmulator iEmulator = this.emulatorListener;
        return iEmulator != null ? iEmulator.getCustomCheatTip(z3) : "";
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<EditCheatInfo> getEditCheatListData() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getEditCheatListData();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getGameId() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getGameId();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<GateBean> getGateData() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getGateData();
        }
        return null;
    }

    public abstract int getLayoutId();

    @Override // com.papa91.arc.view.IEmulator
    public List<TypeBean> getMenuTypes(int i2) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getMenuTypes(i2);
        }
        return new ArrayList();
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getModSubfix() {
        IEmulator iEmulator = this.emulatorListener;
        return iEmulator != null ? iEmulator.getModSubfix() : "";
    }

    @Override // com.papa91.arc.view.IEmulator
    public SkillConfigBean getSkillConfigData() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getSkillConfigData();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public SkillTableDataBean getSkillTableData() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getSkillTableData();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int[] getSpBindImages(int i2) {
        IEmulator iEmulator = this.emulatorListener;
        return iEmulator != null ? iEmulator.getSpBindImages(i2) : new int[0];
    }

    @Override // com.papa91.arc.view.IEmulator
    public SpBindsDataBean getSpBindsData() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getSpBindsData();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getUserId() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getUserId();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getVip() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getVip();
        }
        return 0;
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<VipBean> getVipData() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getVipData();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void goSlotShop() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.goSlotShop();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void goVipShop(int i2, boolean z3) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.goVipShop(i2, z3);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean isSPVisible() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.isSPVisible();
        }
        return false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void loadAdVideo() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.loadAdVideo();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void loadGateStage(int i2) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.loadGateStage(i2);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void loadSlotState(String str) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.loadSlotState(str);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void modifyEditCheatInfo(int i2, EditCheatInfo editCheatInfo) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.modifyEditCheatInfo(i2, editCheatInfo);
        }
    }

    public boolean needScreenAdapter() {
        return true;
    }

    public void onClick(View view) {
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public void onVipChanged() {
    }

    public void pauseGame() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.pauseGame();
        }
    }

    public void resumeGame() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.resumeGame();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public String romPath() {
        IEmulator iEmulator = this.emulatorListener;
        return iEmulator != null ? iEmulator.romPath() : "";
    }

    @Override // com.papa91.arc.view.IEmulator
    public void saveBindsFileData() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.saveBindsFileData();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void saveSlotState(String str) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.saveSlotState(str);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void screenMode(int i2) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.screenMode(i2);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void setAutoSlotStatus(int i2) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.setAutoSlotStatus(i2);
        }
    }

    public void setOnEmulatorListener(IEmulator iEmulator) {
        this.emulatorListener = iEmulator;
    }

    public void setOnListener(View... viewArr) {
        if (viewArr == null) {
            return;
        }
        for (View view : viewArr) {
            view.setOnClickListener(this);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void setSPBindData(int i2, int i4, int i5) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.setSPBindData(i2, i4, i5);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void setSPMenuVisible(boolean z3) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.setSPMenuVisible(z3);
        }
    }

    public void setappContentUrl(String str) {
        this.appContent = str;
    }

    @Override // com.papa91.arc.view.BaseDialog, android.app.Dialog
    public void show() {
        pauseGame();
        super.show();
    }

    @Override // com.papa91.arc.view.IEmulator
    public void showAdVideo() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.showAdVideo();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean showGGCodeButton() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.showGGCodeButton();
        }
        return false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void showVip(String... strArr) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.showVip(strArr);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public String ugcPath() {
        IEmulator iEmulator = this.emulatorListener;
        return iEmulator != null ? iEmulator.ugcPath() : "";
    }

    public SettingDialog(Context context, int i2) {
        super(context, i2);
        this.appContent = "http://anv3cjapi.5fun.com";
        setContentView(getLayoutId());
        setBackgroundDimAmount(1.0f);
    }
}
