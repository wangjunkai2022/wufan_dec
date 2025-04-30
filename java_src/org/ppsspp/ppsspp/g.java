package org.ppsspp.ppsspp;

import android.opengl.GLSurfaceView;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
/* compiled from: NativeEGLConfigChooser.java */
/* loaded from: classes5.dex */
public class g implements GLSurfaceView.EGLConfigChooser {

    /* renamed from: a  reason: collision with root package name */
    private static final String f73855a = "NativeEGLConfigChooser";

    /* renamed from: b  reason: collision with root package name */
    private static final int f73856b = 4;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NativeEGLConfigChooser.java */
    /* loaded from: classes5.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        EGLConfig f73857a;

        /* renamed from: b  reason: collision with root package name */
        public int f73858b;

        /* renamed from: c  reason: collision with root package name */
        public int f73859c;

        /* renamed from: d  reason: collision with root package name */
        public int f73860d;

        /* renamed from: e  reason: collision with root package name */
        public int f73861e;

        /* renamed from: f  reason: collision with root package name */
        public int f73862f;

        /* renamed from: g  reason: collision with root package name */
        public int f73863g;

        /* renamed from: h  reason: collision with root package name */
        public int f73864h;

        private b() {
        }

        public void a() {
            StringBuilder sb = new StringBuilder();
            sb.append("EGLConfig: red=");
            sb.append(this.f73858b);
            sb.append(" green=");
            sb.append(this.f73859c);
            sb.append(" blue=");
            sb.append(this.f73860d);
            sb.append(" alpha=");
            sb.append(this.f73861e);
            sb.append(" depth=");
            sb.append(this.f73863g);
            sb.append(" stencil=");
            sb.append(this.f73862f);
            sb.append(" samples=");
            sb.append(this.f73864h);
        }
    }

    b[] a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
        b[] bVarArr = new b[eGLConfigArr.length];
        for (int i2 = 0; i2 < eGLConfigArr.length; i2++) {
            b bVar = new b();
            bVar.f73857a = eGLConfigArr[i2];
            bVar.f73858b = b(egl10, eGLDisplay, eGLConfigArr[i2], 12324);
            bVar.f73859c = b(egl10, eGLDisplay, eGLConfigArr[i2], 12323);
            bVar.f73860d = b(egl10, eGLDisplay, eGLConfigArr[i2], 12322);
            bVar.f73861e = b(egl10, eGLDisplay, eGLConfigArr[i2], 12321);
            bVar.f73863g = b(egl10, eGLDisplay, eGLConfigArr[i2], 12325);
            bVar.f73862f = b(egl10, eGLDisplay, eGLConfigArr[i2], 12326);
            bVar.f73864h = b(egl10, eGLDisplay, eGLConfigArr[i2], 12337);
            bVarArr[i2] = bVar;
        }
        return bVarArr;
    }

    int b(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i2) {
        int[] iArr = new int[1];
        try {
            if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i2, iArr)) {
                return iArr[0];
            }
            return -1;
        } catch (IllegalArgumentException unused) {
            if (eGLConfig != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Illegal argument to getEglConfigAttrib: attr=");
                sb.append(i2);
            }
            return -1;
        }
    }

    @Override // android.opengl.GLSurfaceView.EGLConfigChooser
    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
        int[] iArr = {12324, 5, 12323, 6, 12322, 5, 12325, 16, 12326, 0, 12339, 4, 12352, 4, 12344};
        int[] iArr2 = new int[1];
        if (egl10.eglChooseConfig(eGLDisplay, iArr, null, 0, iArr2)) {
            int i2 = iArr2[0];
            StringBuilder sb = new StringBuilder();
            sb.append("There are ");
            sb.append(i2);
            sb.append(" egl configs");
            if (i2 > 0) {
                EGLConfig[] eGLConfigArr = new EGLConfig[i2];
                if (egl10.eglChooseConfig(eGLDisplay, iArr, eGLConfigArr, i2, iArr2)) {
                    b[] a4 = a(egl10, eGLDisplay, eGLConfigArr);
                    b bVar = null;
                    for (b bVar2 : a4) {
                        bVar2.a();
                    }
                    int i4 = 0;
                    while (true) {
                        if (i4 >= a4.length) {
                            break;
                        }
                        b bVar3 = a4[i4];
                        if (bVar3.f73858b == 8 && bVar3.f73859c == 8 && bVar3.f73860d == 8 && bVar3.f73861e == 0 && bVar3.f73862f >= 8 && bVar3.f73863g >= 24) {
                            bVar = bVar3;
                            break;
                        }
                        i4++;
                    }
                    if (bVar == null) {
                        int i5 = 0;
                        while (true) {
                            if (i5 >= a4.length) {
                                break;
                            }
                            b bVar4 = a4[i5];
                            if (bVar4.f73858b == 8 && bVar4.f73859c == 8 && bVar4.f73860d == 8 && bVar4.f73861e == 0 && bVar4.f73862f >= 8 && bVar4.f73863g >= 20) {
                                bVar = bVar4;
                                break;
                            }
                            i5++;
                        }
                    }
                    if (bVar == null) {
                        int i6 = 0;
                        while (true) {
                            if (i6 >= a4.length) {
                                break;
                            }
                            b bVar5 = a4[i6];
                            if (bVar5.f73858b == 8 && bVar5.f73859c == 8 && bVar5.f73860d == 8 && bVar5.f73861e == 0 && bVar5.f73862f >= 8 && bVar5.f73863g >= 16) {
                                bVar = bVar5;
                                break;
                            }
                            i6++;
                        }
                    }
                    if (bVar == null) {
                        int i7 = 0;
                        while (true) {
                            if (i7 >= a4.length) {
                                break;
                            }
                            b bVar6 = a4[i7];
                            if (bVar6.f73858b == 8 && bVar6.f73859c == 8 && bVar6.f73860d == 8 && bVar6.f73861e == 0 && bVar6.f73863g >= 16) {
                                bVar = bVar6;
                                break;
                            }
                            i7++;
                        }
                    }
                    if (bVar == null) {
                        int i8 = 0;
                        while (true) {
                            if (i8 >= a4.length) {
                                break;
                            }
                            b bVar7 = a4[i8];
                            if (bVar7.f73858b == 8 && bVar7.f73859c == 8 && bVar7.f73860d == 8 && bVar7.f73861e == 8 && bVar7.f73862f >= 8 && bVar7.f73863g >= 24) {
                                bVar = bVar7;
                                break;
                            }
                            i8++;
                        }
                    }
                    if (bVar == null) {
                        int i9 = 0;
                        while (true) {
                            if (i9 >= a4.length) {
                                break;
                            }
                            b bVar8 = a4[i9];
                            if (bVar8.f73858b == 8 && bVar8.f73859c == 8 && bVar8.f73860d == 8 && bVar8.f73861e == 8 && bVar8.f73862f >= 8 && bVar8.f73863g >= 16) {
                                bVar = bVar8;
                                break;
                            }
                            i9++;
                        }
                    }
                    if (bVar == null) {
                        int i10 = 0;
                        while (true) {
                            if (i10 >= a4.length) {
                                break;
                            }
                            b bVar9 = a4[i10];
                            if (bVar9.f73858b >= 5 && bVar9.f73859c >= 6 && bVar9.f73860d >= 5 && bVar9.f73863g >= 16 && bVar9.f73862f >= 8) {
                                bVar = bVar9;
                                break;
                            }
                            i10++;
                        }
                    }
                    if (bVar == null) {
                        int i11 = 0;
                        while (true) {
                            if (i11 >= a4.length) {
                                break;
                            }
                            b bVar10 = a4[i11];
                            if (bVar10.f73858b >= 5 && bVar10.f73859c >= 6 && bVar10.f73860d >= 5 && bVar10.f73863g >= 16) {
                                bVar = bVar10;
                                break;
                            }
                            i11++;
                        }
                    }
                    if (bVar == null && a4.length > 0) {
                        bVar = a4[0];
                    }
                    if (bVar != null) {
                        bVar.a();
                        return bVar.f73857a;
                    }
                    throw new IllegalArgumentException("Failed to find a valid EGL config");
                }
                throw new IllegalArgumentException("eglChooseConfig failed when retrieving");
            }
            throw new IllegalArgumentException("No configs match configSpec");
        }
        throw new IllegalArgumentException("eglChooseConfig failed when counting");
    }
}
