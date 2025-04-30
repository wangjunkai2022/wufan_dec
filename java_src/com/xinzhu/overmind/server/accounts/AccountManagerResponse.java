package com.xinzhu.overmind.server.accounts;

import android.accounts.IAccountManagerResponse;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
/* loaded from: classes3.dex */
public class AccountManagerResponse implements Parcelable {
    public static final Parcelable.Creator<AccountManagerResponse> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private IAccountManagerResponse f64343a;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<AccountManagerResponse> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AccountManagerResponse createFromParcel(Parcel source) {
            return new AccountManagerResponse(source);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public AccountManagerResponse[] newArray(int size) {
            return new AccountManagerResponse[size];
        }
    }

    public AccountManagerResponse(IAccountManagerResponse response) {
        this.f64343a = response;
    }

    public void a(int errorCode, String errorMessage) {
        try {
            this.f64343a.onError(errorCode, errorMessage);
        } catch (RemoteException unused) {
        }
    }

    public void b(Bundle result) {
        try {
            this.f64343a.onResult(result);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeStrongBinder(this.f64343a.asBinder());
    }

    public AccountManagerResponse(Parcel parcel) {
        this.f64343a = IAccountManagerResponse.Stub.asInterface(parcel.readStrongBinder());
    }
}
