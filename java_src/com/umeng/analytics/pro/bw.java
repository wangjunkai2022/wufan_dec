package com.umeng.analytics.pro;

import java.util.BitSet;
/* compiled from: TTupleProtocol.java */
/* loaded from: classes4.dex */
public final class bw extends bk {

    /* compiled from: TTupleProtocol.java */
    /* loaded from: classes4.dex */
    public static class a implements bs {
        @Override // com.umeng.analytics.pro.bs
        public bq a(ce ceVar) {
            return new bw(ceVar);
        }
    }

    public bw(ce ceVar) {
        super(ceVar);
    }

    @Override // com.umeng.analytics.pro.bq
    public Class<? extends by> D() {
        return cb.class;
    }

    public void a(BitSet bitSet, int i2) throws ax {
        for (byte b4 : b(bitSet, i2)) {
            a(b4);
        }
    }

    public BitSet b(int i2) throws ax {
        double d4 = i2;
        Double.isNaN(d4);
        int ceil = (int) Math.ceil(d4 / 8.0d);
        byte[] bArr = new byte[ceil];
        for (int i4 = 0; i4 < ceil; i4++) {
            bArr[i4] = u();
        }
        return a(bArr);
    }

    public static BitSet a(byte[] bArr) {
        BitSet bitSet = new BitSet();
        for (int i2 = 0; i2 < bArr.length * 8; i2++) {
            if ((bArr[(bArr.length - (i2 / 8)) - 1] & (1 << (i2 % 8))) > 0) {
                bitSet.set(i2);
            }
        }
        return bitSet;
    }

    public static byte[] b(BitSet bitSet, int i2) {
        double d4 = i2;
        Double.isNaN(d4);
        int ceil = (int) Math.ceil(d4 / 8.0d);
        byte[] bArr = new byte[ceil];
        for (int i4 = 0; i4 < bitSet.length(); i4++) {
            if (bitSet.get(i4)) {
                int i5 = (ceil - (i4 / 8)) - 1;
                bArr[i5] = (byte) ((1 << (i4 % 8)) | bArr[i5]);
            }
        }
        return bArr;
    }
}
