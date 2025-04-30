package com.papa91.arc.view;
/* loaded from: classes4.dex */
public interface MenuViewListener {
    boolean IsHapticFeedbackEnable();

    boolean IsSoundEnable();

    void exit();

    void forum();

    void gameOnPause();

    void gameOnResume();

    boolean getChangeDiskState();

    int getMiniRankTime();

    boolean isRankAutoUpload();

    boolean isRankGame();

    boolean isShowCheating();

    boolean isShowGate();

    boolean isShowOnekey();

    boolean isShowQuickSlot();

    void keysSetting();

    boolean needShowBottomBar();

    boolean needShowTimer();

    void onAdImageClick();

    void onChangeDisk();

    void onHideMenu();

    void onRankFinish(int i2);

    void onScreenShot();

    void onTimerTick(long j4);

    void quickSlot();

    void reload();

    void saveGameConfig();

    void showMenuCheating();

    void showMenuGate();

    void showMenuOnekey();

    void showMenuPerformance();

    void showMenuSlot();

    void showTimeLimitedDialog1();

    void showTimeLimitedDialog2();

    void vibrate(boolean z3);

    void voice(boolean z3);
}
