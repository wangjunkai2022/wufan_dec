package net.lingala.zip4j.crypto.engine;

import com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import io.netty.handler.codec.memcache.binary.DefaultBinaryMemcacheResponse;
import java.lang.reflect.Array;
import kotlin.jvm.internal.ByteCompanionObject;
import net.lingala.zip4j.exception.ZipException;
import okio.Utf8;
/* compiled from: AESEngine.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: g  reason: collision with root package name */
    private static final byte[] f72926g = {99, 124, 119, 123, -14, 107, 111, -59, 48, 1, 103, 43, -2, -41, -85, 118, -54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, 54, Utf8.REPLACEMENT_BYTE, -9, -52, 52, -91, -27, -15, 113, -40, 49, BinaryMemcacheOpcodes.INCREMENTQ, 4, -57, BinaryMemcacheOpcodes.GATK, -61, BinaryMemcacheOpcodes.FLUSHQ, -106, 5, -102, 7, BinaryMemcacheOpcodes.ADDQ, Byte.MIN_VALUE, -30, -21, 39, -78, 117, 9, -125, HttpConstants.COMMA, BinaryMemcacheOpcodes.PREPENDQ, 27, 110, 90, -96, 82, HttpConstants.SEMICOLON, -42, -77, 41, -29, 47, -124, 83, -47, 0, -19, 32, -4, -79, 91, 106, -53, -66, 57, 74, 76, 88, -49, -48, ByteSourceJsonBootstrapper.UTF8_BOM_1, -86, -5, 67, 77, 51, -123, 69, -7, 2, ByteCompanionObject.MAX_VALUE, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, -68, -74, -38, BinaryMemcacheOpcodes.SASL_AUTH, 16, -1, -13, -46, -51, 12, BinaryMemcacheOpcodes.REPLACEQ, -20, 95, -105, 68, BinaryMemcacheOpcodes.QUITQ, -60, -89, 126, HttpConstants.EQUALS, 100, 93, BinaryMemcacheOpcodes.APPENDQ, 115, 96, DefaultBinaryMemcacheResponse.RESPONSE_MAGIC_BYTE, 79, -36, 34, 42, -112, -120, 70, -18, -72, BinaryMemcacheOpcodes.DELETEQ, -34, 94, 11, -37, -32, 50, HttpConstants.COLON, 10, 73, 6, BinaryMemcacheOpcodes.GATKQ, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, 55, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, BinaryMemcacheOpcodes.TOUCH, -90, -76, -58, -24, -35, 116, 31, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, -63, BinaryMemcacheOpcodes.GAT, -98, -31, -8, -104, BinaryMemcacheOpcodes.SETQ, 105, -39, -114, -108, -101, BinaryMemcacheOpcodes.GATQ, -121, -23, -50, 85, 40, -33, -116, -95, -119, 13, ByteSourceJsonBootstrapper.UTF8_BOM_3, -26, 66, 104, 65, -103, 45, 15, -80, 84, ByteSourceJsonBootstrapper.UTF8_BOM_2, BinaryMemcacheOpcodes.DECREMENTQ};

    /* renamed from: h  reason: collision with root package name */
    private static final int[] f72927h = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125, 250, 239, 197, 145};

    /* renamed from: i  reason: collision with root package name */
    private static final int[] f72928i = {-1520213050, -2072216328, -1720223762, -1921287178, 234025727, -1117033514, -1318096930, 1422247313, 1345335392, 50397442, -1452841010, 2099981142, 436141799, 1658312629, -424957107, -1703512340, 1170918031, -1652391393, 1086966153, -2021818886, 368769775, -346465870, -918075506, 200339707, -324162239, 1742001331, -39673249, -357585083, -1080255453, -140204973, -1770884380, 1539358875, -1028147339, 486407649, -1366060227, 1780885068, 1513502316, 1094664062, 49805301, 1338821763, 1546925160, -190470831, 887481809, 150073849, -1821281822, 1943591083, 1395732834, 1058346282, 201589768, 1388824469, 1696801606, 1589887901, 672667696, -1583966665, 251987210, -1248159185, 151455502, 907153956, -1686077413, 1038279391, 652995533, 1764173646, -843926913, -1619692054, 453576978, -1635548387, 1949051992, 773462580, 756751158, -1301385508, -296068428, -73359269, -162377052, 1295727478, 1641469623, -827083907, 2066295122, 1055122397, 1898917726, -1752923117, -179088474, 1758581177, 0, 753790401, 1612718144, 536673507, -927878791, -312779850, -1100322092, 1187761037, -641810841, 1262041458, -565556588, -733197160, -396863312, 1255133061, 1808847035, 720367557, -441800113, 385612781, -985447546, -682799718, 1429418854, -1803188975, -817543798, 284817897, 100794884, -2122350594, -263171936, 1144798328, -1163944155, -475486133, -212774494, -22830243, -1069531008, -1970303227, -1382903233, -1130521311, 1211644016, 83228145, -541279133, -1044990345, 1977277103, 1663115586, 806359072, 452984805, 250868733, 1842533055, 1288555905, 336333848, 890442534, 804056259, -513843266, -1567123659, -867941240, 957814574, 1472513171, -223893675, -2105639172, 1195195770, -1402706744, -413311558, 723065138, -1787595802, -1604296512, -1736343271, -783331426, 2145180835, 1713513028, 2116692564, -1416589253, -2088204277, -901364084, 703524551, -742868885, 1007948840, 2044649127, -497131844, 487262998, 1994120109, 1004593371, 1446130276, 1312438900, 503974420, -615954030, 168166924, 1814307912, -463709000, 1573044895, 1859376061, -273896381, -1503501628, -1466855111, -1533700815, 937747667, -1954973198, 854058965, 1137232011, 1496790894, -1217565222, -1936880383, 1691735473, -766620004, -525751991, -1267962664, -95005012, 133494003, 636152527, -1352309302, -1904575756, -374428089, 403179536, -709182865, -2005370640, 1864705354, 1915629148, 605822008, -240736681, -944458637, 1371981463, 602466507, 2094914977, -1670089496, 555687742, -582268010, -591544991, -2037675251, -2054518257, -1871679264, 1111375484, -994724495, -1436129588, -666351472, 84083462, 32962295, 302911004, -1553899070, 1597322602, -111716434, -793134743, -1853454825, 1489093017, 656219450, -1180787161, 954327513, 335083755, -1281845205, 856756514, -1150719534, 1893325225, -1987146233, -1483434957, -1231316179, 572399164, -1836611819, 552200649, 1238290055, -11184726, 2015897680, 2061492133, -1886614525, -123625127, -2138470135, 386731290, -624967835, 837215959, -968736124, -1201116976, -1019133566, -1332111063, 1999449434, 286199582, -877612933, -61582168, -692339859, 974525996};

    /* renamed from: a  reason: collision with root package name */
    private int f72929a;

    /* renamed from: b  reason: collision with root package name */
    private int[][] f72930b = null;

    /* renamed from: c  reason: collision with root package name */
    private int f72931c;

    /* renamed from: d  reason: collision with root package name */
    private int f72932d;

    /* renamed from: e  reason: collision with root package name */
    private int f72933e;

    /* renamed from: f  reason: collision with root package name */
    private int f72934f;

    public a(byte[] bArr) throws ZipException {
        c(bArr);
    }

    private final void a(int[][] iArr) {
        this.f72931c ^= iArr[0][0];
        this.f72932d ^= iArr[0][1];
        this.f72933e ^= iArr[0][2];
        this.f72934f ^= iArr[0][3];
        int i2 = 1;
        while (i2 < this.f72929a - 1) {
            int[] iArr2 = f72928i;
            int f4 = (((iArr2[this.f72931c & 255] ^ f(iArr2[(this.f72932d >> 8) & 255], 24)) ^ f(iArr2[(this.f72933e >> 16) & 255], 16)) ^ f(iArr2[(this.f72934f >> 24) & 255], 8)) ^ iArr[i2][0];
            int f5 = (((iArr2[this.f72932d & 255] ^ f(iArr2[(this.f72933e >> 8) & 255], 24)) ^ f(iArr2[(this.f72934f >> 16) & 255], 16)) ^ f(iArr2[(this.f72931c >> 24) & 255], 8)) ^ iArr[i2][1];
            int f6 = (((iArr2[this.f72933e & 255] ^ f(iArr2[(this.f72934f >> 8) & 255], 24)) ^ f(iArr2[(this.f72931c >> 16) & 255], 16)) ^ f(iArr2[(this.f72932d >> 24) & 255], 8)) ^ iArr[i2][2];
            int i4 = i2 + 1;
            int f7 = iArr[i2][3] ^ (((iArr2[this.f72934f & 255] ^ f(iArr2[(this.f72931c >> 8) & 255], 24)) ^ f(iArr2[(this.f72932d >> 16) & 255], 16)) ^ f(iArr2[(this.f72933e >> 24) & 255], 8));
            this.f72931c = (((iArr2[f4 & 255] ^ f(iArr2[(f5 >> 8) & 255], 24)) ^ f(iArr2[(f6 >> 16) & 255], 16)) ^ f(iArr2[(f7 >> 24) & 255], 8)) ^ iArr[i4][0];
            this.f72932d = (((iArr2[f5 & 255] ^ f(iArr2[(f6 >> 8) & 255], 24)) ^ f(iArr2[(f7 >> 16) & 255], 16)) ^ f(iArr2[(f4 >> 24) & 255], 8)) ^ iArr[i4][1];
            this.f72933e = (((iArr2[f6 & 255] ^ f(iArr2[(f7 >> 8) & 255], 24)) ^ f(iArr2[(f4 >> 16) & 255], 16)) ^ f(iArr2[(f5 >> 24) & 255], 8)) ^ iArr[i4][2];
            this.f72934f = (((iArr2[f7 & 255] ^ f(iArr2[(f4 >> 8) & 255], 24)) ^ f(iArr2[(f5 >> 16) & 255], 16)) ^ f(iArr2[(f6 >> 24) & 255], 8)) ^ iArr[i4][3];
            i2 = i4 + 1;
        }
        int[] iArr3 = f72928i;
        int f8 = (((iArr3[this.f72931c & 255] ^ f(iArr3[(this.f72932d >> 8) & 255], 24)) ^ f(iArr3[(this.f72933e >> 16) & 255], 16)) ^ f(iArr3[(this.f72934f >> 24) & 255], 8)) ^ iArr[i2][0];
        int f9 = (((iArr3[this.f72932d & 255] ^ f(iArr3[(this.f72933e >> 8) & 255], 24)) ^ f(iArr3[(this.f72934f >> 16) & 255], 16)) ^ f(iArr3[(this.f72931c >> 24) & 255], 8)) ^ iArr[i2][1];
        int f10 = (((iArr3[this.f72933e & 255] ^ f(iArr3[(this.f72934f >> 8) & 255], 24)) ^ f(iArr3[(this.f72931c >> 16) & 255], 16)) ^ f(iArr3[(this.f72932d >> 24) & 255], 8)) ^ iArr[i2][2];
        int i5 = i2 + 1;
        int f11 = iArr[i2][3] ^ (f(iArr3[(this.f72933e >> 24) & 255], 8) ^ ((iArr3[this.f72934f & 255] ^ f(iArr3[(this.f72931c >> 8) & 255], 24)) ^ f(iArr3[(this.f72932d >> 16) & 255], 16)));
        byte[] bArr = f72926g;
        this.f72931c = iArr[i5][0] ^ ((((bArr[f8 & 255] & 255) ^ ((bArr[(f9 >> 8) & 255] & 255) << 8)) ^ ((bArr[(f10 >> 16) & 255] & 255) << 16)) ^ (bArr[(f11 >> 24) & 255] << BinaryMemcacheOpcodes.FLUSHQ));
        this.f72932d = ((((bArr[f9 & 255] & 255) ^ ((bArr[(f10 >> 8) & 255] & 255) << 8)) ^ ((bArr[(f11 >> 16) & 255] & 255) << 16)) ^ (bArr[(f8 >> 24) & 255] << BinaryMemcacheOpcodes.FLUSHQ)) ^ iArr[i5][1];
        this.f72933e = ((((bArr[f10 & 255] & 255) ^ ((bArr[(f11 >> 8) & 255] & 255) << 8)) ^ ((bArr[(f8 >> 16) & 255] & 255) << 16)) ^ (bArr[(f9 >> 24) & 255] << BinaryMemcacheOpcodes.FLUSHQ)) ^ iArr[i5][2];
        this.f72934f = ((((bArr[f11 & 255] & 255) ^ ((bArr[(f8 >> 8) & 255] & 255) << 8)) ^ ((bArr[(f9 >> 16) & 255] & 255) << 16)) ^ (bArr[(f10 >> 24) & 255] << BinaryMemcacheOpcodes.FLUSHQ)) ^ iArr[i5][3];
    }

    private int[][] b(byte[] bArr) throws ZipException {
        int length = bArr.length / 4;
        if ((length == 4 || length == 6 || length == 8) && length * 4 == bArr.length) {
            int i2 = length + 6;
            this.f72929a = i2;
            int i4 = 0;
            int[][] iArr = (int[][]) Array.newInstance(int.class, i2 + 1, 4);
            int i5 = 0;
            while (i4 < bArr.length) {
                iArr[i5 >> 2][i5 & 3] = (bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16) | (bArr[i4 + 3] << BinaryMemcacheOpcodes.FLUSHQ);
                i4 += 4;
                i5++;
            }
            int i6 = (this.f72929a + 1) << 2;
            for (int i7 = length; i7 < i6; i7++) {
                int i8 = i7 - 1;
                int i9 = iArr[i8 >> 2][i8 & 3];
                int i10 = i7 % length;
                if (i10 == 0) {
                    i9 = i(f(i9, 8)) ^ f72927h[(i7 / length) - 1];
                } else if (length > 6 && i10 == 4) {
                    i9 = i(i9);
                }
                int i11 = i7 - length;
                iArr[i7 >> 2][i7 & 3] = i9 ^ iArr[i11 >> 2][i11 & 3];
            }
            return iArr;
        }
        throw new ZipException("invalid key length (not 128/192/256)");
    }

    private int f(int i2, int i4) {
        return (i2 << (-i4)) | (i2 >>> i4);
    }

    private final void g(byte[] bArr, int i2) {
        int i4 = i2 + 1;
        int i5 = bArr[i2] & 255;
        this.f72931c = i5;
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        this.f72931c = i7;
        int i8 = i6 + 1;
        int i9 = i7 | ((bArr[i6] & 255) << 16);
        this.f72931c = i9;
        int i10 = i8 + 1;
        this.f72931c = i9 | (bArr[i8] << BinaryMemcacheOpcodes.FLUSHQ);
        int i11 = i10 + 1;
        int i12 = bArr[i10] & 255;
        this.f72932d = i12;
        int i13 = i11 + 1;
        int i14 = ((bArr[i11] & 255) << 8) | i12;
        this.f72932d = i14;
        int i15 = i13 + 1;
        int i16 = i14 | ((bArr[i13] & 255) << 16);
        this.f72932d = i16;
        int i17 = i15 + 1;
        this.f72932d = i16 | (bArr[i15] << BinaryMemcacheOpcodes.FLUSHQ);
        int i18 = i17 + 1;
        int i19 = bArr[i17] & 255;
        this.f72933e = i19;
        int i20 = i18 + 1;
        int i21 = ((bArr[i18] & 255) << 8) | i19;
        this.f72933e = i21;
        int i22 = i20 + 1;
        int i23 = i21 | ((bArr[i20] & 255) << 16);
        this.f72933e = i23;
        int i24 = i22 + 1;
        this.f72933e = i23 | (bArr[i22] << BinaryMemcacheOpcodes.FLUSHQ);
        int i25 = i24 + 1;
        int i26 = bArr[i24] & 255;
        this.f72934f = i26;
        int i27 = i25 + 1;
        int i28 = ((bArr[i25] & 255) << 8) | i26;
        this.f72934f = i28;
        int i29 = i28 | ((bArr[i27] & 255) << 16);
        this.f72934f = i29;
        this.f72934f = (bArr[i27 + 1] << BinaryMemcacheOpcodes.FLUSHQ) | i29;
    }

    private final void h(byte[] bArr, int i2) {
        int i4 = i2 + 1;
        int i5 = this.f72931c;
        bArr[i2] = (byte) i5;
        int i6 = i4 + 1;
        bArr[i4] = (byte) (i5 >> 8);
        int i7 = i6 + 1;
        bArr[i6] = (byte) (i5 >> 16);
        int i8 = i7 + 1;
        bArr[i7] = (byte) (i5 >> 24);
        int i9 = i8 + 1;
        int i10 = this.f72932d;
        bArr[i8] = (byte) i10;
        int i11 = i9 + 1;
        bArr[i9] = (byte) (i10 >> 8);
        int i12 = i11 + 1;
        bArr[i11] = (byte) (i10 >> 16);
        int i13 = i12 + 1;
        bArr[i12] = (byte) (i10 >> 24);
        int i14 = i13 + 1;
        int i15 = this.f72933e;
        bArr[i13] = (byte) i15;
        int i16 = i14 + 1;
        bArr[i14] = (byte) (i15 >> 8);
        int i17 = i16 + 1;
        bArr[i16] = (byte) (i15 >> 16);
        int i18 = i17 + 1;
        bArr[i17] = (byte) (i15 >> 24);
        int i19 = i18 + 1;
        int i20 = this.f72934f;
        bArr[i18] = (byte) i20;
        int i21 = i19 + 1;
        bArr[i19] = (byte) (i20 >> 8);
        bArr[i21] = (byte) (i20 >> 16);
        bArr[i21 + 1] = (byte) (i20 >> 24);
    }

    private int i(int i2) {
        byte[] bArr = f72926g;
        return (bArr[(i2 >> 24) & 255] << BinaryMemcacheOpcodes.FLUSHQ) | (bArr[i2 & 255] & 255) | ((bArr[(i2 >> 8) & 255] & 255) << 8) | ((bArr[(i2 >> 16) & 255] & 255) << 16);
    }

    public void c(byte[] bArr) throws ZipException {
        this.f72930b = b(bArr);
    }

    public int d(byte[] bArr, int i2, byte[] bArr2, int i4) throws ZipException {
        if (this.f72930b != null) {
            if (i2 + 16 <= bArr.length) {
                if (i4 + 16 <= bArr2.length) {
                    g(bArr, i2);
                    a(this.f72930b);
                    h(bArr2, i4);
                    return 16;
                }
                throw new ZipException("output buffer too short");
            }
            throw new ZipException("input buffer too short");
        }
        throw new ZipException("AES engine not initialised");
    }

    public int e(byte[] bArr, byte[] bArr2) throws ZipException {
        return d(bArr, 0, bArr2, 0);
    }
}
