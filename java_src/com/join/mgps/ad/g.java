package com.join.mgps.ad;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: LotteryUtil.java */
/* loaded from: classes3.dex */
public class g {
    public static int a(List<Double> list) {
        if (list == null || list.isEmpty()) {
            return -1;
        }
        int size = list.size();
        double d4 = 0.0d;
        for (Double d5 : list) {
            d4 += d5.doubleValue();
        }
        ArrayList arrayList = new ArrayList(size);
        Double valueOf = Double.valueOf(0.0d);
        for (Double d6 : list) {
            valueOf = Double.valueOf(valueOf.doubleValue() + d6.doubleValue());
            arrayList.add(Double.valueOf(valueOf.doubleValue() / d4));
        }
        double random = Math.random();
        arrayList.add(Double.valueOf(random));
        Collections.sort(arrayList);
        return arrayList.indexOf(Double.valueOf(random));
    }

    public static int b(List<Double> list) {
        if (list == null || list.isEmpty()) {
            return -1;
        }
        int size = list.size();
        double d4 = 0.0d;
        for (Double d5 : list) {
            d4 += d5.doubleValue();
        }
        ArrayList arrayList = new ArrayList(size);
        Double valueOf = Double.valueOf(0.0d);
        for (Double d6 : list) {
            valueOf = Double.valueOf(valueOf.doubleValue() + d6.doubleValue());
            arrayList.add(Double.valueOf(valueOf.doubleValue() / d4));
        }
        double random = Math.random();
        arrayList.add(Double.valueOf(random));
        Collections.sort(arrayList);
        return arrayList.indexOf(Double.valueOf(random));
    }
}
