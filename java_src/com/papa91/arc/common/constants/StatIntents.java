package com.papa91.arc.common.constants;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
/* loaded from: classes4.dex */
public class StatIntents {
    public static StatIntents statFactory;
    Context mContext;
    Messenger messenger;

    private StatIntents(Context context) {
        this.mContext = context;
    }

    public static StatIntents getInstance(Context context) {
        if (statFactory == null) {
            statFactory = new StatIntents(context);
        }
        return statFactory;
    }

    public Messenger getMessenger() {
        return this.messenger;
    }

    void sendBroadcast(Intent intent) {
        if (intent == null) {
            return;
        }
        if (this.messenger != null) {
            Message message = new Message();
            message.what = 11;
            message.setData(new Bundle(intent.getExtras()));
            Bundle bundle = new Bundle();
            bundle.putString("action", intent.getAction());
            message.obj = bundle;
            try {
                Messenger messenger = this.messenger;
                if (messenger != null) {
                    messenger.send(message);
                    return;
                }
                return;
            } catch (RemoteException e4) {
                e4.printStackTrace();
                return;
            }
        }
        Context context = this.mContext;
        if (context != null) {
            context.sendBroadcast(intent);
        }
    }

    public void setMessenger(Messenger messenger) {
        this.messenger = messenger;
    }

    public void statExitVippopup(String str, String str2, int i2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.exitVippopup");
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("position", i2);
        sendBroadcast(intent);
    }

    public void statNotpromptVippopup(String str, String str2, int i2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.NotpromptVippopup");
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("position", i2);
        sendBroadcast(intent);
    }

    public void statOnclickFunction(String str, String str2, int i2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.onclickFunction");
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("position", i2);
        sendBroadcast(intent);
    }

    public void statOnclickVippopup(String str, String str2, int i2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.onclickVippopup");
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("position", i2);
        sendBroadcast(intent);
    }

    public void statOpenGoldfinger(String str, String str2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.openGoldfinger");
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        sendBroadcast(intent);
    }

    public void statOpenKeyskill(String str, String str2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.openKeyskill");
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        sendBroadcast(intent);
    }

    public void statSelectLevel(String str, String str2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.selectLevel");
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        sendBroadcast(intent);
    }

    public void statShareScreenshot(String str, String str2, int i2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.shareScreenshot");
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("position", i2);
        sendBroadcast(intent);
    }

    public void statShowVippopup(String str, String str2, int i2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.showvippopup");
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("position", i2);
        sendBroadcast(intent);
    }

    public void statUesVippopup(String str, String str2, int i2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.uesVippopup");
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("position", i2);
        sendBroadcast(intent);
    }
}
