package androidx.core.graphics;

import android.graphics.Path;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import m.a;
/* loaded from: classes.dex */
public class PathParser {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4260a = "PathParser";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ExtractFloatResult {

        /* renamed from: a  reason: collision with root package name */
        int f4261a;

        /* renamed from: b  reason: collision with root package name */
        boolean f4262b;

        ExtractFloatResult() {
        }
    }

    private PathParser() {
    }

    private static void a(ArrayList<PathDataNode> arrayList, char c4, float[] fArr) {
        arrayList.add(new PathDataNode(c4, fArr));
    }

    static float[] b(float[] fArr, int i2, int i4) {
        if (i2 <= i4) {
            int length = fArr.length;
            if (i2 >= 0 && i2 <= length) {
                int i5 = i4 - i2;
                int min = Math.min(i5, length - i2);
                float[] fArr2 = new float[i5];
                System.arraycopy(fArr, i2, fArr2, 0, min);
                return fArr2;
            }
            throw new ArrayIndexOutOfBoundsException();
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003a A[LOOP:0: B:3:0x0007->B:24:0x003a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void c(java.lang.String r8, int r9, androidx.core.graphics.PathParser.ExtractFloatResult r10) {
        /*
            r0 = 0
            r10.f4262b = r0
            r1 = r9
            r2 = 0
            r3 = 0
            r4 = 0
        L7:
            int r5 = r8.length()
            if (r1 >= r5) goto L3d
            char r5 = r8.charAt(r1)
            r6 = 32
            r7 = 1
            if (r5 == r6) goto L35
            r6 = 69
            if (r5 == r6) goto L33
            r6 = 101(0x65, float:1.42E-43)
            if (r5 == r6) goto L33
            switch(r5) {
                case 44: goto L35;
                case 45: goto L2a;
                case 46: goto L22;
                default: goto L21;
            }
        L21:
            goto L31
        L22:
            if (r3 != 0) goto L27
            r2 = 0
            r3 = 1
            goto L37
        L27:
            r10.f4262b = r7
            goto L35
        L2a:
            if (r1 == r9) goto L31
            if (r2 != 0) goto L31
            r10.f4262b = r7
            goto L35
        L31:
            r2 = 0
            goto L37
        L33:
            r2 = 1
            goto L37
        L35:
            r2 = 0
            r4 = 1
        L37:
            if (r4 == 0) goto L3a
            goto L3d
        L3a:
            int r1 = r1 + 1
            goto L7
        L3d:
            r10.f4261a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.PathParser.c(java.lang.String, int, androidx.core.graphics.PathParser$ExtractFloatResult):void");
    }

    public static boolean canMorph(@Nullable PathDataNode[] pathDataNodeArr, @Nullable PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr.length != pathDataNodeArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < pathDataNodeArr.length; i2++) {
            if (pathDataNodeArr[i2].mType != pathDataNodeArr2[i2].mType || pathDataNodeArr[i2].mParams.length != pathDataNodeArr2[i2].mParams.length) {
                return false;
            }
        }
        return true;
    }

    public static PathDataNode[] createNodesFromPathData(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 1;
        int i4 = 0;
        while (i2 < str.length()) {
            int e4 = e(str, i2);
            String trim = str.substring(i4, e4).trim();
            if (trim.length() > 0) {
                a(arrayList, trim.charAt(0), d(trim));
            }
            i4 = e4;
            i2 = e4 + 1;
        }
        if (i2 - i4 == 1 && i4 < str.length()) {
            a(arrayList, str.charAt(i4), new float[0]);
        }
        return (PathDataNode[]) arrayList.toArray(new PathDataNode[arrayList.size()]);
    }

    public static Path createPathFromPathData(String str) {
        Path path = new Path();
        PathDataNode[] createNodesFromPathData = createNodesFromPathData(str);
        if (createNodesFromPathData != null) {
            try {
                PathDataNode.nodesToPath(createNodesFromPathData, path);
                return path;
            } catch (RuntimeException e4) {
                throw new RuntimeException("Error in parsing " + str, e4);
            }
        }
        return null;
    }

    private static float[] d(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            ExtractFloatResult extractFloatResult = new ExtractFloatResult();
            int length = str.length();
            int i2 = 1;
            int i4 = 0;
            while (i2 < length) {
                c(str, i2, extractFloatResult);
                int i5 = extractFloatResult.f4261a;
                if (i2 < i5) {
                    fArr[i4] = Float.parseFloat(str.substring(i2, i5));
                    i4++;
                }
                i2 = extractFloatResult.f4262b ? i5 : i5 + 1;
            }
            return b(fArr, 0, i4);
        } catch (NumberFormatException e4) {
            throw new RuntimeException("error in parsing \"" + str + a.f72569g, e4);
        }
    }

    public static PathDataNode[] deepCopyNodes(PathDataNode[] pathDataNodeArr) {
        if (pathDataNodeArr == null) {
            return null;
        }
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int i2 = 0; i2 < pathDataNodeArr.length; i2++) {
            pathDataNodeArr2[i2] = new PathDataNode(pathDataNodeArr[i2]);
        }
        return pathDataNodeArr2;
    }

    private static int e(String str, int i2) {
        while (i2 < str.length()) {
            char charAt = str.charAt(i2);
            if (((charAt - 'A') * (charAt - 'Z') <= 0 || (charAt - 'a') * (charAt - 'z') <= 0) && charAt != 'e' && charAt != 'E') {
                return i2;
            }
            i2++;
        }
        return i2;
    }

    public static boolean interpolatePathDataNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2, PathDataNode[] pathDataNodeArr3, float f4) {
        if (pathDataNodeArr != null && pathDataNodeArr2 != null && pathDataNodeArr3 != null) {
            if (pathDataNodeArr.length == pathDataNodeArr2.length && pathDataNodeArr2.length == pathDataNodeArr3.length) {
                if (canMorph(pathDataNodeArr2, pathDataNodeArr3)) {
                    for (int i2 = 0; i2 < pathDataNodeArr.length; i2++) {
                        pathDataNodeArr[i2].interpolatePathDataNode(pathDataNodeArr2[i2], pathDataNodeArr3[i2], f4);
                    }
                    return true;
                }
                return false;
            }
            throw new IllegalArgumentException("The nodes to be interpolated and resulting nodes must have the same length");
        }
        throw new IllegalArgumentException("The nodes to be interpolated and resulting nodes cannot be null");
    }

    public static void updateNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        for (int i2 = 0; i2 < pathDataNodeArr2.length; i2++) {
            pathDataNodeArr[i2].mType = pathDataNodeArr2[i2].mType;
            for (int i4 = 0; i4 < pathDataNodeArr2[i2].mParams.length; i4++) {
                pathDataNodeArr[i2].mParams[i4] = pathDataNodeArr2[i2].mParams[i4];
            }
        }
    }

    /* loaded from: classes.dex */
    public static class PathDataNode {
        public float[] mParams;
        public char mType;

        PathDataNode(char c4, float[] fArr) {
            this.mType = c4;
            this.mParams = fArr;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private static void a(Path path, float[] fArr, char c4, char c5, float[] fArr2) {
            int i2;
            int i4;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11;
            char c6 = c5;
            float f12 = fArr[0];
            float f13 = fArr[1];
            float f14 = fArr[2];
            float f15 = fArr[3];
            float f16 = fArr[4];
            float f17 = fArr[5];
            switch (c6) {
                case 'A':
                case 'a':
                    i2 = 7;
                    break;
                case 'C':
                case 'c':
                    i2 = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i2 = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case 't':
                default:
                    i2 = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i2 = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f16, f17);
                    f12 = f16;
                    f14 = f12;
                    f13 = f17;
                    f15 = f13;
                    i2 = 2;
                    break;
            }
            float f18 = f12;
            float f19 = f13;
            float f20 = f16;
            float f21 = f17;
            int i5 = 0;
            char c7 = c4;
            while (i5 < fArr2.length) {
                if (c6 != 'A') {
                    if (c6 == 'C') {
                        i4 = i5;
                        int i6 = i4 + 2;
                        int i7 = i4 + 3;
                        int i8 = i4 + 4;
                        int i9 = i4 + 5;
                        path.cubicTo(fArr2[i4 + 0], fArr2[i4 + 1], fArr2[i6], fArr2[i7], fArr2[i8], fArr2[i9]);
                        f18 = fArr2[i8];
                        float f22 = fArr2[i9];
                        float f23 = fArr2[i6];
                        float f24 = fArr2[i7];
                        f19 = f22;
                        f15 = f24;
                        f14 = f23;
                    } else if (c6 == 'H') {
                        i4 = i5;
                        int i10 = i4 + 0;
                        path.lineTo(fArr2[i10], f19);
                        f18 = fArr2[i10];
                    } else if (c6 == 'Q') {
                        i4 = i5;
                        int i11 = i4 + 0;
                        int i12 = i4 + 1;
                        int i13 = i4 + 2;
                        int i14 = i4 + 3;
                        path.quadTo(fArr2[i11], fArr2[i12], fArr2[i13], fArr2[i14]);
                        float f25 = fArr2[i11];
                        float f26 = fArr2[i12];
                        f18 = fArr2[i13];
                        f19 = fArr2[i14];
                        f14 = f25;
                        f15 = f26;
                    } else if (c6 == 'V') {
                        i4 = i5;
                        int i15 = i4 + 0;
                        path.lineTo(f18, fArr2[i15]);
                        f19 = fArr2[i15];
                    } else if (c6 != 'a') {
                        if (c6 != 'c') {
                            if (c6 == 'h') {
                                int i16 = i5 + 0;
                                path.rLineTo(fArr2[i16], 0.0f);
                                f18 += fArr2[i16];
                            } else if (c6 != 'q') {
                                if (c6 == 'v') {
                                    int i17 = i5 + 0;
                                    path.rLineTo(0.0f, fArr2[i17]);
                                    f7 = fArr2[i17];
                                } else if (c6 == 'L') {
                                    int i18 = i5 + 0;
                                    int i19 = i5 + 1;
                                    path.lineTo(fArr2[i18], fArr2[i19]);
                                    f18 = fArr2[i18];
                                    f19 = fArr2[i19];
                                } else if (c6 == 'M') {
                                    int i20 = i5 + 0;
                                    f18 = fArr2[i20];
                                    int i21 = i5 + 1;
                                    f19 = fArr2[i21];
                                    if (i5 > 0) {
                                        path.lineTo(fArr2[i20], fArr2[i21]);
                                    } else {
                                        path.moveTo(fArr2[i20], fArr2[i21]);
                                        i4 = i5;
                                        f21 = f19;
                                        f20 = f18;
                                    }
                                } else if (c6 == 'S') {
                                    if (c7 == 'c' || c7 == 's' || c7 == 'C' || c7 == 'S') {
                                        f18 = (f18 * 2.0f) - f14;
                                        f19 = (f19 * 2.0f) - f15;
                                    }
                                    float f27 = f19;
                                    int i22 = i5 + 0;
                                    int i23 = i5 + 1;
                                    int i24 = i5 + 2;
                                    int i25 = i5 + 3;
                                    path.cubicTo(f18, f27, fArr2[i22], fArr2[i23], fArr2[i24], fArr2[i25]);
                                    f4 = fArr2[i22];
                                    f5 = fArr2[i23];
                                    f18 = fArr2[i24];
                                    f19 = fArr2[i25];
                                    f14 = f4;
                                    f15 = f5;
                                } else if (c6 == 'T') {
                                    if (c7 == 'q' || c7 == 't' || c7 == 'Q' || c7 == 'T') {
                                        f18 = (f18 * 2.0f) - f14;
                                        f19 = (f19 * 2.0f) - f15;
                                    }
                                    int i26 = i5 + 0;
                                    int i27 = i5 + 1;
                                    path.quadTo(f18, f19, fArr2[i26], fArr2[i27]);
                                    float f28 = fArr2[i26];
                                    float f29 = fArr2[i27];
                                    i4 = i5;
                                    f15 = f19;
                                    f14 = f18;
                                    f18 = f28;
                                    f19 = f29;
                                } else if (c6 == 'l') {
                                    int i28 = i5 + 0;
                                    int i29 = i5 + 1;
                                    path.rLineTo(fArr2[i28], fArr2[i29]);
                                    f18 += fArr2[i28];
                                    f7 = fArr2[i29];
                                } else if (c6 == 'm') {
                                    int i30 = i5 + 0;
                                    f18 += fArr2[i30];
                                    int i31 = i5 + 1;
                                    f19 += fArr2[i31];
                                    if (i5 > 0) {
                                        path.rLineTo(fArr2[i30], fArr2[i31]);
                                    } else {
                                        path.rMoveTo(fArr2[i30], fArr2[i31]);
                                        i4 = i5;
                                        f21 = f19;
                                        f20 = f18;
                                    }
                                } else if (c6 == 's') {
                                    if (c7 == 'c' || c7 == 's' || c7 == 'C' || c7 == 'S') {
                                        float f30 = f18 - f14;
                                        f8 = f19 - f15;
                                        f9 = f30;
                                    } else {
                                        f9 = 0.0f;
                                        f8 = 0.0f;
                                    }
                                    int i32 = i5 + 0;
                                    int i33 = i5 + 1;
                                    int i34 = i5 + 2;
                                    int i35 = i5 + 3;
                                    path.rCubicTo(f9, f8, fArr2[i32], fArr2[i33], fArr2[i34], fArr2[i35]);
                                    f4 = fArr2[i32] + f18;
                                    f5 = fArr2[i33] + f19;
                                    f18 += fArr2[i34];
                                    f6 = fArr2[i35];
                                } else if (c6 == 't') {
                                    if (c7 == 'q' || c7 == 't' || c7 == 'Q' || c7 == 'T') {
                                        f10 = f18 - f14;
                                        f11 = f19 - f15;
                                    } else {
                                        f11 = 0.0f;
                                        f10 = 0.0f;
                                    }
                                    int i36 = i5 + 0;
                                    int i37 = i5 + 1;
                                    path.rQuadTo(f10, f11, fArr2[i36], fArr2[i37]);
                                    float f31 = f10 + f18;
                                    float f32 = f11 + f19;
                                    f18 += fArr2[i36];
                                    f19 += fArr2[i37];
                                    f15 = f32;
                                    f14 = f31;
                                }
                                f19 += f7;
                            } else {
                                int i38 = i5 + 0;
                                int i39 = i5 + 1;
                                int i40 = i5 + 2;
                                int i41 = i5 + 3;
                                path.rQuadTo(fArr2[i38], fArr2[i39], fArr2[i40], fArr2[i41]);
                                f4 = fArr2[i38] + f18;
                                f5 = fArr2[i39] + f19;
                                f18 += fArr2[i40];
                                f6 = fArr2[i41];
                            }
                            i4 = i5;
                        } else {
                            int i42 = i5 + 2;
                            int i43 = i5 + 3;
                            int i44 = i5 + 4;
                            int i45 = i5 + 5;
                            path.rCubicTo(fArr2[i5 + 0], fArr2[i5 + 1], fArr2[i42], fArr2[i43], fArr2[i44], fArr2[i45]);
                            f4 = fArr2[i42] + f18;
                            f5 = fArr2[i43] + f19;
                            f18 += fArr2[i44];
                            f6 = fArr2[i45];
                        }
                        f19 += f6;
                        f14 = f4;
                        f15 = f5;
                        i4 = i5;
                    } else {
                        int i46 = i5 + 5;
                        int i47 = i5 + 6;
                        i4 = i5;
                        c(path, f18, f19, fArr2[i46] + f18, fArr2[i47] + f19, fArr2[i5 + 0], fArr2[i5 + 1], fArr2[i5 + 2], fArr2[i5 + 3] != 0.0f, fArr2[i5 + 4] != 0.0f);
                        f18 += fArr2[i46];
                        f19 += fArr2[i47];
                    }
                    i5 = i4 + i2;
                    c7 = c5;
                    c6 = c7;
                } else {
                    i4 = i5;
                    int i48 = i4 + 5;
                    int i49 = i4 + 6;
                    c(path, f18, f19, fArr2[i48], fArr2[i49], fArr2[i4 + 0], fArr2[i4 + 1], fArr2[i4 + 2], fArr2[i4 + 3] != 0.0f, fArr2[i4 + 4] != 0.0f);
                    f18 = fArr2[i48];
                    f19 = fArr2[i49];
                }
                f15 = f19;
                f14 = f18;
                i5 = i4 + i2;
                c7 = c5;
                c6 = c7;
            }
            fArr[0] = f18;
            fArr[1] = f19;
            fArr[2] = f14;
            fArr[3] = f15;
            fArr[4] = f20;
            fArr[5] = f21;
        }

        private static void b(Path path, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12) {
            double d13 = d6;
            int ceil = (int) Math.ceil(Math.abs((d12 * 4.0d) / 3.141592653589793d));
            double cos = Math.cos(d10);
            double sin = Math.sin(d10);
            double cos2 = Math.cos(d11);
            double sin2 = Math.sin(d11);
            double d14 = -d13;
            double d15 = d14 * cos;
            double d16 = d7 * sin;
            double d17 = (d15 * sin2) - (d16 * cos2);
            double d18 = d14 * sin;
            double d19 = d7 * cos;
            double d20 = (sin2 * d18) + (cos2 * d19);
            double d21 = ceil;
            Double.isNaN(d21);
            double d22 = d12 / d21;
            double d23 = d11;
            double d24 = d20;
            double d25 = d17;
            int i2 = 0;
            double d26 = d8;
            double d27 = d9;
            while (i2 < ceil) {
                double d28 = d23 + d22;
                double sin3 = Math.sin(d28);
                double cos3 = Math.cos(d28);
                double d29 = (d4 + ((d13 * cos) * cos3)) - (d16 * sin3);
                double d30 = d5 + (d13 * sin * cos3) + (d19 * sin3);
                double d31 = (d15 * sin3) - (d16 * cos3);
                double d32 = (sin3 * d18) + (cos3 * d19);
                double d33 = d28 - d23;
                double tan = Math.tan(d33 / 2.0d);
                double sin4 = (Math.sin(d33) * (Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d)) / 3.0d;
                double d34 = d26 + (d25 * sin4);
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) d34, (float) (d27 + (d24 * sin4)), (float) (d29 - (sin4 * d31)), (float) (d30 - (sin4 * d32)), (float) d29, (float) d30);
                i2++;
                d22 = d22;
                sin = sin;
                d26 = d29;
                d18 = d18;
                cos = cos;
                d23 = d28;
                d24 = d32;
                d25 = d31;
                ceil = ceil;
                d27 = d30;
                d13 = d6;
            }
        }

        private static void c(Path path, float f4, float f5, float f6, float f7, float f8, float f9, float f10, boolean z3, boolean z4) {
            double d4;
            double d5;
            double radians = Math.toRadians(f10);
            double cos = Math.cos(radians);
            double sin = Math.sin(radians);
            double d6 = f4;
            Double.isNaN(d6);
            double d7 = d6 * cos;
            double d8 = f5;
            Double.isNaN(d8);
            double d9 = f8;
            Double.isNaN(d9);
            double d10 = (d7 + (d8 * sin)) / d9;
            double d11 = -f4;
            Double.isNaN(d11);
            Double.isNaN(d8);
            double d12 = f9;
            Double.isNaN(d12);
            double d13 = ((d11 * sin) + (d8 * cos)) / d12;
            double d14 = f6;
            Double.isNaN(d14);
            double d15 = f7;
            Double.isNaN(d15);
            Double.isNaN(d9);
            double d16 = ((d14 * cos) + (d15 * sin)) / d9;
            double d17 = -f6;
            Double.isNaN(d17);
            Double.isNaN(d15);
            Double.isNaN(d12);
            double d18 = ((d17 * sin) + (d15 * cos)) / d12;
            double d19 = d10 - d16;
            double d20 = d13 - d18;
            double d21 = (d10 + d16) / 2.0d;
            double d22 = (d13 + d18) / 2.0d;
            double d23 = (d19 * d19) + (d20 * d20);
            if (d23 == 0.0d) {
                return;
            }
            double d24 = (1.0d / d23) - 0.25d;
            if (d24 < 0.0d) {
                StringBuilder sb = new StringBuilder();
                sb.append("Points are too far apart ");
                sb.append(d23);
                float sqrt = (float) (Math.sqrt(d23) / 1.99999d);
                c(path, f4, f5, f6, f7, f8 * sqrt, f9 * sqrt, f10, z3, z4);
                return;
            }
            double sqrt2 = Math.sqrt(d24);
            double d25 = d19 * sqrt2;
            double d26 = sqrt2 * d20;
            if (z3 == z4) {
                d4 = d21 - d26;
                d5 = d22 + d25;
            } else {
                d4 = d21 + d26;
                d5 = d22 - d25;
            }
            double atan2 = Math.atan2(d13 - d5, d10 - d4);
            double atan22 = Math.atan2(d18 - d5, d16 - d4) - atan2;
            if (z4 != (atan22 >= 0.0d)) {
                atan22 = atan22 > 0.0d ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
            }
            Double.isNaN(d9);
            double d27 = d4 * d9;
            Double.isNaN(d12);
            double d28 = d5 * d12;
            b(path, (d27 * cos) - (d28 * sin), (d27 * sin) + (d28 * cos), d9, d12, d6, d8, radians, atan2, atan22);
        }

        public static void nodesToPath(PathDataNode[] pathDataNodeArr, Path path) {
            float[] fArr = new float[6];
            char c4 = 'm';
            for (int i2 = 0; i2 < pathDataNodeArr.length; i2++) {
                a(path, fArr, c4, pathDataNodeArr[i2].mType, pathDataNodeArr[i2].mParams);
                c4 = pathDataNodeArr[i2].mType;
            }
        }

        public void interpolatePathDataNode(PathDataNode pathDataNode, PathDataNode pathDataNode2, float f4) {
            this.mType = pathDataNode.mType;
            int i2 = 0;
            while (true) {
                float[] fArr = pathDataNode.mParams;
                if (i2 >= fArr.length) {
                    return;
                }
                this.mParams[i2] = (fArr[i2] * (1.0f - f4)) + (pathDataNode2.mParams[i2] * f4);
                i2++;
            }
        }

        PathDataNode(PathDataNode pathDataNode) {
            this.mType = pathDataNode.mType;
            float[] fArr = pathDataNode.mParams;
            this.mParams = PathParser.b(fArr, 0, fArr.length);
        }
    }
}
