package com.papa91.wrapper;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.join.mgps.Util.g0;
import com.join.mgps.dto.PayCenterOrderRequest;
import java.io.File;
/* loaded from: classes4.dex */
public class Wrapper {
    public static final int SDK_INT = Integer.parseInt(Build.VERSION.SDK);

    public static final void Activity_invalidateOptionsMenu(Activity activity) {
        if (SDK_INT >= 11) {
            Wrapper11.Activity_invalidateOptionsMenu(activity);
        }
    }

    public static final void Activity_onBackPressed(Activity activity) {
        Wrapper5.Activity_onBackPressed(activity);
    }

    public static final boolean KeyEvent_isLongPress(KeyEvent keyEvent) {
        if (SDK_INT >= 5) {
            return Wrapper5.KeyEvent_isLongPress(keyEvent);
        }
        return false;
    }

    public static final void MenuItem_setShowAsAction(MenuItem menuItem, boolean z3) {
        if (SDK_INT >= 11) {
            Wrapper11.MenuItem_setShowAsAction(menuItem, z3);
        }
    }

    public static final int MotionEvent_findPointerIndex(MotionEvent motionEvent, int i2) {
        return SDK_INT >= 5 ? Wrapper5.MotionEvent_findPointerIndex(motionEvent, i2) : i2 == 0 ? 0 : -1;
    }

    public static final int MotionEvent_getPointerCount(MotionEvent motionEvent) {
        if (SDK_INT >= 5) {
            return Wrapper5.MotionEvent_getPointerCount(motionEvent);
        }
        return 1;
    }

    public static final int MotionEvent_getPointerId(MotionEvent motionEvent, int i2) {
        if (SDK_INT >= 5) {
            return Wrapper5.MotionEvent_getPointerId(motionEvent, i2);
        }
        return 0;
    }

    public static final float MotionEvent_getSize(MotionEvent motionEvent, int i2) {
        return SDK_INT >= 5 ? Wrapper5.MotionEvent_getSize(motionEvent, i2) : motionEvent.getSize();
    }

    public static final float MotionEvent_getX(MotionEvent motionEvent, int i2) {
        return SDK_INT >= 5 ? Wrapper5.MotionEvent_getX(motionEvent, i2) : motionEvent.getX();
    }

    public static final float MotionEvent_getY(MotionEvent motionEvent, int i2) {
        return SDK_INT >= 5 ? Wrapper5.MotionEvent_getY(motionEvent, i2) : motionEvent.getY();
    }

    public static void disableHomeButton(Activity activity) {
        if (SDK_INT >= 14) {
            Wrapper14.disableHomeButton(activity);
        }
    }

    public static void displayActionBar(Activity activity) {
        if (SDK_INT >= 11) {
            Wrapper11.displayActionBar(activity);
        }
    }

    public static void displayHomeAsUp(Activity activity) {
        if (SDK_INT >= 11) {
            Wrapper11.displayHomeAsUp(activity);
        }
    }

    public static final File getExternalScreenshotDirectory() {
        File file;
        if (SDK_INT >= 8) {
            file = Wrapper8.getExternalPicturesDirectory();
        } else {
            file = new File(Environment.getExternalStorageDirectory(), "pictures");
        }
        return new File(file, "screenshots");
    }

    public static boolean isBluetoothDiscoverable() {
        if (SDK_INT >= 5) {
            return Wrapper5.isBluetoothDiscoverable();
        }
        return false;
    }

    public static boolean isBluetoothEnabled() {
        if (SDK_INT >= 5) {
            return Wrapper5.isBluetoothEnabled();
        }
        return false;
    }

    public static boolean isBluetoothPresent() {
        if (SDK_INT >= 5) {
            return Wrapper5.isBluetoothPresent();
        }
        return false;
    }

    public static final boolean isHwMenuBtnAvailable(Context context) {
        int i2 = SDK_INT;
        if (i2 < 5 || (i2 >= 11 && i2 <= 13)) {
            return false;
        }
        if (i2 >= 14) {
            return Wrapper14.ViewConfiguration_hasPermanentMenuKey(ViewConfiguration.get(context));
        }
        return true;
    }

    public static final String keyCodeToString(Context context, int i2) {
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
                                                                                                if (SDK_INT >= 12) {
                                                                                                    return Wrapper12.keyCodeToString(i2).replaceFirst("KEYCODE_", "").replace('_', ' ');
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

    public static boolean supportsMultitouch(Context context) {
        if (SDK_INT >= 5) {
            return Wrapper5.supportsMultitouch(context);
        }
        return false;
    }
}
