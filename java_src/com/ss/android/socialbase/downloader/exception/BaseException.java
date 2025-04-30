package com.ss.android.socialbase.downloader.exception;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes4.dex */
public class BaseException extends Exception implements Parcelable {
    public static final Parcelable.Creator<BaseException> CREATOR = new Parcelable.Creator<BaseException>() { // from class: com.ss.android.socialbase.downloader.exception.BaseException.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BaseException createFromParcel(Parcel parcel) {
            return new BaseException(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BaseException[] newArray(int i2) {
            return new BaseException[i2];
        }
    };
    private static final String TAG = "[d-ex]:";
    private int errorCode;
    private String errorMsg;
    private String extraInfo;

    public BaseException() {
        this.extraInfo = "";
    }

    public BaseException(int i2, String str) {
        super(TAG + str);
        this.extraInfo = "";
        this.errorMsg = TAG + str;
        this.errorCode = i2;
    }

    public BaseException(int i2, String str, Throwable th) {
        super(TAG + str, th);
        this.extraInfo = "";
        this.errorMsg = TAG + str;
        this.errorCode = i2;
    }

    public BaseException(int i2, Throwable th) {
        this(i2, com.ss.android.socialbase.downloader.i.f.j(th));
    }

    protected BaseException(Parcel parcel) {
        this.extraInfo = "";
        readFromParcel(parcel);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0000, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String BaseException1655219899524dc(java.lang.String r2) {
        /*
        L0:
            r0 = 73
            r1 = 96
        L4:
            switch(r0) {
                case 72: goto L26;
                case 73: goto L8;
                case 74: goto Lb;
                default: goto L7;
            }
        L7:
            goto L2b
        L8:
            switch(r1) {
                case 94: goto L0;
                case 95: goto L26;
                case 96: goto L26;
                default: goto Lb;
            }
        Lb:
            switch(r1) {
                case 55: goto Lf;
                case 56: goto L26;
                case 57: goto L26;
                default: goto Le;
            }
        Le:
            goto L0
        Lf:
            char[] r2 = r2.toCharArray()
            r0 = 0
        L14:
            int r1 = r2.length
            if (r0 >= r1) goto L20
            char r1 = r2[r0]
            r1 = r1 ^ r0
            char r1 = (char) r1
            r2[r0] = r1
            int r0 = r0 + 1
            goto L14
        L20:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r2)
            return r0
        L26:
            r0 = 74
            r1 = 55
            goto L4
        L2b:
            r0 = 72
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.downloader.exception.BaseException.BaseException1655219899524dc(java.lang.String):java.lang.String");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMsg;
    }

    public String getExtraInfo() {
        return this.extraInfo;
    }

    public void readFromParcel(Parcel parcel) {
        this.errorCode = parcel.readInt();
        this.errorMsg = parcel.readString();
        this.extraInfo = parcel.readString();
    }

    public void setErrorMsg(String str) {
        this.errorMsg = str;
    }

    public void setExtraInfo(String str) {
        this.extraInfo = str;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "BaseException{errorCode=" + this.errorCode + ", errorMsg='" + this.errorMsg + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.errorCode);
        parcel.writeString(this.errorMsg);
        parcel.writeString(this.extraInfo);
    }
}
