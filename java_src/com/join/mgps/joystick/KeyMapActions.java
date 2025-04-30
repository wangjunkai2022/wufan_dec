package com.join.mgps.joystick;

import android.content.Context;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.joystick.map.KeyMap;
import com.papa.controller.core.ControllerManager;
import com.papa.controller.core.d;
import com.papa.sim.statistic.JoyStickConfig;
import com.papa.sim.statistic.p;
import java.util.Date;
import java.util.List;
/* loaded from: classes4.dex */
public class KeyMapActions {
    private static void fillConnectedGamepadInfo(Context context, JoyStickConfig joyStickConfig) {
        List<ControllerManager.c> q3 = d.r(context).q();
        String str = "";
        String str2 = str;
        if (q3 != null) {
            int i2 = 0;
            while (i2 < q3.size()) {
                String str3 = str + q3.get(i2).d() + ";";
                str2 = str2 + q3.get(i2).a().replace(":", "_") + ";";
                i2++;
                str = str3;
            }
        }
        if (!str.equals("")) {
            str.substring(0, str.length() - 1);
        }
        if (!str2.equals("")) {
            str2.substring(0, str.length() - 1);
        }
        joyStickConfig.setGamepad_name(str);
        joyStickConfig.setGamepad_mac(str2);
    }

    public static void saveStat(Context context, KeyMap.EmuMap emuMap, String str) {
        if (emuMap == null && context == null) {
            return;
        }
        int i2 = -1;
        if (emuMap == KeyMap.EmuMap.FBA) {
            i2 = 31;
        } else if (emuMap == KeyMap.EmuMap.GBA) {
            i2 = 33;
        } else if (emuMap == KeyMap.EmuMap.SFC) {
            i2 = 43;
        } else if (emuMap == KeyMap.EmuMap.PSP) {
            i2 = 34;
        } else if (emuMap == KeyMap.EmuMap.FC) {
            i2 = 35;
        } else if (emuMap == KeyMap.EmuMap.MD) {
            i2 = 51;
        } else if (emuMap == KeyMap.EmuMap.PS) {
            i2 = 53;
        } else if (emuMap == KeyMap.EmuMap.WSC) {
            i2 = 54;
        } else if (emuMap == KeyMap.EmuMap.GBC) {
            i2 = 56;
        } else if (emuMap == KeyMap.EmuMap.DC) {
            i2 = 60;
        } else if (emuMap == KeyMap.EmuMap.N64) {
            i2 = 57;
        }
        p.l(context).Y(AccountUtil_.getInstance_(context).getUid(), AccountUtil_.getInstance_(context).isTourist(), "", "", 0);
        JoyStickConfig joyStickConfig = new JoyStickConfig();
        AccountBean accountData = AccountUtil_.getInstance_(context).getAccountData();
        if (accountData != null) {
            joyStickConfig.setUid(accountData.getUid());
        }
        joyStickConfig.setType(i2);
        joyStickConfig.setFile(str);
        fillConnectedGamepadInfo(context, joyStickConfig);
        joyStickConfig.setUpdate_time(new Date().getTime());
        p.l(context).r1(JsonMapper.nonDefaultMapper().toJson(joyStickConfig), AccountUtil_.getInstance_(context).getUid());
    }
}
