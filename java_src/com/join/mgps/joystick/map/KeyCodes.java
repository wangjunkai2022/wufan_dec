package com.join.mgps.joystick.map;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes4.dex */
public enum KeyCodes {
    KEY_UP(1),
    KEY_DOWN(2),
    KEY_LEFT(4),
    KEY_RIGHT(8),
    KEY_A(16),
    KEY_B(32),
    KEY_C(64),
    KEY_D(128),
    KEY_E(256),
    KEY_F(512),
    KEY_L1(1024),
    KEY_R1(2048),
    KEY_L2(4096),
    KEY_R2(8192),
    KEY_1(16384),
    KEY_2(32768),
    KEY_3(65536),
    KEY_4(131072),
    KEY_UP1(262144),
    KEY_DOWN1(524288),
    KEY_LEFT1(1048576),
    KEY_RIGHT1(2097152),
    KEY_START(4194304),
    KEY_SELECT(8388608),
    KEY_PRESS(33554432),
    KEY_SP0(67108864),
    KEY_SP1(134217728),
    KEY_SP2(268435456),
    KEY_SP3(536870912),
    KEY_SP4(1073741824);
    
    private int value;

    KeyCodes(int i2) {
        this.value = i2;
    }

    public static List<KeyCodes> find(int i2) {
        ArrayList arrayList = new ArrayList();
        for (KeyCodes keyCodes : Arrays.asList(values())) {
            if ((keyCodes.value() & i2) != 0) {
                arrayList.add(keyCodes);
            }
        }
        return arrayList;
    }

    public static HashMap<Integer, String> getMap() {
        KeyCodes[] values;
        HashMap<Integer, String> hashMap = new HashMap<>();
        for (KeyCodes keyCodes : values()) {
            hashMap.put(Integer.valueOf(keyCodes.value()), keyCodes.name());
        }
        return hashMap;
    }

    public int value() {
        return this.value;
    }
}
