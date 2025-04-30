package androidx.core.view;

import android.annotation.SuppressLint;
import android.app.UiModeManager;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import android.view.Display;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
/* loaded from: classes.dex */
public final class DisplayCompat {

    /* renamed from: a  reason: collision with root package name */
    private static final int f4745a = 3840;

    /* renamed from: b  reason: collision with root package name */
    private static final int f4746b = 2160;

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(17)
    /* loaded from: classes.dex */
    public static class Api17Impl {
        private Api17Impl() {
        }

        static void a(Display display, Point point) {
            display.getRealSize(point);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static class Api23Impl {
        private Api23Impl() {
        }

        @NonNull
        static ModeCompat a(@NonNull Context context, @NonNull Display display) {
            Display.Mode mode = display.getMode();
            Point a4 = DisplayCompat.a(context, display);
            if (a4 != null && !c(mode, a4)) {
                return new ModeCompat(mode, a4);
            }
            return new ModeCompat(mode, true);
        }

        static boolean b(@NonNull Display display) {
            Display.Mode mode = display.getMode();
            Display.Mode[] supportedModes = display.getSupportedModes();
            for (int i2 = 0; i2 < supportedModes.length; i2++) {
                if (mode.getPhysicalHeight() < supportedModes[i2].getPhysicalHeight() || mode.getPhysicalWidth() < supportedModes[i2].getPhysicalWidth()) {
                    return false;
                }
            }
            return true;
        }

        static boolean c(Display.Mode mode, Point point) {
            return (mode.getPhysicalWidth() == point.x && mode.getPhysicalHeight() == point.y) || (mode.getPhysicalWidth() == point.y && mode.getPhysicalHeight() == point.x);
        }

        static boolean d(Display.Mode mode, Display.Mode mode2) {
            return mode.getPhysicalWidth() == mode2.getPhysicalWidth() && mode.getPhysicalHeight() == mode2.getPhysicalHeight();
        }

        @NonNull
        @SuppressLint({"ArrayReturn"})
        public static ModeCompat[] getSupportedModes(@NonNull Context context, @NonNull Display display) {
            ModeCompat modeCompat;
            Display.Mode[] supportedModes = display.getSupportedModes();
            ModeCompat[] modeCompatArr = new ModeCompat[supportedModes.length];
            Display.Mode mode = display.getMode();
            Point a4 = DisplayCompat.a(context, display);
            if (a4 != null && !c(mode, a4)) {
                for (int i2 = 0; i2 < supportedModes.length; i2++) {
                    if (d(supportedModes[i2], mode)) {
                        modeCompat = new ModeCompat(supportedModes[i2], a4);
                    } else {
                        modeCompat = new ModeCompat(supportedModes[i2], false);
                    }
                    modeCompatArr[i2] = modeCompat;
                }
            } else {
                for (int i4 = 0; i4 < supportedModes.length; i4++) {
                    modeCompatArr[i4] = new ModeCompat(supportedModes[i4], d(supportedModes[i4], mode));
                }
            }
            return modeCompatArr;
        }
    }

    private DisplayCompat() {
    }

    static Point a(@NonNull Context context, @NonNull Display display) {
        Point h4;
        if (Build.VERSION.SDK_INT < 28) {
            h4 = h("sys.display-size", display);
        } else {
            h4 = h("vendor.display-size", display);
        }
        if (h4 != null) {
            return h4;
        }
        if (e(context) && d(display)) {
            return new Point(f4745a, f4746b);
        }
        return null;
    }

    @NonNull
    private static Point b(@NonNull Context context, @NonNull Display display) {
        Point a4 = a(context, display);
        if (a4 != null) {
            return a4;
        }
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            Api17Impl.a(display, point);
        } else {
            display.getSize(point);
        }
        return point;
    }

    @Nullable
    private static String c(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception unused) {
            return null;
        }
    }

    static boolean d(@NonNull Display display) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Api23Impl.b(display);
        }
        return true;
    }

    private static boolean e(@NonNull Context context) {
        return f(context) && "Sony".equals(Build.MANUFACTURER) && Build.MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd");
    }

    private static boolean f(@NonNull Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    private static Point g(@NonNull String str) throws NumberFormatException {
        String[] split = str.trim().split("x", -1);
        if (split.length == 2) {
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            if (parseInt > 0 && parseInt2 > 0) {
                return new Point(parseInt, parseInt2);
            }
        }
        throw new NumberFormatException();
    }

    @NonNull
    public static ModeCompat getMode(@NonNull Context context, @NonNull Display display) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Api23Impl.a(context, display);
        }
        return new ModeCompat(b(context, display));
    }

    @NonNull
    @SuppressLint({"ArrayReturn"})
    public static ModeCompat[] getSupportedModes(@NonNull Context context, @NonNull Display display) {
        return Build.VERSION.SDK_INT >= 23 ? Api23Impl.getSupportedModes(context, display) : new ModeCompat[]{getMode(context, display)};
    }

    @Nullable
    private static Point h(@NonNull String str, @NonNull Display display) {
        if (display.getDisplayId() != 0) {
            return null;
        }
        String c4 = c(str);
        if (TextUtils.isEmpty(c4)) {
            return null;
        }
        try {
            return g(c4);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static final class ModeCompat {

        /* renamed from: a  reason: collision with root package name */
        private final Display.Mode f4747a;

        /* renamed from: b  reason: collision with root package name */
        private final Point f4748b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f4749c;

        ModeCompat(@NonNull Point point) {
            Preconditions.checkNotNull(point, "physicalSize == null");
            this.f4748b = point;
            this.f4747a = null;
            this.f4749c = true;
        }

        public int getPhysicalHeight() {
            return this.f4748b.y;
        }

        public int getPhysicalWidth() {
            return this.f4748b.x;
        }

        @Deprecated
        public boolean isNative() {
            return this.f4749c;
        }

        @Nullable
        @RequiresApi(23)
        public Display.Mode toMode() {
            return this.f4747a;
        }

        @RequiresApi(23)
        ModeCompat(@NonNull Display.Mode mode, boolean z3) {
            Preconditions.checkNotNull(mode, "mode == null, can't wrap a null reference");
            this.f4748b = new Point(mode.getPhysicalWidth(), mode.getPhysicalHeight());
            this.f4747a = mode;
            this.f4749c = z3;
        }

        @RequiresApi(23)
        ModeCompat(@NonNull Display.Mode mode, @NonNull Point point) {
            Preconditions.checkNotNull(mode, "mode == null, can't wrap a null reference");
            Preconditions.checkNotNull(point, "physicalSize == null");
            this.f4748b = point;
            this.f4747a = mode;
            this.f4749c = true;
        }
    }
}
