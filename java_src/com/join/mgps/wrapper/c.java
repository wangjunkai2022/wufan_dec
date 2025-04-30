package com.join.mgps.wrapper;

import android.annotation.TargetApi;
import android.hardware.usb.UsbDevice;
import android.view.KeyEvent;
/* compiled from: Wrapper12.java */
@TargetApi(12)
/* loaded from: classes4.dex */
public class c {
    public static int a(UsbDevice usbDevice) {
        return usbDevice.getProductId();
    }

    public static int b(UsbDevice usbDevice) {
        return usbDevice.getVendorId();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(int i2) {
        return KeyEvent.keyCodeToString(i2);
    }
}
