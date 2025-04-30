package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.onekeyshare.OnekeyShare;
import cn.sharesdk.wechat.utils.WXMediaMessage;
/* loaded from: classes2.dex */
public class WXFileObject implements WXMediaMessage.IMediaObject {
    private int contentLengthLimit;
    public byte[] fileData;
    public String filePath;

    public WXFileObject() {
        this.contentLengthLimit = 1920991232;
        this.fileData = null;
        this.filePath = null;
    }

    private int getFileSize(String str) {
        return n.a().a(str);
    }

    @Override // cn.sharesdk.wechat.utils.WXMediaMessage.IMediaObject
    public boolean checkArgs() {
        String str;
        byte[] bArr = this.fileData;
        if ((bArr != null && bArr.length != 0) || ((str = this.filePath) != null && str.length() != 0)) {
            byte[] bArr2 = this.fileData;
            if (bArr2 != null && bArr2.length > this.contentLengthLimit) {
                SSDKLog.b().a("checkArgs fail, fileData is too large", new Object[0]);
                return false;
            }
            String str2 = this.filePath;
            if (str2 != null) {
                try {
                    if (getFileSize(str2) > this.contentLengthLimit) {
                        SSDKLog.b().a("checkArgs fail, fileSize is too large", new Object[0]);
                        return false;
                    }
                } catch (Throwable th) {
                    SSDKLog b4 = SSDKLog.b();
                    b4.a(OnekeyShare.SHARESDK_TAG, " WXAppExendObject catch don't worry will be two style " + th);
                    int a4 = n.a().a(this.filePath);
                    if (a4 != 0 && a4 > this.contentLengthLimit) {
                        return false;
                    }
                }
            }
            return true;
        }
        SSDKLog.b().a("checkArgs fail, both arguments is null", new Object[0]);
        return false;
    }

    @Override // cn.sharesdk.wechat.utils.WXMediaMessage.IMediaObject
    public void serialize(Bundle bundle) {
        bundle.putByteArray("_wxfileobject_fileData", this.fileData);
        bundle.putString("_wxfileobject_filePath", this.filePath);
    }

    public void setContentLengthLimit(int i2) {
        this.contentLengthLimit = i2;
    }

    public void setFileData(byte[] bArr) {
        this.fileData = bArr;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    @Override // cn.sharesdk.wechat.utils.WXMediaMessage.IMediaObject
    public int type() {
        return 6;
    }

    @Override // cn.sharesdk.wechat.utils.WXMediaMessage.IMediaObject
    public void unserialize(Bundle bundle) {
        this.fileData = bundle.getByteArray("_wxfileobject_fileData");
        this.filePath = bundle.getString("_wxfileobject_filePath");
    }

    public WXFileObject(byte[] bArr) {
        this.contentLengthLimit = 1920991232;
        this.fileData = bArr;
    }

    public WXFileObject(String str) {
        this.contentLengthLimit = 1920991232;
        this.filePath = str;
    }
}
