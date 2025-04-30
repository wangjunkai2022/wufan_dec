package com.mob.tools.utils;

import com.mob.commons.r;
import com.mob.tools.proguard.PublicMemberKeeper;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.math.BigInteger;
/* loaded from: classes4.dex */
public class MobRSA implements PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private int f53936a;

    public MobRSA(int i2) {
        this.f53936a = i2;
    }

    private byte[] a(byte[] bArr, int i2, int i4, BigInteger bigInteger, BigInteger bigInteger2, int i5) throws Throwable {
        if (bArr.length != i4 || i2 != 0) {
            byte[] bArr2 = new byte[i4];
            System.arraycopy(bArr, i2, bArr2, 0, i4);
            bArr = bArr2;
        }
        BigInteger bigInteger3 = new BigInteger(a(bArr, i5));
        if (bigInteger3.compareTo(bigInteger2) <= 0) {
            return bigInteger3.modPow(bigInteger, bigInteger2).toByteArray();
        }
        throw new Throwable("the message must be smaller than the modulue");
    }

    public byte[] encode(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) throws Throwable {
        int i2 = this.f53936a / 8;
        int i4 = i2 - 11;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = null;
        try {
            DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream);
            int i5 = 0;
            while (bArr.length > i5) {
                try {
                    int min = Math.min(bArr.length - i5, i4);
                    byte[] a4 = a(bArr, i5, min, bigInteger, bigInteger2, i2);
                    dataOutputStream2.writeInt(a4.length);
                    dataOutputStream2.write(a4);
                    i5 += min;
                } catch (Throwable th) {
                    th = th;
                    dataOutputStream = dataOutputStream2;
                    r.a(dataOutputStream);
                    throw th;
                }
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            r.a(dataOutputStream2);
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private byte[] a(byte[] bArr, int i2) throws Throwable {
        if (bArr.length <= i2 - 1) {
            byte[] bArr2 = new byte[i2];
            bArr2[0] = 1;
            int length = bArr.length;
            bArr2[1] = (byte) (length >> 24);
            bArr2[2] = (byte) (length >> 16);
            bArr2[3] = (byte) (length >> 8);
            bArr2[4] = (byte) length;
            System.arraycopy(bArr, 0, bArr2, i2 - length, length);
            return bArr2;
        }
        throw new Throwable("Message too large");
    }
}
