package com.xinzhu.overmind.client.hook.delegate;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.Instrumentation;
import android.app.UiAutomation;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.PersistableBundle;
import android.os.UserHandle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
/* loaded from: classes.dex */
public class InstrumentationDelegate extends Instrumentation {
    protected Instrumentation root;

    private static Method findDeclaredMethod(Object obj, String name, Class<?>... args) throws NoSuchMethodException {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(name, args);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        throw new NoSuchMethodException("Method " + name + " with parameters " + Arrays.asList(args) + " not found in " + obj.getClass());
    }

    @Override // android.app.Instrumentation
    public void addMonitor(Instrumentation.ActivityMonitor monitor) {
        this.root.addMonitor(monitor);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnCreate(Activity activity, Bundle icicle) {
        this.root.callActivityOnCreate(activity, icicle);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnDestroy(Activity activity) {
        this.root.callActivityOnDestroy(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnNewIntent(Activity activity, Intent intent) {
        this.root.callActivityOnNewIntent(activity, intent);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnPause(Activity activity) {
        this.root.callActivityOnPause(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnPostCreate(Activity activity, Bundle icicle) {
        this.root.callActivityOnPostCreate(activity, icicle);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnRestart(Activity activity) {
        this.root.callActivityOnRestart(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnRestoreInstanceState(Activity activity, Bundle savedInstanceState) {
        this.root.callActivityOnRestoreInstanceState(activity, savedInstanceState);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnResume(Activity activity) {
        this.root.callActivityOnResume(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnSaveInstanceState(Activity activity, Bundle outState) {
        this.root.callActivityOnSaveInstanceState(activity, outState);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnStart(Activity activity) {
        this.root.callActivityOnStart(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnStop(Activity activity) {
        this.root.callActivityOnStop(activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnUserLeaving(Activity activity) {
        this.root.callActivityOnUserLeaving(activity);
    }

    @Override // android.app.Instrumentation
    public void callApplicationOnCreate(Application app2) {
        this.root.callApplicationOnCreate(app2);
    }

    @Override // android.app.Instrumentation
    public boolean checkMonitorHit(Instrumentation.ActivityMonitor monitor, int minHits) {
        return this.root.checkMonitorHit(monitor, minHits);
    }

    @Override // android.app.Instrumentation
    public void endPerformanceSnapshot() {
        this.root.endPerformanceSnapshot();
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i2, Bundle bundle) throws Throwable {
        try {
            return (Instrumentation.ActivityResult) findDeclaredMethod(this.root, "execStartActivity", Context.class, IBinder.class, IBinder.class, Activity.class, Intent.class, Integer.TYPE, Bundle.class).invoke(this.root, context, iBinder, iBinder2, activity, intent, Integer.valueOf(i2), bundle);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() == null) {
                return null;
            }
            throw e4.getCause();
        } catch (Exception e5) {
            e5.printStackTrace();
            return null;
        }
    }

    @Override // android.app.Instrumentation
    public void finish(int resultCode, Bundle results) {
        this.root.finish(resultCode, results);
    }

    @Override // android.app.Instrumentation
    public ComponentName getComponentName() {
        return this.root.getComponentName();
    }

    @Override // android.app.Instrumentation
    public Context getContext() {
        return this.root.getContext();
    }

    @Override // android.app.Instrumentation
    public Context getTargetContext() {
        return this.root.getTargetContext();
    }

    @Override // android.app.Instrumentation
    public UiAutomation getUiAutomation() {
        return this.root.getUiAutomation();
    }

    @Override // android.app.Instrumentation
    public boolean invokeContextMenuAction(Activity targetActivity, int id, int flag) {
        return this.root.invokeContextMenuAction(targetActivity, id, flag);
    }

    @Override // android.app.Instrumentation
    public boolean invokeMenuActionSync(Activity targetActivity, int id, int flag) {
        return this.root.invokeMenuActionSync(targetActivity, id, flag);
    }

    @Override // android.app.Instrumentation
    public boolean isProfiling() {
        return this.root.isProfiling();
    }

    @Override // android.app.Instrumentation
    public Activity newActivity(Class<?> clazz, Context context, IBinder token, Application application, Intent intent, ActivityInfo info, CharSequence title, Activity parent, String id, Object lastNonConfigurationInstance) throws InstantiationException, IllegalAccessException {
        return this.root.newActivity(clazz, context, token, application, intent, info, title, parent, id, lastNonConfigurationInstance);
    }

    @Override // android.app.Instrumentation
    public Application newApplication(ClassLoader cl, String className, Context context) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        return this.root.newApplication(cl, className, context);
    }

    @Override // android.app.Instrumentation
    public void onCreate(Bundle arguments) {
        this.root.onCreate(arguments);
    }

    @Override // android.app.Instrumentation
    public void onDestroy() {
        this.root.onDestroy();
    }

    @Override // android.app.Instrumentation
    public boolean onException(Object obj, Throwable e4) {
        return this.root.onException(obj, e4);
    }

    @Override // android.app.Instrumentation
    public void onStart() {
        this.root.onStart();
    }

    @Override // android.app.Instrumentation
    public void removeMonitor(Instrumentation.ActivityMonitor monitor) {
        this.root.removeMonitor(monitor);
    }

    @Override // android.app.Instrumentation
    public void runOnMainSync(Runnable runner) {
        this.root.runOnMainSync(runner);
    }

    @Override // android.app.Instrumentation
    public void sendCharacterSync(int keyCode) {
        this.root.sendCharacterSync(keyCode);
    }

    @Override // android.app.Instrumentation
    public void sendKeyDownUpSync(int key) {
        this.root.sendKeyDownUpSync(key);
    }

    @Override // android.app.Instrumentation
    public void sendKeySync(KeyEvent event) {
        this.root.sendKeySync(event);
    }

    @Override // android.app.Instrumentation
    public void sendPointerSync(MotionEvent event) {
        this.root.sendPointerSync(event);
    }

    @Override // android.app.Instrumentation
    public void sendStatus(int resultCode, Bundle results) {
        this.root.sendStatus(resultCode, results);
    }

    @Override // android.app.Instrumentation
    public void sendStringSync(String text) {
        this.root.sendStringSync(text);
    }

    @Override // android.app.Instrumentation
    public void sendTrackballEventSync(MotionEvent event) {
        this.root.sendTrackballEventSync(event);
    }

    @Override // android.app.Instrumentation
    public void setAutomaticPerformanceSnapshots() {
        this.root.setAutomaticPerformanceSnapshots();
    }

    @Override // android.app.Instrumentation
    public void setInTouchMode(boolean inTouch) {
        this.root.setInTouchMode(inTouch);
    }

    @Override // android.app.Instrumentation
    public void start() {
        this.root.start();
    }

    @Override // android.app.Instrumentation
    public Activity startActivitySync(Intent intent) {
        return this.root.startActivitySync(intent);
    }

    @Override // android.app.Instrumentation
    public void startPerformanceSnapshot() {
        this.root.startPerformanceSnapshot();
    }

    @Override // android.app.Instrumentation
    public void startProfiling() {
        this.root.startProfiling();
    }

    @Override // android.app.Instrumentation
    public void stopProfiling() {
        this.root.stopProfiling();
    }

    @Override // android.app.Instrumentation
    public void waitForIdle(Runnable recipient) {
        this.root.waitForIdle(recipient);
    }

    @Override // android.app.Instrumentation
    public void waitForIdleSync() {
        this.root.waitForIdleSync();
    }

    @Override // android.app.Instrumentation
    public Activity waitForMonitor(Instrumentation.ActivityMonitor monitor) {
        return this.root.waitForMonitor(monitor);
    }

    @Override // android.app.Instrumentation
    public Activity waitForMonitorWithTimeout(Instrumentation.ActivityMonitor monitor, long timeOut) {
        return this.root.waitForMonitorWithTimeout(monitor, timeOut);
    }

    @Override // android.app.Instrumentation
    public Instrumentation.ActivityMonitor addMonitor(IntentFilter filter, Instrumentation.ActivityResult result, boolean block) {
        return this.root.addMonitor(filter, result, block);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnCreate(Activity activity, Bundle icicle, PersistableBundle persistentState) {
        this.root.callActivityOnCreate(activity, icicle, persistentState);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnPostCreate(Activity activity, Bundle icicle, PersistableBundle persistentState) {
        this.root.callActivityOnPostCreate(activity, icicle, persistentState);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnRestoreInstanceState(Activity activity, Bundle savedInstanceState, PersistableBundle persistentState) {
        this.root.callActivityOnRestoreInstanceState(activity, savedInstanceState, persistentState);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnSaveInstanceState(Activity activity, Bundle outState, PersistableBundle outPersistentState) {
        this.root.callActivityOnSaveInstanceState(activity, outState, outPersistentState);
    }

    @Override // android.app.Instrumentation
    public Activity newActivity(ClassLoader cl, String className, Intent intent) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        return this.root.newActivity(cl, className, intent);
    }

    @Override // android.app.Instrumentation
    public Instrumentation.ActivityMonitor addMonitor(String cls, Instrumentation.ActivityResult result, boolean block) {
        return this.root.addMonitor(cls, result, block);
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, String str, Intent intent, int i2, Bundle bundle) throws Throwable {
        try {
            return (Instrumentation.ActivityResult) findDeclaredMethod(this.root, "execStartActivity", Context.class, IBinder.class, IBinder.class, String.class, Intent.class, Integer.TYPE, Bundle.class).invoke(this.root, context, iBinder, iBinder2, str, intent, Integer.valueOf(i2), bundle);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() == null) {
                return null;
            }
            throw e4.getCause();
        } catch (Exception e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Fragment fragment, Intent intent, int i2) throws Throwable {
        try {
            return (Instrumentation.ActivityResult) findDeclaredMethod(this.root, "execStartActivity", Context.class, IBinder.class, IBinder.class, Fragment.class, Intent.class, Integer.TYPE).invoke(this.root, context, iBinder, iBinder2, fragment, intent, Integer.valueOf(i2));
        } catch (InvocationTargetException e4) {
            if (e4.getCause() == null) {
                return null;
            }
            throw e4.getCause();
        } catch (Exception e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i2) throws Throwable {
        try {
            return (Instrumentation.ActivityResult) findDeclaredMethod(this.root, "execStartActivity", Context.class, IBinder.class, IBinder.class, Activity.class, Intent.class, Integer.TYPE).invoke(this.root, context, iBinder, iBinder2, activity, intent, Integer.valueOf(i2));
        } catch (InvocationTargetException e4) {
            if (e4.getCause() == null) {
                return null;
            }
            throw e4.getCause();
        } catch (Exception e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Fragment fragment, Intent intent, int i2, Bundle bundle) throws Throwable {
        try {
            return (Instrumentation.ActivityResult) findDeclaredMethod(this.root, "execStartActivity", Context.class, IBinder.class, IBinder.class, Fragment.class, Intent.class, Integer.TYPE, Bundle.class).invoke(this.root, context, iBinder, iBinder2, fragment, intent, Integer.valueOf(i2), bundle);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() == null) {
                return null;
            }
            throw e4.getCause();
        } catch (Exception e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i2, Bundle bundle, UserHandle userHandle) throws Throwable {
        try {
            return (Instrumentation.ActivityResult) findDeclaredMethod(this.root, "execStartActivity", Context.class, IBinder.class, IBinder.class, Activity.class, Intent.class, Integer.TYPE, Bundle.class, UserHandle.class).invoke(this.root, context, iBinder, iBinder2, activity, intent, Integer.valueOf(i2), bundle, userHandle);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() == null) {
                return null;
            }
            throw e4.getCause();
        } catch (Exception e5) {
            e5.printStackTrace();
            return null;
        }
    }
}
