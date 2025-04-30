package com.join.mgps.dto;

import android.os.Parcel;
import android.os.Parcelable;
import com.join.mgps.business.CollectionBeanSubBusiness;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class ModGameRecommendAdBean implements Serializable, Parcelable {
    public static final Parcelable.Creator<ModGameRecommendAdBean> CREATOR = new Parcelable.Creator<ModGameRecommendAdBean>() { // from class: com.join.mgps.dto.ModGameRecommendAdBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ModGameRecommendAdBean createFromParcel(Parcel parcel) {
            return new ModGameRecommendAdBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ModGameRecommendAdBean[] newArray(int i2) {
            return new ModGameRecommendAdBean[i2];
        }
    };
    private String panel;
    private boolean popup;
    private List<CollectionBeanSubBusiness> rec_game_list;

    public ModGameRecommendAdBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getPanel() {
        return this.panel;
    }

    public List<CollectionBeanSubBusiness> getRec_game_list() {
        return this.rec_game_list;
    }

    public boolean isPopup() {
        return this.popup;
    }

    public void setPanel(String str) {
        this.panel = str;
    }

    public void setPopup(boolean z3) {
        this.popup = z3;
    }

    public void setRec_game_list(List<CollectionBeanSubBusiness> list) {
        this.rec_game_list = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeByte(this.popup ? (byte) 1 : (byte) 0);
        parcel.writeString(this.panel);
    }

    protected ModGameRecommendAdBean(Parcel parcel) {
        this.popup = parcel.readByte() != 0;
        this.panel = parcel.readString();
    }
}
