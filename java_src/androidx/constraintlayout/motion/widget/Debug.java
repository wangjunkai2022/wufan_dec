package androidx.constraintlayout.motion.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import external.org.apache.commons.lang3.d;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.nio.CharBuffer;
@SuppressLint({"LogConditional"})
/* loaded from: classes.dex */
public class Debug {
    public static void dumpLayoutParams(ViewGroup layout, String str) {
        Field[] fields;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str2 = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + str + "  ";
        int childCount = layout.getChildCount();
        System.out.println(str + " children " + childCount);
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = layout.getChildAt(i2);
            System.out.println(str2 + "     " + getName(childAt));
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            for (Field field : layoutParams.getClass().getFields()) {
                try {
                    Object obj = field.get(layoutParams);
                    if (field.getName().contains("To") && !obj.toString().equals("-1")) {
                        System.out.println(str2 + "       " + field.getName() + " " + obj);
                    }
                } catch (IllegalAccessException unused) {
                }
            }
        }
    }

    public static void dumpPoc(Object obj) {
        Field[] fields;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
        Class<?> cls = obj.getClass();
        System.out.println(str + "------------- " + cls.getName() + " --------------------");
        for (Field field : cls.getFields()) {
            try {
                Object obj2 = field.get(obj);
                if (field.getName().startsWith("layout_constraint") && ((!(obj2 instanceof Integer) || !obj2.toString().equals("-1")) && ((!(obj2 instanceof Integer) || !obj2.toString().equals("0")) && ((!(obj2 instanceof Float) || !obj2.toString().equals("1.0")) && (!(obj2 instanceof Float) || !obj2.toString().equals(com.githang.statusbar.a.f13900f)))))) {
                    System.out.println(str + "    " + field.getName() + " " + obj2);
                }
            } catch (IllegalAccessException unused) {
            }
        }
        System.out.println(str + "------------- " + cls.getSimpleName() + " --------------------");
    }

    public static String getActionType(MotionEvent event) {
        Field[] fields;
        int action = event.getAction();
        for (Field field : MotionEvent.class.getFields()) {
            try {
                if (Modifier.isStatic(field.getModifiers()) && field.getType().equals(Integer.TYPE) && field.getInt(null) == action) {
                    return field.getName();
                }
            } catch (IllegalAccessException unused) {
            }
        }
        return "---";
    }

    public static String getCallFrom(int n4) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[n4 + 2];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
    }

    public static String getLoc() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName() + "()";
    }

    public static String getLocation() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
    }

    public static String getLocation2() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[2];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
    }

    public static String getName(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return "UNKNOWN";
        }
    }

    public static String getState(MotionLayout layout, int stateId) {
        return getState(layout, stateId, -1);
    }

    public static void logStack(String tag, String msg, int n4) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int min = Math.min(n4, stackTrace.length - 1);
        String str = " ";
        for (int i2 = 1; i2 <= min; i2++) {
            StackTraceElement stackTraceElement = stackTrace[i2];
            str = str + " ";
            StringBuilder sb = new StringBuilder();
            sb.append(msg);
            sb.append(str);
            sb.append(".(" + stackTrace[i2].getFileName() + ":" + stackTrace[i2].getLineNumber() + ") " + stackTrace[i2].getMethodName());
            sb.append(str);
        }
    }

    public static void printStack(String msg, int n4) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int min = Math.min(n4, stackTrace.length - 1);
        String str = " ";
        for (int i2 = 1; i2 <= min; i2++) {
            StackTraceElement stackTraceElement = stackTrace[i2];
            str = str + " ";
            PrintStream printStream = System.out;
            printStream.println(msg + str + (".(" + stackTrace[i2].getFileName() + ":" + stackTrace[i2].getLineNumber() + ") ") + str);
        }
    }

    public static String getState(MotionLayout layout, int stateId, int len) {
        int length;
        if (stateId == -1) {
            return "UNDEFINED";
        }
        String resourceEntryName = layout.getContext().getResources().getResourceEntryName(stateId);
        if (len != -1) {
            if (resourceEntryName.length() > len) {
                resourceEntryName = resourceEntryName.replaceAll("([^_])[aeiou]+", "$1");
            }
            if (resourceEntryName.length() <= len || (length = resourceEntryName.replaceAll("[^_]", "").length()) <= 0) {
                return resourceEntryName;
            }
            int length2 = (resourceEntryName.length() - len) / length;
            return resourceEntryName.replaceAll(CharBuffer.allocate(length2).toString().replace((char) 0, d.f65364a) + "_", "_");
        }
        return resourceEntryName;
    }

    public static String getName(Context context, int id) {
        if (id != -1) {
            try {
                return context.getResources().getResourceEntryName(id);
            } catch (Exception unused) {
                return "?" + id;
            }
        }
        return "UNKNOWN";
    }

    public static String getName(Context context, int[] id) {
        String str;
        try {
            String str2 = id.length + "[";
            int i2 = 0;
            while (i2 < id.length) {
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(i2 == 0 ? "" : " ");
                String sb2 = sb.toString();
                try {
                    str = context.getResources().getResourceEntryName(id[i2]);
                } catch (Resources.NotFoundException unused) {
                    str = "? " + id[i2] + " ";
                }
                str2 = sb2 + str;
                i2++;
            }
            return str2 + "]";
        } catch (Exception e4) {
            e4.toString();
            return "UNKNOWN";
        }
    }

    public static void dumpLayoutParams(ViewGroup.LayoutParams param, String str) {
        Field[] fields;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str2 = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + str + "  ";
        System.out.println(" >>>>>>>>>>>>>>>>>>. dump " + str2 + "  " + param.getClass().getName());
        for (Field field : param.getClass().getFields()) {
            try {
                Object obj = field.get(param);
                String name = field.getName();
                if (name.contains("To") && !obj.toString().equals("-1")) {
                    System.out.println(str2 + "       " + name + " " + obj);
                }
            } catch (IllegalAccessException unused) {
            }
        }
        System.out.println(" <<<<<<<<<<<<<<<<< dump " + str2);
    }
}
