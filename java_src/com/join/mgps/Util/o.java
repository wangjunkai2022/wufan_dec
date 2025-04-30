package com.join.mgps.Util;

import android.content.ClipboardManager;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.join.mgps.activity.ApFightActivity_;
import com.join.mgps.activity.CheckInviteDialogActivity_;
import com.join.mgps.activity.arena.ArenaGameListActivity_;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.pref.PrefDef_;
/* compiled from: CheckInviteFightUtil.java */
/* loaded from: classes3.dex */
public class o {
    private static AccountBean a(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    public static void b(Context context) {
        ClipboardManager clipboardManager = (ClipboardManager) context.getApplicationContext().getSystemService("clipboard");
        if (clipboardManager != null) {
            try {
                clipboardManager.setPrimaryClip(clipboardManager.getPrimaryClip());
                clipboardManager.setText(null);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    private static String c(int i2) {
        return String.valueOf(Character.toChars(i2));
    }

    public static String d(Context context) {
        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        if (clipboardManager == null || !clipboardManager.hasPrimaryClip() || clipboardManager.getPrimaryClip().getItemCount() <= 0) {
            return "";
        }
        String valueOf = String.valueOf(clipboardManager.getPrimaryClip().getItemAt(0).getText());
        return !TextUtils.isEmpty(valueOf) ? valueOf : "";
    }

    public static void e(Context context) {
        if ((context instanceof ApFightActivity_) || (context instanceof CheckInviteDialogActivity_) || (context instanceof GameRoomActivity_) || (context instanceof GameRoomListActivity_) || (context instanceof ArenaGameListActivity_) || new PrefDef_(context).firstShowUserPermiss().d().booleanValue() || Build.VERSION.SDK_INT < 15) {
            return;
        }
        try {
            String d4 = d(context);
            if (TextUtils.isEmpty(d4)) {
                return;
            }
            String trim = d4.trim();
            if (trim.contains("大厅对战")) {
                b(context);
                if (!f(context)) {
                    i2.a(context).b("您是游客无法进入游戏大厅，请完善账号");
                    return;
                } else {
                    CheckInviteDialogActivity_.i1(context).a(trim).start();
                    return;
                }
            }
            if (trim.contains("打开" + c(128073) + com.join.android.app.mgsim.wufun.b.f17915i + c(128072))) {
                b(context);
                if (!f(context)) {
                    i2.a(context).b("您是游客无法进入游戏大厅，请完善账号");
                } else {
                    CheckInviteDialogActivity_.i1(context).a(trim).start();
                }
            }
        } catch (Exception unused) {
        }
    }

    static boolean f(Context context) {
        if (a(context) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(context).isTourist();
    }
}
