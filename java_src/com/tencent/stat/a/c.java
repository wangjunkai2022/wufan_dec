package com.tencent.stat.a;

import java.util.Arrays;
import java.util.Properties;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    String f59995a;

    /* renamed from: b  reason: collision with root package name */
    String[] f59996b;

    /* renamed from: c  reason: collision with root package name */
    Properties f59997c;

    public c() {
        this.f59997c = null;
    }

    public c(String str, String[] strArr, Properties properties) {
        this.f59997c = null;
        this.f59995a = str;
        this.f59996b = strArr;
        this.f59997c = properties;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            boolean z3 = this.f59995a.equals(cVar.f59995a) && Arrays.equals(this.f59996b, cVar.f59996b);
            Properties properties = this.f59997c;
            return properties != null ? z3 && properties.equals(cVar.f59997c) : z3 && cVar.f59997c == null;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f59995a;
        int hashCode = str != null ? str.hashCode() : 0;
        String[] strArr = this.f59996b;
        if (strArr != null) {
            hashCode ^= Arrays.hashCode(strArr);
        }
        Properties properties = this.f59997c;
        return properties != null ? hashCode ^ properties.hashCode() : hashCode;
    }

    public String toString() {
        String str;
        String str2 = this.f59995a;
        String[] strArr = this.f59996b;
        if (strArr != null) {
            String str3 = strArr[0];
            for (int i2 = 1; i2 < this.f59996b.length; i2++) {
                str3 = str3 + "," + this.f59996b[i2];
            }
            str = "[" + str3 + "]";
        } else {
            str = "";
        }
        if (this.f59997c != null) {
            str = str + this.f59997c.toString();
        }
        return str2 + str;
    }
}
