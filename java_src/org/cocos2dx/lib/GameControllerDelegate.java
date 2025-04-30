package org.cocos2dx.lib;

import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;
/* loaded from: classes5.dex */
public interface GameControllerDelegate {
    public static final int BUTTON_A = 1004;
    public static final int BUTTON_B = 1005;
    public static final int BUTTON_C = 1006;
    public static final int BUTTON_DPAD_CENTER = 1014;
    public static final int BUTTON_DPAD_DOWN = 1011;
    public static final int BUTTON_DPAD_LEFT = 1012;
    public static final int BUTTON_DPAD_RIGHT = 1013;
    public static final int BUTTON_DPAD_UP = 1010;
    public static final int BUTTON_LEFT_SHOULDER = 1015;
    public static final int BUTTON_LEFT_THUMBSTICK = 1019;
    public static final int BUTTON_LEFT_TRIGGER = 1017;
    public static final int BUTTON_RIGHT_SHOULDER = 1016;
    public static final int BUTTON_RIGHT_THUMBSTICK = 1020;
    public static final int BUTTON_RIGHT_TRIGGER = 1018;
    public static final int BUTTON_SELECT = 1022;
    public static final int BUTTON_START = 1021;
    public static final int BUTTON_X = 1007;
    public static final int BUTTON_Y = 1008;
    public static final int BUTTON_Z = 1009;
    public static final int KEY_BASE = 1000;
    public static final int THUMBSTICK_LEFT_X = 1000;
    public static final int THUMBSTICK_LEFT_Y = 1001;
    public static final int THUMBSTICK_RIGHT_X = 1002;
    public static final int THUMBSTICK_RIGHT_Y = 1003;

    /* loaded from: classes5.dex */
    public interface ControllerEventListener {
        void onAxisEvent(String str, int i2, int i4, float f4, boolean z3);

        void onButtonEvent(String str, int i2, int i4, boolean z3, float f4, boolean z4);

        void onConnected(String str, int i2);

        void onDisconnected(String str, int i2);
    }

    boolean dispatchGenericMotionEvent(MotionEvent motionEvent);

    boolean dispatchKeyEvent(KeyEvent keyEvent);

    void onCreate(Context context);

    void onDestroy();

    void onPause();

    void onResume();

    void setControllerEventListener(ControllerEventListener controllerEventListener);
}
