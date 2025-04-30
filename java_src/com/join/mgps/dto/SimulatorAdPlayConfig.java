package com.join.mgps.dto;

import java.util.Calendar;
import java.util.List;
/* loaded from: classes4.dex */
public class SimulatorAdPlayConfig extends BaseBean {
    private long record_time;
    private List<SimulatorAdPlayRecord> simulator_fc_cfg;
    private List<SimulatorAdPlayRecord> simulator_gba_cfg;
    private List<SimulatorAdPlayRecord> simulator_gold_finger_cfg;
    private List<SimulatorAdPlayRecord> simulator_jj_cfg;
    private List<SimulatorAdPlayRecord> simulator_psp_cfg;

    public SimulatorAdPlayRecord getPlayConfig(List<SimulatorAdPlayRecord> list) {
        if (list != null) {
            for (SimulatorAdPlayRecord simulatorAdPlayRecord : list) {
                if (simulatorAdPlayRecord.canPlay()) {
                    return simulatorAdPlayRecord;
                }
            }
        }
        return null;
    }

    public long getRecord_time() {
        return this.record_time;
    }

    public List<SimulatorAdPlayRecord> getSimulator_fc_cfg() {
        return this.simulator_fc_cfg;
    }

    public List<SimulatorAdPlayRecord> getSimulator_gba_cfg() {
        return this.simulator_gba_cfg;
    }

    public List<SimulatorAdPlayRecord> getSimulator_gold_finger_cfg() {
        return this.simulator_gold_finger_cfg;
    }

    public List<SimulatorAdPlayRecord> getSimulator_jj_cfg() {
        return this.simulator_jj_cfg;
    }

    public List<SimulatorAdPlayRecord> getSimulator_psp_cfg() {
        return this.simulator_psp_cfg;
    }

    public boolean needReset() {
        return this.record_time != ((long) Calendar.getInstance().get(6));
    }

    public void setRecord_time(long j4) {
        this.record_time = j4;
    }

    public void setSimulator_fc_cfg(List<SimulatorAdPlayRecord> list) {
        this.simulator_fc_cfg = list;
    }

    public void setSimulator_gba_cfg(List<SimulatorAdPlayRecord> list) {
        this.simulator_gba_cfg = list;
    }

    public void setSimulator_gold_finger_cfg(List<SimulatorAdPlayRecord> list) {
        this.simulator_gold_finger_cfg = list;
    }

    public void setSimulator_jj_cfg(List<SimulatorAdPlayRecord> list) {
        this.simulator_jj_cfg = list;
    }

    public void setSimulator_psp_cfg(List<SimulatorAdPlayRecord> list) {
        this.simulator_psp_cfg = list;
    }

    public SimulatorAdPlayRecord getPlayConfig(List<SimulatorAdPlayRecord> list, int i2) {
        if (list != null) {
            for (SimulatorAdPlayRecord simulatorAdPlayRecord : list) {
                if (simulatorAdPlayRecord.typeOf(i2)) {
                    return simulatorAdPlayRecord;
                }
            }
        }
        return null;
    }
}
