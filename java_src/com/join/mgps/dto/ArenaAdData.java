package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class ArenaAdData {
    private boolean c_has_not_read;
    private boolean l_has_not_read;
    private List<ArenaPopupInfoBean> popup_info;

    public List<ArenaPopupInfoBean> getPopup_info() {
        return this.popup_info;
    }

    public boolean isC_has_not_read() {
        return this.c_has_not_read;
    }

    public boolean isL_has_not_read() {
        return this.l_has_not_read;
    }

    public void setC_has_not_read(boolean z3) {
        this.c_has_not_read = z3;
    }

    public void setL_has_not_read(boolean z3) {
        this.l_has_not_read = z3;
    }

    public void setPopup_info(List<ArenaPopupInfoBean> list) {
        this.popup_info = list;
    }
}
