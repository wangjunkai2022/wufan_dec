package com.join.mgps.dto;

import java.util.Objects;
/* loaded from: classes4.dex */
public class SimulatorAdPlayRecord extends BaseBean {
    private int adType;
    private int maxTimes;
    private int times;

    public SimulatorAdPlayRecord() {
    }

    public void add() {
        this.times++;
    }

    public boolean canPlay() {
        return this.times < this.maxTimes;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.adType == ((SimulatorAdPlayRecord) obj).adType;
    }

    public int getAdType() {
        return this.adType;
    }

    public int getMaxTimes() {
        return this.maxTimes;
    }

    public int getTimes() {
        return this.times;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.adType));
    }

    public void setAdType(int i2) {
        this.adType = i2;
    }

    public void setMaxTimes(int i2) {
        this.maxTimes = i2;
    }

    public void setTimes(int i2) {
        this.times = i2;
    }

    public boolean typeOf(int i2) {
        return i2 == this.adType;
    }

    public SimulatorAdPlayRecord(int i2, int i4, int i5) {
        this.adType = i2;
        this.times = i4;
        this.maxTimes = i5;
    }
}
