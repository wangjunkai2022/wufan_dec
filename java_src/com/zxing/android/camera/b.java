package com.zxing.android.camera;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.hardware.Camera;
import android.preference.PreferenceManager;
import android.view.Display;
import android.view.WindowManager;
import java.util.Collection;
import java.util.Iterator;
import kotlinx.coroutines.v0;
/* compiled from: CameraConfigurationManager.java */
/* loaded from: classes3.dex */
final class b {

    /* renamed from: d  reason: collision with root package name */
    private static final String f65011d = "CameraConfiguration";

    /* renamed from: e  reason: collision with root package name */
    private static final int f65012e = 76800;

    /* renamed from: f  reason: collision with root package name */
    private static final int f65013f = 384000;

    /* renamed from: g  reason: collision with root package name */
    public static final String f65014g = "preferences_front_light";

    /* renamed from: a  reason: collision with root package name */
    private final Context f65015a;

    /* renamed from: b  reason: collision with root package name */
    private Point f65016b;

    /* renamed from: c  reason: collision with root package name */
    private Point f65017c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context) {
        this.f65015a = context;
    }

    private static void a(Camera.Parameters parameters, boolean z3) {
        String c4;
        if (z3) {
            c4 = c(parameters.getSupportedFlashModes(), "torch", v0.f72522d);
        } else {
            c4 = c(parameters.getSupportedFlashModes(), v0.f72523e);
        }
        if (c4 != null) {
            parameters.setFlashMode(c4);
        }
    }

    private static Point b(Camera.Parameters parameters, Point point, boolean z3) {
        Iterator<Camera.Size> it2 = parameters.getSupportedPreviewSizes().iterator();
        Point point2 = null;
        int i2 = Integer.MAX_VALUE;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Camera.Size next = it2.next();
            int i4 = next.height;
            int i5 = next.width;
            int i6 = i4 * i5;
            if (i6 >= f65012e && i6 <= f65013f) {
                int i7 = z3 ? i4 : i5;
                if (z3) {
                    i4 = i5;
                }
                int abs = Math.abs((point.x * i4) - (point.y * i7));
                if (abs == 0) {
                    point2 = new Point(i7, i4);
                    break;
                } else if (abs < i2) {
                    point2 = new Point(i7, i4);
                    i2 = abs;
                }
            }
        }
        if (point2 == null) {
            Camera.Size previewSize = parameters.getPreviewSize();
            return new Point(previewSize.width, previewSize.height);
        }
        return point2;
    }

    private static String c(Collection<String> collection, String... strArr) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Supported values: ");
        sb.append(collection);
        if (collection != null) {
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                str = strArr[i2];
                if (collection.contains(str)) {
                    break;
                }
            }
        }
        str = null;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Settable value: ");
        sb2.append(str);
        return str;
    }

    private static void g(Camera.Parameters parameters, SharedPreferences sharedPreferences) {
        a(parameters, sharedPreferences.getBoolean(f65014g, false));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point d() {
        return this.f65017c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point e() {
        return this.f65016b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        Display defaultDisplay = ((WindowManager) this.f65015a.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        if (width >= height) {
            width = height;
            height = width;
        }
        this.f65016b = new Point(width, height);
        StringBuilder sb = new StringBuilder();
        sb.append("Screen resolution: ");
        sb.append(this.f65016b);
        this.f65017c = b(parameters, new Point(height, width), false);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Camera resolution: ");
        sb2.append(this.f65017c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        if (parameters == null) {
            return;
        }
        g(parameters, PreferenceManager.getDefaultSharedPreferences(this.f65015a));
        String c4 = c(parameters.getSupportedFocusModes(), v0.f72521c, "macro");
        if (c4 != null) {
            parameters.setFocusMode(c4);
        }
        Point point = this.f65017c;
        parameters.setPreviewSize(point.x, point.y);
        camera.setDisplayOrientation(90);
        camera.setParameters(parameters);
    }

    void i(Camera camera, boolean z3) {
        Camera.Parameters parameters = camera.getParameters();
        a(parameters, z3);
        camera.setParameters(parameters);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f65015a);
        if (defaultSharedPreferences.getBoolean(f65014g, false) != z3) {
            SharedPreferences.Editor edit = defaultSharedPreferences.edit();
            edit.putBoolean(f65014g, z3);
            edit.commit();
        }
    }
}
