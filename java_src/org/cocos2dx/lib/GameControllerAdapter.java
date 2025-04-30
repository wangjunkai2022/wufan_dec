package org.cocos2dx.lib;

import java.util.ArrayList;
/* loaded from: classes5.dex */
public class GameControllerAdapter {
    private static ArrayList<Runnable> sRunnableFrameStartList;

    public static void addRunnableToFrameStartList(Runnable runnable) {
        if (sRunnableFrameStartList == null) {
            sRunnableFrameStartList = new ArrayList<>();
        }
        sRunnableFrameStartList.add(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeControllerAxisEvent(String str, int i2, int i4, float f4, boolean z3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeControllerButtonEvent(String str, int i2, int i4, boolean z3, float f4, boolean z4);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeControllerConnected(String str, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeControllerDisconnected(String str, int i2);

    public static void onAxisEvent(final String str, final int i2, final int i4, final float f4, final boolean z3) {
        Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.GameControllerAdapter.4
            @Override // java.lang.Runnable
            public void run() {
                GameControllerAdapter.nativeControllerAxisEvent(str, i2, i4, f4, z3);
            }
        });
    }

    public static void onButtonEvent(final String str, final int i2, final int i4, final boolean z3, final float f4, final boolean z4) {
        Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.GameControllerAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                GameControllerAdapter.nativeControllerButtonEvent(str, i2, i4, z3, f4, z4);
            }
        });
    }

    public static void onConnected(final String str, final int i2) {
        Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.GameControllerAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                GameControllerAdapter.nativeControllerConnected(str, i2);
            }
        });
    }

    public static void onDisconnected(final String str, final int i2) {
        Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.GameControllerAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                GameControllerAdapter.nativeControllerDisconnected(str, i2);
            }
        });
    }

    public static void onDrawFrameStart() {
        ArrayList<Runnable> arrayList = sRunnableFrameStartList;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                sRunnableFrameStartList.get(i2).run();
            }
        }
    }

    public static void removeRunnableFromFrameStartList(Runnable runnable) {
        ArrayList<Runnable> arrayList = sRunnableFrameStartList;
        if (arrayList != null) {
            arrayList.remove(runnable);
        }
    }
}
