package com.bytedance.pangle.f;

import android.util.ArrayMap;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
@RequiresApi(api = 21)
/* loaded from: classes2.dex */
public final class c {

    /* loaded from: classes2.dex */
    static class a extends Exception {
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final List<X509Certificate> f10218a;

        /* renamed from: b  reason: collision with root package name */
        public final List<Integer> f10219b;

        public b(List<X509Certificate> list, List<Integer> list2) {
            this.f10218a = list;
            this.f10219b = list2;
        }
    }

    /* renamed from: com.bytedance.pangle.f.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0038c {

        /* renamed from: a  reason: collision with root package name */
        public final X509Certificate[] f10220a;

        /* renamed from: b  reason: collision with root package name */
        public final b f10221b;

        /* renamed from: c  reason: collision with root package name */
        public byte[] f10222c;

        public C0038c(X509Certificate[] x509CertificateArr, b bVar) {
            this.f10220a = x509CertificateArr;
            this.f10221b = bVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static C0038c a(RandomAccessFile randomAccessFile, m mVar) {
        ArrayMap arrayMap = new ArrayMap();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer a4 = f.a(mVar.f10238a);
                int i2 = 0;
                C0038c c0038c = null;
                while (a4.hasRemaining()) {
                    try {
                        c0038c = a(f.a(a4), arrayMap, certificateFactory);
                        i2++;
                    } catch (a unused) {
                    } catch (IOException e4) {
                        e = e4;
                        throw new SecurityException("Failed to parse/verify signer #" + i2 + " block", e);
                    } catch (SecurityException e5) {
                        e = e5;
                        throw new SecurityException("Failed to parse/verify signer #" + i2 + " block", e);
                    } catch (BufferUnderflowException e6) {
                        e = e6;
                        throw new SecurityException("Failed to parse/verify signer #" + i2 + " block", e);
                    }
                }
                if (i2 <= 0 || c0038c == null) {
                    throw new SecurityException("No signers found");
                }
                if (i2 == 1) {
                    if (!arrayMap.isEmpty()) {
                        f.a(arrayMap, randomAccessFile, mVar);
                        if (arrayMap.containsKey(3)) {
                            c0038c.f10222c = f.a((byte[]) arrayMap.get(3), randomAccessFile.length(), mVar);
                        }
                        return c0038c;
                    }
                    throw new SecurityException("No content digests found");
                }
                throw new SecurityException("APK Signature Scheme V3 only supports one signer: multiple signers found.");
            } catch (IOException e7) {
                throw new SecurityException("Failed to read list of signers", e7);
            }
        } catch (CertificateException e8) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e8);
        }
    }

    private static C0038c a(ByteBuffer byteBuffer, Map<Integer, byte[]> map, CertificateFactory certificateFactory) {
        ByteBuffer a4 = f.a(byteBuffer);
        int i2 = byteBuffer.getInt();
        int i4 = byteBuffer.getInt();
        ByteBuffer a5 = f.a(byteBuffer);
        byte[] b4 = f.b(byteBuffer);
        ArrayList arrayList = new ArrayList();
        int i5 = -1;
        int i6 = 0;
        byte[] bArr = null;
        while (true) {
            int i7 = 8;
            boolean z3 = true;
            if (!a5.hasRemaining()) {
                if (i5 == -1) {
                    if (i6 == 0) {
                        throw new SecurityException("No signatures found");
                    }
                    throw new SecurityException("No supported signatures found");
                }
                String c4 = f.c(i5);
                Pair<String, ? extends AlgorithmParameterSpec> d4 = f.d(i5);
                String str = (String) d4.first;
                AlgorithmParameterSpec algorithmParameterSpec = (AlgorithmParameterSpec) d4.second;
                try {
                    PublicKey generatePublic = KeyFactory.getInstance(c4).generatePublic(new X509EncodedKeySpec(b4));
                    Signature signature = Signature.getInstance(str);
                    signature.initVerify(generatePublic);
                    if (algorithmParameterSpec != null) {
                        signature.setParameter(algorithmParameterSpec);
                    }
                    signature.update(a4);
                    if (signature.verify(bArr)) {
                        a4.clear();
                        ByteBuffer a6 = f.a(a4);
                        ArrayList arrayList2 = new ArrayList();
                        byte[] bArr2 = null;
                        int i8 = 0;
                        while (a6.hasRemaining()) {
                            i8++;
                            try {
                                ByteBuffer a7 = f.a(a6);
                                if (a7.remaining() >= i7) {
                                    int i9 = a7.getInt();
                                    arrayList2.add(Integer.valueOf(i9));
                                    if (i9 == i5) {
                                        bArr2 = f.b(a7);
                                    }
                                    i7 = 8;
                                } else {
                                    throw new IOException("Record too short");
                                }
                            } catch (IOException | BufferUnderflowException e4) {
                                throw new IOException("Failed to parse digest record #".concat(String.valueOf(i8)), e4);
                            }
                        }
                        if (arrayList.equals(arrayList2)) {
                            int a8 = f.a(i5);
                            byte[] put = map.put(Integer.valueOf(a8), bArr2);
                            if (put != null && !MessageDigest.isEqual(put, bArr2)) {
                                throw new SecurityException(f.b(a8) + " contents digest does not match the digest specified by a preceding signer");
                            }
                            ByteBuffer a9 = f.a(a4);
                            ArrayList arrayList3 = new ArrayList();
                            int i10 = 0;
                            while (a9.hasRemaining()) {
                                i10++;
                                byte[] b5 = f.b(a9);
                                try {
                                    arrayList3.add(new p((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(b5)), b5));
                                } catch (CertificateException e5) {
                                    throw new SecurityException("Failed to decode certificate #".concat(String.valueOf(i10)), e5);
                                }
                            }
                            if (!arrayList3.isEmpty()) {
                                if (Arrays.equals(b4, ((X509Certificate) arrayList3.get(0)).getPublicKey().getEncoded())) {
                                    if (a4.getInt() == i2) {
                                        if (a4.getInt() == i4) {
                                            return a(f.a(a4), arrayList3, certificateFactory);
                                        }
                                        throw new SecurityException("maxSdkVersion mismatch between signed and unsigned in v3 signer block.");
                                    }
                                    throw new SecurityException("minSdkVersion mismatch between signed and unsigned in v3 signer block.");
                                }
                                throw new SecurityException("Public key mismatch between certificate and signature record");
                            }
                            throw new SecurityException("No certificates listed");
                        }
                        throw new SecurityException("Signature algorithms don't match between digests and signatures records");
                    }
                    throw new SecurityException(str + " signature did not verify");
                } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException e6) {
                    throw new SecurityException("Failed to verify " + str + " signature", e6);
                }
            }
            i6++;
            try {
                ByteBuffer a10 = f.a(a5);
                if (a10.remaining() >= 8) {
                    int i11 = a10.getInt();
                    arrayList.add(Integer.valueOf(i11));
                    if (i11 != 513 && i11 != 514 && i11 != 769 && i11 != 1057 && i11 != 1059 && i11 != 1061) {
                        switch (i11) {
                            case 257:
                            case com.join.mgps.socket.fight.arena.a.f52158i /* 258 */:
                            case 259:
                            case 260:
                                break;
                            default:
                                z3 = false;
                                break;
                        }
                    }
                    if (z3 && (i5 == -1 || f.a(i11, i5) > 0)) {
                        bArr = f.b(a10);
                        i5 = i11;
                    }
                } else {
                    throw new SecurityException("Signature record too short");
                }
            } catch (IOException | BufferUnderflowException e7) {
                throw new SecurityException("Failed to parse signature record #".concat(String.valueOf(i6)), e7);
            }
        }
    }

    private static C0038c a(ByteBuffer byteBuffer, List<X509Certificate> list, CertificateFactory certificateFactory) {
        X509Certificate[] x509CertificateArr = (X509Certificate[]) list.toArray(new X509Certificate[list.size()]);
        b bVar = null;
        while (byteBuffer.hasRemaining()) {
            ByteBuffer a4 = f.a(byteBuffer);
            if (a4.remaining() >= 4) {
                if (a4.getInt() == 1000370060) {
                    if (bVar == null) {
                        bVar = a(a4, certificateFactory);
                        try {
                            if (bVar.f10218a.size() > 0) {
                                List<X509Certificate> list2 = bVar.f10218a;
                                if (!Arrays.equals(list2.get(list2.size() - 1).getEncoded(), x509CertificateArr[0].getEncoded())) {
                                    throw new SecurityException("Terminal certificate in Proof-of-rotation record does not match APK signing certificate");
                                }
                            } else {
                                continue;
                            }
                        } catch (CertificateEncodingException e4) {
                            throw new SecurityException("Failed to encode certificate when comparing Proof-of-rotation record and signing certificate", e4);
                        }
                    } else {
                        throw new SecurityException("Encountered multiple Proof-of-rotation records when verifying APK Signature Scheme v3 signature");
                    }
                }
            } else {
                throw new IOException("Remaining buffer too short to contain additional attribute ID. Remaining: " + a4.remaining());
            }
        }
        return new C0038c(x509CertificateArr, bVar);
    }

    private static b a(ByteBuffer byteBuffer, CertificateFactory certificateFactory) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i2 = 0;
        try {
            byteBuffer.getInt();
            HashSet hashSet = new HashSet();
            int i4 = -1;
            p pVar = null;
            while (byteBuffer.hasRemaining()) {
                i2++;
                ByteBuffer a4 = f.a(byteBuffer);
                ByteBuffer a5 = f.a(a4);
                int i5 = a4.getInt();
                int i6 = a4.getInt();
                byte[] b4 = f.b(a4);
                if (pVar != null) {
                    Pair<String, ? extends AlgorithmParameterSpec> d4 = f.d(i4);
                    PublicKey publicKey = pVar.getPublicKey();
                    Signature signature = Signature.getInstance((String) d4.first);
                    signature.initVerify(publicKey);
                    Object obj = d4.second;
                    if (obj != null) {
                        signature.setParameter((AlgorithmParameterSpec) obj);
                    }
                    signature.update(a5);
                    if (!signature.verify(b4)) {
                        throw new SecurityException("Unable to verify signature of certificate #" + i2 + " using " + ((String) d4.first) + " when verifying Proof-of-rotation record");
                    }
                }
                a5.rewind();
                byte[] b5 = f.b(a5);
                int i7 = a5.getInt();
                if (pVar != null && i4 != i7) {
                    throw new SecurityException("Signing algorithm ID mismatch for certificate #" + i2 + " when verifying Proof-of-rotation record");
                }
                pVar = new p((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(b5)), b5);
                if (!hashSet.contains(pVar)) {
                    hashSet.add(pVar);
                    arrayList.add(pVar);
                    arrayList2.add(Integer.valueOf(i5));
                    i4 = i6;
                } else {
                    throw new SecurityException("Encountered duplicate entries in Proof-of-rotation record at certificate #" + i2 + ".  All signing certificates should be unique");
                }
            }
            return new b(arrayList, arrayList2);
        } catch (IOException e4) {
            e = e4;
            throw new IOException("Failed to parse Proof-of-rotation record", e);
        } catch (BufferUnderflowException e5) {
            e = e5;
            throw new IOException("Failed to parse Proof-of-rotation record", e);
        } catch (InvalidAlgorithmParameterException e6) {
            e = e6;
            throw new SecurityException("Failed to verify signature over signed data for certificate #0 when verifying Proof-of-rotation record", e);
        } catch (InvalidKeyException e7) {
            e = e7;
            throw new SecurityException("Failed to verify signature over signed data for certificate #0 when verifying Proof-of-rotation record", e);
        } catch (NoSuchAlgorithmException e8) {
            e = e8;
            throw new SecurityException("Failed to verify signature over signed data for certificate #0 when verifying Proof-of-rotation record", e);
        } catch (SignatureException e9) {
            e = e9;
            throw new SecurityException("Failed to verify signature over signed data for certificate #0 when verifying Proof-of-rotation record", e);
        } catch (CertificateException e10) {
            throw new SecurityException("Failed to decode certificate #0 when verifying Proof-of-rotation record", e10);
        }
    }
}
