package com.umeng.analytics.filter;

import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* compiled from: SmartDict.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: b  reason: collision with root package name */
    private static final String f60375b = "Ă";

    /* renamed from: c  reason: collision with root package name */
    private MessageDigest f60377c;

    /* renamed from: e  reason: collision with root package name */
    private boolean f60379e;

    /* renamed from: a  reason: collision with root package name */
    private final String f60376a = "MD5";

    /* renamed from: d  reason: collision with root package name */
    private Set<Object> f60378d = new HashSet();

    public d(boolean z3, String str) {
        int i2 = 0;
        this.f60379e = false;
        this.f60379e = z3;
        try {
            this.f60377c = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e4) {
            e4.printStackTrace();
        }
        if (str != null) {
            if (z3) {
                try {
                    byte[] decode = Base64.decode(str.getBytes(), 0);
                    while (i2 < decode.length / 4) {
                        int i4 = i2 * 4;
                        this.f60378d.add(Integer.valueOf(((decode[i4 + 0] & 255) << 24) + ((decode[i4 + 1] & 255) << 16) + ((decode[i4 + 2] & 255) << 8) + (decode[i4 + 3] & 255)));
                        i2++;
                    }
                    return;
                } catch (IllegalArgumentException e5) {
                    e5.printStackTrace();
                    return;
                }
            }
            String[] split = str.split(f60375b);
            int length = split.length;
            while (i2 < length) {
                this.f60378d.add(split[i2]);
                i2++;
            }
        }
    }

    private Integer c(String str) {
        try {
            this.f60377c.update(str.getBytes());
            byte[] digest = this.f60377c.digest();
            return Integer.valueOf(((digest[0] & 255) << 24) + ((digest[1] & 255) << 16) + ((digest[2] & 255) << 8) + (digest[3] & 255));
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public boolean a(String str) {
        if (this.f60379e) {
            return this.f60378d.contains(c(str));
        }
        return this.f60378d.contains(str);
    }

    public void b(String str) {
        if (this.f60379e) {
            this.f60378d.add(c(str));
        } else {
            this.f60378d.add(str);
        }
    }

    public String toString() {
        if (this.f60379e) {
            byte[] bArr = new byte[this.f60378d.size() * 4];
            Iterator<Object> it2 = this.f60378d.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                int intValue = ((Integer) it2.next()).intValue();
                int i4 = i2 + 1;
                bArr[i2] = (byte) (((-16777216) & intValue) >> 24);
                int i5 = i4 + 1;
                bArr[i4] = (byte) ((16711680 & intValue) >> 16);
                int i6 = i5 + 1;
                bArr[i5] = (byte) ((65280 & intValue) >> 8);
                i2 = i6 + 1;
                bArr[i6] = (byte) (intValue & 255);
            }
            return new String(Base64.encode(bArr, 0));
        }
        StringBuilder sb = new StringBuilder();
        for (Object obj : this.f60378d) {
            if (sb.length() > 0) {
                sb.append(f60375b);
            }
            sb.append(obj.toString());
        }
        return sb.toString();
    }

    public void a() {
        StringBuilder sb = new StringBuilder();
        for (Object obj : this.f60378d) {
            sb.append(obj);
            if (sb.length() > 0) {
                sb.append(",");
            }
        }
        System.out.println(sb.toString());
    }
}
