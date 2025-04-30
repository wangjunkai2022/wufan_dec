package com.switfpass.pay.activity.zxing.camera;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import java.util.regex.Pattern;
import kotlinx.coroutines.v0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: f  reason: collision with root package name */
    private static final String f58748f = "d";

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f58749g = Pattern.compile(",");

    /* renamed from: a  reason: collision with root package name */
    private final Context f58750a;

    /* renamed from: b  reason: collision with root package name */
    private Point f58751b;

    /* renamed from: c  reason: collision with root package name */
    private Point f58752c;

    /* renamed from: d  reason: collision with root package name */
    private int f58753d;

    /* renamed from: e  reason: collision with root package name */
    private String f58754e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context) {
        this.f58750a = context;
    }

    private static int a(CharSequence charSequence, int i2) {
        int i4 = 0;
        for (String str : f58749g.split(charSequence)) {
            try {
                double parseDouble = Double.parseDouble(str.trim());
                int i5 = (int) (10.0d * parseDouble);
                double d4 = i2;
                Double.isNaN(d4);
                if (Math.abs(d4 - parseDouble) < Math.abs(i2 - i4)) {
                    i4 = i5;
                }
            } catch (NumberFormatException unused) {
                return i2;
            }
        }
        return i4;
    }

    private static Point b(CharSequence charSequence, Point point) {
        StringBuilder sb;
        int parseInt;
        int parseInt2;
        int abs;
        String[] split = f58749g.split(charSequence);
        int length = split.length;
        int i2 = Integer.MAX_VALUE;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i4 >= length) {
                break;
            }
            String trim = split[i4].trim();
            int indexOf = trim.indexOf(120);
            if (indexOf < 0) {
                sb = new StringBuilder("Bad preview-size: ");
            } else {
                try {
                    parseInt = Integer.parseInt(trim.substring(0, indexOf));
                    parseInt2 = Integer.parseInt(trim.substring(indexOf + 1));
                    abs = Math.abs(parseInt - point.x) + Math.abs(parseInt2 - point.y);
                } catch (NumberFormatException unused) {
                    sb = new StringBuilder("Bad preview-size: ");
                }
                if (abs == 0) {
                    i6 = parseInt2;
                    i5 = parseInt;
                    break;
                }
                if (abs < i2) {
                    i6 = parseInt2;
                    i2 = abs;
                    i5 = parseInt;
                }
                i4++;
            }
            sb.append(trim);
            i4++;
        }
        if (i5 <= 0 || i6 <= 0) {
            return null;
        }
        return new Point(i5, i6);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        this.f58753d = parameters.getPreviewFormat();
        this.f58754e = parameters.get("preview-format");
        StringBuilder sb = new StringBuilder("Default preview format: ");
        sb.append(this.f58753d);
        sb.append('/');
        sb.append(this.f58754e);
        Display defaultDisplay = ((WindowManager) this.f58750a.getSystemService("window")).getDefaultDisplay();
        this.f58751b = new Point(defaultDisplay.getWidth(), defaultDisplay.getHeight());
        new StringBuilder("Screen resolution: ").append(this.f58751b);
        Point point = this.f58751b;
        String str = parameters.get("preview-size-values");
        if (str == null) {
            str = parameters.get("preview-size-value");
        }
        Point point2 = null;
        if (str != null) {
            new StringBuilder("preview-size-values parameter: ").append(str);
            point2 = b(str, point);
        }
        if (point2 == null) {
            point2 = new Point((point.x >> 3) << 3, (point.y >> 3) << 3);
        }
        this.f58752c = point2;
        new StringBuilder("Camera resolution: ").append(this.f58751b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        new StringBuilder("Setting preview size: ").append(this.f58752c);
        Point point = this.f58752c;
        parameters.setPreviewSize(point.x, point.y);
        if (Build.MODEL.contains("Behold II") && a.f58729m == 3) {
            parameters.set("flash-value", 1);
        } else {
            parameters.set("flash-value", 2);
        }
        parameters.set("flash-mode", v0.f72523e);
        String str = parameters.get("zoom-supported");
        if (str == null || Boolean.parseBoolean(str)) {
            String str2 = parameters.get("max-zoom");
            int i2 = 27;
            if (str2 != null) {
                try {
                    int parseDouble = (int) (Double.parseDouble(str2) * 10.0d);
                    if (27 > parseDouble) {
                        i2 = parseDouble;
                    }
                } catch (NumberFormatException unused) {
                    new StringBuilder("Bad max-zoom: ").append(str2);
                }
            }
            String str3 = parameters.get("taking-picture-zoom-max");
            if (str3 != null) {
                try {
                    int parseInt = Integer.parseInt(str3);
                    if (i2 > parseInt) {
                        i2 = parseInt;
                    }
                } catch (NumberFormatException unused2) {
                    new StringBuilder("Bad taking-picture-zoom-max: ").append(str3);
                }
            }
            String str4 = parameters.get("mot-zoom-values");
            if (str4 != null) {
                i2 = a(str4, i2);
            }
            String str5 = parameters.get("mot-zoom-step");
            if (str5 != null) {
                try {
                    int parseDouble2 = (int) (Double.parseDouble(str5.trim()) * 10.0d);
                    if (parseDouble2 > 1) {
                        i2 -= i2 % parseDouble2;
                    }
                } catch (NumberFormatException unused3) {
                }
            }
            if (str2 != null || str4 != null) {
                double d4 = i2;
                Double.isNaN(d4);
                parameters.set("zoom", String.valueOf(d4 / 10.0d));
            }
            if (str3 != null) {
                parameters.set("taking-picture-zoom", i2);
            }
        }
        camera.setDisplayOrientation(90);
        camera.setParameters(parameters);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int e() {
        return this.f58753d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Point f() {
        return this.f58752c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Point g() {
        return this.f58751b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String h() {
        return this.f58754e;
    }
}
