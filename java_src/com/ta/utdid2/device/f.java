package com.ta.utdid2.device;

import java.util.Random;
/* loaded from: classes4.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    private static Random f59239b = new Random();

    /* renamed from: a  reason: collision with root package name */
    private String f59240a;

    public f() {
        this.f59240a = "XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H";
        this.f59240a = com.ta.utdid2.android.utils.b.f("XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H".getBytes(), 2);
    }

    public static String b() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < 24; i2++) {
            stringBuffer.append((char) (f59239b.nextInt(25) + 65));
        }
        return stringBuffer.toString();
    }

    public String a(String str) {
        return com.ta.utdid2.android.utils.a.b(this.f59240a, str);
    }

    public String c(byte[] bArr) {
        return com.ta.utdid2.android.utils.a.d(this.f59240a, com.ta.utdid2.android.utils.b.f(bArr, 2));
    }

    public String d(String str) {
        return com.ta.utdid2.android.utils.a.d(this.f59240a, str);
    }
}
