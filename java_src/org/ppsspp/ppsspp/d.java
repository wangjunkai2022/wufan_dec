package org.ppsspp.ppsspp;

import android.annotation.TargetApi;
import android.os.Build;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
/* compiled from: InputDeviceState.java */
@TargetApi(12)
/* loaded from: classes5.dex */
public class d {

    /* renamed from: c  reason: collision with root package name */
    private static final String f73848c = "InputDeviceState";

    /* renamed from: d  reason: collision with root package name */
    private static final int f73849d = 10;

    /* renamed from: a  reason: collision with root package name */
    private InputDevice f73850a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f73851b;

    public d(InputDevice inputDevice) {
        this.f73850a = inputDevice;
        int i2 = 0;
        int i4 = 0;
        for (InputDevice.MotionRange motionRange : inputDevice.getMotionRanges()) {
            if ((motionRange.getSource() & 16) != 0) {
                i4++;
            }
        }
        this.f73851b = new int[i4];
        for (InputDevice.MotionRange motionRange2 : inputDevice.getMotionRanges()) {
            if ((motionRange2.getSource() & 16) != 0) {
                this.f73851b[i2] = motionRange2.getAxis();
                i2++;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Registering input device with ");
        sb.append(i4);
        sb.append(" axes: ");
        sb.append(inputDevice.getName());
        if (Build.VERSION.SDK_INT >= 19) {
            b(inputDevice);
        }
        NativeApp.sendMessage("inputDeviceConnected", inputDevice.getName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InputDevice a() {
        return this.f73850a;
    }

    @TargetApi(19)
    void b(InputDevice inputDevice) {
        StringBuilder sb = new StringBuilder();
        sb.append("Vendor ID:");
        sb.append(inputDevice.getVendorId());
        sb.append(" productId: ");
        sb.append(inputDevice.getProductId());
    }

    public boolean c(MotionEvent motionEvent) {
        int i2 = 0;
        if ((motionEvent.getSource() & 16) == 0) {
            return false;
        }
        NativeApp.beginJoystickEvent();
        while (true) {
            int[] iArr = this.f73851b;
            if (i2 < iArr.length) {
                int i4 = iArr[i2];
                NativeApp.joystickAxis(10, i4, motionEvent.getAxisValue(i4));
                i2++;
            } else {
                NativeApp.endJoystickEvent();
                return true;
            }
        }
    }

    public boolean d(KeyEvent keyEvent) {
        return NativeApp.keyDown(10, keyEvent.getKeyCode(), keyEvent.getRepeatCount() > 0);
    }

    public boolean e(KeyEvent keyEvent) {
        return NativeApp.keyUp(10, keyEvent.getKeyCode());
    }
}
