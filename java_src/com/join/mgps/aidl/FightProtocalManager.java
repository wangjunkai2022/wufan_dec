package com.join.mgps.aidl;

import android.os.Build;
import com.join.android.app.common.utils.JsonMapper;
/* loaded from: classes3.dex */
public class FightProtocalManager {
    static JsonMapper jsonMapper = JsonMapper.getInstance();
    public static byte ackSignal = -1;

    public static String ackDisconnect(FightProtocal fightProtocal) {
        FightProtocal fightProtocal2 = new FightProtocal();
        byte no = (byte) (fightProtocal.getNo() + 1);
        ackSignal = no;
        fightProtocal2.setNo(no);
        fightProtocal2.setType(FightProtocal.TYPE_AckDISCONNECT);
        return jsonMapper.toJson(fightProtocal2);
    }

    public static boolean ackReceivedSignal(FightProtocal fightProtocal) {
        return fightProtocal.getNo() == ackSignal + 1;
    }

    public static String ackSignal(String str, String str2, String str3) {
        FightProtocal fightProtocal = new FightProtocal();
        ackSignal = (byte) (Math.random() * 100.0d);
        fightProtocal.setGameId(str);
        fightProtocal.setGameName(str2);
        fightProtocal.setNo(ackSignal);
        fightProtocal.setType(FightProtocal.TYPE_ACK);
        fightProtocal.setBrand(Build.BRAND);
        fightProtocal.setOpponent(str3);
        return jsonMapper.toJson(fightProtocal);
    }

    public static String ackSignalClient(FightProtocal fightProtocal) {
        fightProtocal.setNo((byte) (fightProtocal.getNo() + 1));
        byte no = fightProtocal.getNo();
        ackSignal = no;
        fightProtocal.setNo(no);
        fightProtocal.setType(FightProtocal.TYPE_ACK);
        fightProtocal.setBrand(Build.BRAND);
        return jsonMapper.toJson(fightProtocal);
    }

    public static String ackSync() {
        FightProtocal fightProtocal = new FightProtocal();
        fightProtocal.setType(FightProtocal.TYPE_SYNC);
        return jsonMapper.toJson(fightProtocal);
    }

    public static String disconnect() {
        FightProtocal fightProtocal = new FightProtocal();
        byte random = (byte) (Math.random() * 100.0d);
        ackSignal = random;
        fightProtocal.setNo(random);
        fightProtocal.setType(FightProtocal.TYPE_DISCONNECT);
        return jsonMapper.toJson(fightProtocal);
    }

    public static String startGame() {
        FightProtocal fightProtocal = new FightProtocal();
        fightProtocal.setType(FightProtocal.TYPE_STARTGAME);
        return jsonMapper.toJson(fightProtocal);
    }
}
