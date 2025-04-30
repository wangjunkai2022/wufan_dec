package com.join.mgps.dto;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class OnlineCouponConfigBean implements Serializable, Parcelable {
    public static final Parcelable.Creator<OnlineCouponConfigBean> CREATOR = new Parcelable.Creator<OnlineCouponConfigBean>() { // from class: com.join.mgps.dto.OnlineCouponConfigBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OnlineCouponConfigBean createFromParcel(Parcel parcel) {
            return new OnlineCouponConfigBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OnlineCouponConfigBean[] newArray(int i2) {
            return new OnlineCouponConfigBean[i2];
        }
    };
    private boolean gameExitSwitch;
    private boolean gameStartUpSwitch;
    private boolean homePageSwitch;
    private boolean inTimePeriod;
    private int locType;
    private boolean popup;
    private boolean received;
    private String redPacketHint;
    private String redPacketJumpUrl;
    private String redPacketSubHint;
    private String tabHint;
    private String tabJumpUrl;
    private boolean tabSwitch;
    private String timePeriodMark;
    private int uid;

    public OnlineCouponConfigBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getLocType() {
        return this.locType;
    }

    public String getRedPacketHint() {
        return this.redPacketHint;
    }

    public String getRedPacketJumpUrl() {
        return this.redPacketJumpUrl;
    }

    public String getRedPacketSubHint() {
        return this.redPacketSubHint;
    }

    public String getTabHint() {
        return this.tabHint;
    }

    public String getTabJumpUrl() {
        return this.tabJumpUrl;
    }

    public String getTimePeriodMark() {
        return this.timePeriodMark;
    }

    public int getUid() {
        return this.uid;
    }

    public boolean isGameExitSwitch() {
        return this.gameExitSwitch;
    }

    public boolean isGameStartUpSwitch() {
        return this.gameStartUpSwitch;
    }

    public boolean isHomePageSwitch() {
        return this.homePageSwitch;
    }

    public boolean isInTimePeriod() {
        return this.inTimePeriod;
    }

    public boolean isPopup() {
        return this.popup;
    }

    public boolean isReceived() {
        return this.received;
    }

    public boolean isTabSwitch() {
        return this.tabSwitch;
    }

    public void setGameExitSwitch(boolean z3) {
        this.gameExitSwitch = z3;
    }

    public void setGameStartUpSwitch(boolean z3) {
        this.gameStartUpSwitch = z3;
    }

    public void setHomePageSwitch(boolean z3) {
        this.homePageSwitch = z3;
    }

    public void setInTimePeriod(boolean z3) {
        this.inTimePeriod = z3;
    }

    public void setLocType(int i2) {
        this.locType = i2;
    }

    public void setPopup(boolean z3) {
        this.popup = z3;
    }

    public void setReceived(boolean z3) {
        this.received = z3;
    }

    public void setRedPacketHint(String str) {
        this.redPacketHint = str;
    }

    public void setRedPacketJumpUrl(String str) {
        this.redPacketJumpUrl = str;
    }

    public void setRedPacketSubHint(String str) {
        this.redPacketSubHint = str;
    }

    public void setTabHint(String str) {
        this.tabHint = str;
    }

    public void setTabJumpUrl(String str) {
        this.tabJumpUrl = str;
    }

    public void setTabSwitch(boolean z3) {
        this.tabSwitch = z3;
    }

    public void setTimePeriodMark(String str) {
        this.timePeriodMark = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.locType);
        parcel.writeByte(this.popup ? (byte) 1 : (byte) 0);
        parcel.writeString(this.redPacketHint);
        parcel.writeString(this.redPacketSubHint);
        parcel.writeString(this.redPacketJumpUrl);
        parcel.writeString(this.tabJumpUrl);
        parcel.writeString(this.tabHint);
        parcel.writeInt(this.uid);
        parcel.writeByte(this.gameExitSwitch ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.gameStartUpSwitch ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.homePageSwitch ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.tabSwitch ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.inTimePeriod ? (byte) 1 : (byte) 0);
        parcel.writeString(this.timePeriodMark);
        parcel.writeByte(this.received ? (byte) 1 : (byte) 0);
    }

    protected OnlineCouponConfigBean(Parcel parcel) {
        this.locType = parcel.readInt();
        this.popup = parcel.readByte() != 0;
        this.redPacketHint = parcel.readString();
        this.redPacketSubHint = parcel.readString();
        this.redPacketJumpUrl = parcel.readString();
        this.tabJumpUrl = parcel.readString();
        this.tabHint = parcel.readString();
        this.uid = parcel.readInt();
        this.gameExitSwitch = parcel.readByte() != 0;
        this.gameStartUpSwitch = parcel.readByte() != 0;
        this.homePageSwitch = parcel.readByte() != 0;
        this.tabSwitch = parcel.readByte() != 0;
        this.inTimePeriod = parcel.readByte() != 0;
        this.timePeriodMark = parcel.readString();
        this.received = parcel.readByte() != 0;
    }
}
