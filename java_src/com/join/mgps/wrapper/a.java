package com.join.mgps.wrapper;

import android.annotation.TargetApi;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.os.Build;
import android.os.Environment;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.join.mgps.Util.g0;
import com.join.mgps.dto.PayCenterOrderRequest;
import java.io.File;
/* compiled from: Wrapper.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static int f52422a = Build.VERSION.SDK_INT;

    /* renamed from: b  reason: collision with root package name */
    public static final int f52423b = Integer.parseInt(Build.VERSION.SDK);

    /* compiled from: Wrapper.java */
    /* renamed from: com.join.mgps.wrapper.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0235a {
        public static boolean a() {
            return a.f52422a >= 11 && b();
        }

        public static boolean b() {
            return BluetoothAdapter.getDefaultAdapter() != null;
        }
    }

    /* compiled from: Wrapper.java */
    /* loaded from: classes4.dex */
    public static class b {
        public static String a(UsbDevice usbDevice) {
            return d(usbDevice) + c(usbDevice);
        }

        public static String b(UsbDevice usbDevice) {
            return "OTG手柄";
        }

        @TargetApi(12)
        public static String c(UsbDevice usbDevice) {
            if (a.f52422a >= 12) {
                return "0x" + Integer.toHexString(c.a(usbDevice));
            }
            return "0x0000";
        }

        @TargetApi(12)
        public static String d(UsbDevice usbDevice) {
            if (a.f52422a >= 12) {
                return "0x" + Integer.toHexString(c.b(usbDevice));
            }
            return "0x0000";
        }

        public static boolean e() {
            return a.f52422a >= 12;
        }
    }

    public static final void a(Activity activity) {
        if (f52423b >= 11) {
            com.join.mgps.wrapper.b.a(activity);
        }
    }

    public static final void b(Activity activity) {
        e.a(activity);
    }

    public static final boolean c(KeyEvent keyEvent) {
        if (f52423b >= 5) {
            return e.b(keyEvent);
        }
        return false;
    }

    public static final void d(MenuItem menuItem, boolean z3) {
        if (f52423b >= 11) {
            com.join.mgps.wrapper.b.b(menuItem, z3);
        }
    }

    public static final int e(MotionEvent motionEvent, int i2) {
        return f52423b >= 5 ? e.c(motionEvent, i2) : i2 == 0 ? 0 : -1;
    }

    public static final int f(MotionEvent motionEvent) {
        if (f52423b >= 5) {
            return e.d(motionEvent);
        }
        return 1;
    }

    public static final int g(MotionEvent motionEvent, int i2) {
        if (f52423b >= 5) {
            return e.e(motionEvent, i2);
        }
        return 0;
    }

    public static final float h(MotionEvent motionEvent, int i2) {
        return f52423b >= 5 ? e.f(motionEvent, i2) : motionEvent.getSize();
    }

    public static final float i(MotionEvent motionEvent, int i2) {
        return f52423b >= 5 ? e.g(motionEvent, i2) : motionEvent.getX();
    }

    public static final float j(MotionEvent motionEvent, int i2) {
        return f52423b >= 5 ? e.h(motionEvent, i2) : motionEvent.getY();
    }

    public static void k(Activity activity) {
        if (f52423b >= 14) {
            d.b(activity);
        }
    }

    public static void l(Activity activity) {
        if (f52423b >= 11) {
            com.join.mgps.wrapper.b.d(activity);
        }
    }

    public static void m(Activity activity) {
        if (f52423b >= 11) {
            com.join.mgps.wrapper.b.e(activity);
        }
    }

    public static final File n() {
        File file;
        if (f52423b >= 8) {
            file = f.a();
        } else {
            file = new File(Environment.getExternalStorageDirectory(), "pictures");
        }
        return new File(file, "screenshots");
    }

    public static boolean o() {
        if (f52423b >= 5) {
            return e.i();
        }
        return false;
    }

    public static boolean p() {
        if (f52423b >= 5) {
            return e.j();
        }
        return false;
    }

    public static boolean q() {
        if (f52423b >= 5) {
            return e.k();
        }
        return false;
    }

    public static final boolean r(Context context) {
        int i2 = f52423b;
        if (i2 < 5 || (i2 >= 11 && i2 <= 13)) {
            return false;
        }
        if (i2 >= 14) {
            return d.a(ViewConfiguration.get(context));
        }
        return true;
    }

    public static final String s(Context context, int i2) {
        if (i2 != 0) {
            if (i2 != 27) {
                if (i2 != 62) {
                    if (i2 != 77) {
                        if (i2 != 80) {
                            if (i2 != 82) {
                                if (i2 != 84) {
                                    if (i2 != 102) {
                                        if (i2 != 104) {
                                            if (i2 != 3) {
                                                if (i2 != 4) {
                                                    if (i2 != 5) {
                                                        if (i2 != 66) {
                                                            if (i2 != 67) {
                                                                if (i2 != 108) {
                                                                    if (i2 != 109) {
                                                                        switch (i2) {
                                                                            case 7:
                                                                                return "0";
                                                                            case 8:
                                                                                return "1";
                                                                            case 9:
                                                                                return PayCenterOrderRequest.PAY_TYPE_RECHARGE;
                                                                            case 10:
                                                                                return "3";
                                                                            case 11:
                                                                                return "4";
                                                                            case 12:
                                                                                return "5";
                                                                            case 13:
                                                                                return "6";
                                                                            case 14:
                                                                                return "7";
                                                                            case 15:
                                                                                return "8";
                                                                            case 16:
                                                                                return "9";
                                                                            default:
                                                                                switch (i2) {
                                                                                    case 19:
                                                                                        return "DPAD Up";
                                                                                    case 20:
                                                                                        return "DPAD Down";
                                                                                    case 21:
                                                                                        return "DPAD Left";
                                                                                    case 22:
                                                                                        return "DPAD Right";
                                                                                    case 23:
                                                                                        return "DPAD Center";
                                                                                    case 24:
                                                                                        return "Volume UP";
                                                                                    case 25:
                                                                                        return "Volume DOWN";
                                                                                    default:
                                                                                        switch (i2) {
                                                                                            case 29:
                                                                                                return "A";
                                                                                            case 30:
                                                                                                return "B";
                                                                                            case 31:
                                                                                                return "C";
                                                                                            case 32:
                                                                                                return "D";
                                                                                            case 33:
                                                                                                return "E";
                                                                                            case 34:
                                                                                                return "F";
                                                                                            case 35:
                                                                                                return "G";
                                                                                            case 36:
                                                                                                return "H";
                                                                                            case 37:
                                                                                                return "I";
                                                                                            case 38:
                                                                                                return "J";
                                                                                            case 39:
                                                                                                return "K";
                                                                                            case 40:
                                                                                                return "L";
                                                                                            case 41:
                                                                                                return "M";
                                                                                            case 42:
                                                                                                return "N";
                                                                                            case 43:
                                                                                                return "O";
                                                                                            case 44:
                                                                                                return "P";
                                                                                            case 45:
                                                                                                return "Q";
                                                                                            case 46:
                                                                                                return "R";
                                                                                            case 47:
                                                                                                return "S";
                                                                                            case 48:
                                                                                                return "T";
                                                                                            case 49:
                                                                                                return "U";
                                                                                            case 50:
                                                                                                return "V";
                                                                                            case 51:
                                                                                                return "W";
                                                                                            case 52:
                                                                                                return "X";
                                                                                            case 53:
                                                                                                return "Y";
                                                                                            case 54:
                                                                                                return "Z";
                                                                                            case 55:
                                                                                                return ",";
                                                                                            case 56:
                                                                                                return g0.f27568a;
                                                                                            case 57:
                                                                                                return "ALT (left)";
                                                                                            case 58:
                                                                                                return "ALT (right)";
                                                                                            case 59:
                                                                                                return "SHIFT (left)";
                                                                                            case 60:
                                                                                                return "SHIFT (right)";
                                                                                            default:
                                                                                                if (f52423b >= 12) {
                                                                                                    return c.c(i2).replaceFirst("KEYCODE_", "").replace('_', ' ');
                                                                                                }
                                                                                                return "??? (№" + String.valueOf(i2) + ')';
                                                                                        }
                                                                                }
                                                                        }
                                                                    }
                                                                    return "Select";
                                                                }
                                                                return "Start";
                                                            }
                                                            return "DEL";
                                                        }
                                                        return "ENTER";
                                                    }
                                                    return "CALL";
                                                }
                                                return "BACK";
                                            }
                                            return "HOME";
                                        }
                                        return "Right trigger";
                                    }
                                    return "Left trigger";
                                }
                                return "SEARCH";
                            }
                            return "MENU";
                        }
                        return "FOCUS";
                    }
                    return "@";
                }
                return "SPACE";
            }
            return "CAMERA";
        }
        return "-";
    }

    public static boolean t(Context context) {
        if (f52423b >= 5) {
            return e.l(context);
        }
        return false;
    }
}
