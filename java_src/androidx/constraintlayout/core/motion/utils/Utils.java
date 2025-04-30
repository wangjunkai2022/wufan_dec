package androidx.constraintlayout.core.motion.utils;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.Socket;
/* loaded from: classes.dex */
public class Utils {

    /* renamed from: a  reason: collision with root package name */
    static DebugHandle f2274a;

    /* loaded from: classes.dex */
    public interface DebugHandle {
        void message(String str);
    }

    private static int a(int i2) {
        int i4 = (i2 & ((i2 >> 31) ^ (-1))) - 255;
        return (i4 & (i4 >> 31)) + 255;
    }

    public static void log(String str, String str2) {
        PrintStream printStream = System.out;
        printStream.println(str + " : " + str2);
    }

    public static void logStack(String str, int i2) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int min = Math.min(i2, stackTrace.length - 1);
        String str2 = " ";
        for (int i4 = 1; i4 <= min; i4++) {
            StackTraceElement stackTraceElement = stackTrace[i4];
            str2 = str2 + " ";
            PrintStream printStream = System.out;
            printStream.println(str + str2 + (".(" + stackTrace[i4].getFileName() + ":" + stackTrace[i4].getLineNumber() + ") " + stackTrace[i4].getMethodName()) + str2);
        }
    }

    public static void loge(String str, String str2) {
        PrintStream printStream = System.err;
        printStream.println(str + " : " + str2);
    }

    public static int rgbaTocColor(float f4, float f5, float f6, float f7) {
        int a4 = a((int) (f4 * 255.0f));
        int a5 = a((int) (f5 * 255.0f));
        return (a4 << 16) | (a((int) (f7 * 255.0f)) << 24) | (a5 << 8) | a((int) (f6 * 255.0f));
    }

    public static void setDebugHandle(DebugHandle debugHandle) {
        f2274a = debugHandle;
    }

    public static void socketSend(String str) {
        try {
            OutputStream outputStream = new Socket("127.0.0.1", 5327).getOutputStream();
            outputStream.write(str.getBytes());
            outputStream.close();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }

    public int getInterpolatedColor(float[] fArr) {
        int a4 = a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f));
        int a5 = a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f));
        return (a((int) (fArr[3] * 255.0f)) << 24) | (a4 << 16) | (a5 << 8) | a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
    }

    public static void log(String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String substring = (stackTraceElement.getMethodName() + "                  ").substring(0, 17);
        String str2 = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")" + "    ".substring(Integer.toString(stackTraceElement.getLineNumber()).length()) + substring;
        System.out.println(str2 + " " + str);
        DebugHandle debugHandle = f2274a;
        if (debugHandle != null) {
            debugHandle.message(str2 + " " + str);
        }
    }
}
