package com.xinzhu.overmind.server.accounts;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class MindAccount implements Parcelable {
    public static final Parcelable.Creator<MindAccount> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final Account f64344a;

    /* renamed from: b  reason: collision with root package name */
    public String f64345b;

    /* renamed from: c  reason: collision with root package name */
    public long f64346c;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<MindAccount> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MindAccount createFromParcel(Parcel in2) {
            return new MindAccount(in2);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MindAccount[] newArray(int size) {
            return new MindAccount[size];
        }
    }

    public MindAccount(Account account) {
        this.f64344a = account;
    }

    public String a() {
        return this.f64345b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object o3) {
        return this.f64344a.equals(o3);
    }

    public int hashCode() {
        return this.f64344a.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.f64344a, flags);
        dest.writeString(this.f64345b);
        dest.writeLong(this.f64346c);
    }

    public MindAccount(String name, String type) {
        this.f64344a = new Account(name, type);
    }

    protected MindAccount(Parcel in2) {
        this.f64344a = (Account) in2.readParcelable(Account.class.getClassLoader());
        this.f64345b = in2.readString();
        this.f64346c = in2.readLong();
    }
}
