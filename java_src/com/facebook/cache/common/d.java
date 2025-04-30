package com.facebook.cache.common;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
/* compiled from: CacheKeyUtil.java */
/* loaded from: classes2.dex */
public final class d {
    public static String a(c cVar) {
        try {
            if (cVar instanceof f) {
                return c(((f) cVar).c().get(0));
            }
            return c(cVar);
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static List<String> b(c cVar) {
        try {
            if (cVar instanceof f) {
                List<c> c4 = ((f) cVar).c();
                ArrayList arrayList = new ArrayList(c4.size());
                for (int i2 = 0; i2 < c4.size(); i2++) {
                    arrayList.add(c(c4.get(i2)));
                }
                return arrayList;
            }
            ArrayList arrayList2 = new ArrayList(1);
            arrayList2.add(c(cVar));
            return arrayList2;
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4);
        }
    }

    private static String c(c cVar) throws UnsupportedEncodingException {
        return com.facebook.common.util.d.i(cVar.a().getBytes("UTF-8"));
    }
}
