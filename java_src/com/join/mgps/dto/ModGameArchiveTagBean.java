package com.join.mgps.dto;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class ModGameArchiveTagBean implements Parcelable, Serializable {
    public static final Parcelable.Creator<ModGameArchiveTagBean> CREATOR = new Parcelable.Creator<ModGameArchiveTagBean>() { // from class: com.join.mgps.dto.ModGameArchiveTagBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ModGameArchiveTagBean createFromParcel(Parcel parcel) {
            return new ModGameArchiveTagBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ModGameArchiveTagBean[] newArray(int i2) {
            return new ModGameArchiveTagBean[i2];
        }
    };
    private int count;
    private boolean isSelected;
    private String name;
    private String tagId;
    private int type;

    public ModGameArchiveTagBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCount() {
        return this.count;
    }

    public String getName() {
        return this.name;
    }

    public String getTagId() {
        return this.tagId;
    }

    public int getType() {
        return this.type;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setCount(int i2) {
        this.count = i2;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSelected(boolean z3) {
        this.isSelected = z3;
    }

    public void setTagId(String str) {
        this.tagId = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.name);
        parcel.writeInt(this.count);
        parcel.writeString(this.tagId);
        parcel.writeInt(this.type);
        parcel.writeByte(this.isSelected ? (byte) 1 : (byte) 0);
    }

    protected ModGameArchiveTagBean(Parcel parcel) {
        this.name = parcel.readString();
        this.count = parcel.readInt();
        this.tagId = parcel.readString();
        this.type = parcel.readInt();
        this.isSelected = parcel.readByte() != 0;
    }
}
