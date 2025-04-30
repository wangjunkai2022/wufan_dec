package com.mob.tools;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.join.mgps.Util.g0;
import com.mob.commons.j;
import com.mob.tools.log.NLog;
import com.mob.tools.utils.ReflectHelper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class MobUIShell extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private static HashMap<String, FakeActivity> f53341a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private FakeActivity f53342b;

    static {
        MobLog.getInstance().d("===============================", new Object[0]);
        String replace = "2022-12-15".replace("-0", "-").replace("-", g0.f27568a);
        MobLog.getInstance().d("MobTools " + replace, new Object[0]);
        MobLog.getInstance().d("===============================", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String a(Object obj) {
        return a(String.valueOf(System.currentTimeMillis()), obj);
    }

    private boolean b() {
        if (this.f53342b == null) {
            Intent intent = getIntent();
            Uri data = intent.getData();
            if (data != null && j.a("005j8cadababc").equals(data.getScheme())) {
                FakeActivity a4 = a(data.getHost());
                this.f53342b = a4;
                if (a4 != null) {
                    NLog mobLog = MobLog.getInstance();
                    mobLog.i("MobUIShell found executor: " + this.f53342b.getClass());
                    this.f53342b.setActivity(this);
                    return true;
                }
            }
            try {
                String stringExtra = intent.getStringExtra(j.a("011RcbbdbabibeRa@bbFbAbcUjg"));
                String stringExtra2 = intent.getStringExtra(j.a("013g!bjOgObeba7bWcabfbbbibdLjg"));
                FakeActivity remove = f53341a.remove(stringExtra);
                this.f53342b = remove;
                if (remove == null) {
                    FakeActivity remove2 = f53341a.remove(intent.getScheme());
                    this.f53342b = remove2;
                    if (remove2 == null) {
                        FakeActivity a5 = a();
                        this.f53342b = a5;
                        if (a5 == null) {
                            NLog mobLog2 = MobLog.getInstance();
                            mobLog2.w(new RuntimeException("Executor lost! launchTime = " + stringExtra + ", executorName: " + stringExtra2));
                            return false;
                        }
                    }
                }
                NLog mobLog3 = MobLog.getInstance();
                mobLog3.i("MobUIShell found executor: " + this.f53342b.getClass());
                this.f53342b.setActivity(this);
            } catch (Throwable th) {
                MobLog.getInstance().w(th);
                return false;
            }
        }
        return true;
    }

    private boolean c() {
        if (Build.VERSION.SDK_INT > 27) {
            return false;
        }
        try {
            Field declaredField = Activity.class.getDeclaredField(j.a("013j0chbe$bQbc9hEbcVbFbgcebidfca"));
            declaredField.setAccessible(true);
            ((ActivityInfo) declaredField.get(this)).screenOrientation = -1;
            declaredField.setAccessible(false);
            return true;
        } catch (Exception e4) {
            MobLog.getInstance().w(e4, "Fix orientation for 8.0 encountered exception", new Object[0]);
            return false;
        }
    }

    private boolean d() {
        Exception e4;
        boolean z3;
        Method method;
        if (Build.VERSION.SDK_INT > 27) {
            return false;
        }
        try {
            TypedArray obtainStyledAttributes = this.f53342b.activity.obtainStyledAttributes((int[]) Class.forName("com.android.internal.R$styleable").getField("Window").get(null));
            method = ActivityInfo.class.getMethod(j.a("023?bcdecgbfbdbidecbbabe:g@bi9b%djbfdicbcabd6b(bcbidd"), TypedArray.class);
            method.setAccessible(true);
            z3 = ((Boolean) method.invoke(null, obtainStyledAttributes)).booleanValue();
        } catch (Exception e5) {
            e4 = e5;
            z3 = false;
        }
        try {
            method.setAccessible(false);
        } catch (Exception e6) {
            e4 = e6;
            MobLog.getInstance().w(e4);
            return z3;
        }
        return z3;
    }

    @Override // android.app.Activity
    public void finish() {
        FakeActivity fakeActivity = this.f53342b;
        if (fakeActivity == null || !fakeActivity.onFinish()) {
            super.finish();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i2, int i4, Intent intent) {
        FakeActivity fakeActivity = this.f53342b;
        if (fakeActivity != null) {
            fakeActivity.onActivityResult(i2, i4, intent);
        }
        super.onActivityResult(i2, i4, intent);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        FakeActivity fakeActivity = this.f53342b;
        if (fakeActivity != null) {
            fakeActivity.onConfigurationChanged(configuration);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        if (b()) {
            NLog mobLog = MobLog.getInstance();
            mobLog.d(this.f53342b.getClass().getSimpleName() + " onCreate", new Object[0]);
            int i2 = Build.VERSION.SDK_INT;
            if (i2 == 26 && d()) {
                c();
            }
            if (i2 >= 21) {
                this.f53342b.activity.getWindow().addFlags(Integer.MIN_VALUE);
                this.f53342b.activity.getWindow().setStatusBarColor(0);
            }
            super.onCreate(bundle);
            this.f53342b.onCreate();
            return;
        }
        super.onCreate(bundle);
        finish();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        boolean onCreateOptionsMenu = super.onCreateOptionsMenu(menu);
        FakeActivity fakeActivity = this.f53342b;
        return fakeActivity != null ? fakeActivity.onCreateOptionsMenu(menu) : onCreateOptionsMenu;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        FakeActivity fakeActivity = this.f53342b;
        if (fakeActivity != null) {
            fakeActivity.sendResult();
            NLog mobLog = MobLog.getInstance();
            mobLog.d(this.f53342b.getClass().getSimpleName() + " onDestroy", new Object[0]);
            this.f53342b.onDestroy();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        try {
            FakeActivity fakeActivity = this.f53342b;
            if (fakeActivity != null ? fakeActivity.onKeyEvent(i2, keyEvent) : false) {
                return true;
            }
            return super.onKeyDown(i2, keyEvent);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return false;
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        try {
            FakeActivity fakeActivity = this.f53342b;
            if (fakeActivity != null ? fakeActivity.onKeyEvent(i2, keyEvent) : false) {
                return true;
            }
            return super.onKeyUp(i2, keyEvent);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return false;
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        FakeActivity fakeActivity = this.f53342b;
        if (fakeActivity == null) {
            super.onNewIntent(intent);
        } else {
            fakeActivity.onNewIntent(intent);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean onOptionsItemSelected = super.onOptionsItemSelected(menuItem);
        FakeActivity fakeActivity = this.f53342b;
        return fakeActivity != null ? fakeActivity.onOptionsItemSelected(menuItem) : onOptionsItemSelected;
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (this.f53342b != null) {
            NLog mobLog = MobLog.getInstance();
            mobLog.d(this.f53342b.getClass().getSimpleName() + " onPause", new Object[0]);
            this.f53342b.onPause();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        FakeActivity fakeActivity = this.f53342b;
        if (fakeActivity != null) {
            fakeActivity.onRequestPermissionsResult(i2, strArr, iArr);
        }
    }

    @Override // android.app.Activity
    protected void onRestart() {
        if (this.f53342b != null) {
            NLog mobLog = MobLog.getInstance();
            mobLog.d(this.f53342b.getClass().getSimpleName() + " onRestart", new Object[0]);
            this.f53342b.onRestart();
        }
        super.onRestart();
    }

    @Override // android.app.Activity
    protected void onResume() {
        if (this.f53342b != null) {
            NLog mobLog = MobLog.getInstance();
            mobLog.d(this.f53342b.getClass().getSimpleName() + " onResume", new Object[0]);
            this.f53342b.onResume();
        }
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onStart() {
        if (this.f53342b != null) {
            NLog mobLog = MobLog.getInstance();
            mobLog.d(this.f53342b.getClass().getSimpleName() + " onStart", new Object[0]);
            this.f53342b.onStart();
        }
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        if (this.f53342b != null) {
            NLog mobLog = MobLog.getInstance();
            mobLog.d(this.f53342b.getClass().getSimpleName() + " onStop", new Object[0]);
            this.f53342b.onStop();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public void setContentView(int i2) {
        setContentView(LayoutInflater.from(this).inflate(i2, (ViewGroup) null));
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int i2) {
        if (Build.VERSION.SDK_INT == 26 && d()) {
            return;
        }
        super.setRequestedOrientation(i2);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i2) {
        if (b()) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            int i4 = 0;
            while (i4 < stackTrace.length) {
                if (stackTrace[i4].toString().startsWith(j.a("030Wfdbd@hFbdcjcbbdbiddcjcg-a=bf(g3bdCfRcjdd7gb*cf1b:bdbebhcgbfbdbe4g")) && (i4 = i4 + 2) < stackTrace.length) {
                    int onSetTheme = this.f53342b.onSetTheme(i2, stackTrace[i4].toString().startsWith(j.a("0487bdbi0fXbfcabc+fDcjbdUccRcjchbeZbDbc,hCbc!bLbgcg<aQbfDg$bd(f'cj_cg-bfdfcabfPjXcibdbabibeFa)chbe%bGbc]hMbcCb!bg")));
                    if (onSetTheme > 0) {
                        super.setTheme(onSetTheme);
                        return;
                    }
                    return;
                }
                i4++;
            }
        }
        super.setTheme(i2);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i2) {
        FakeActivity fakeActivity = this.f53342b;
        if (fakeActivity != null) {
            fakeActivity.beforeStartActivityForResult(intent, i2, null);
        }
        super.startActivityForResult(intent, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String a(String str, Object obj) {
        f53341a.put(str, (FakeActivity) obj);
        return str;
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        if (view == null) {
            return;
        }
        super.setContentView(view);
        FakeActivity fakeActivity = this.f53342b;
        if (fakeActivity != null) {
            fakeActivity.setContentView(view);
        }
    }

    private FakeActivity a(String str) {
        Object newInstance;
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (str.startsWith(g0.f27568a)) {
                str = getPackageName() + str;
            }
            String importClass = ReflectHelper.importClass(str);
            if (TextUtils.isEmpty(importClass) || (newInstance = ReflectHelper.newInstance(importClass, new Object[0])) == null || !(newInstance instanceof FakeActivity)) {
                return null;
            }
            return (FakeActivity) newInstance;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i2, Bundle bundle) {
        FakeActivity fakeActivity = this.f53342b;
        if (fakeActivity != null) {
            fakeActivity.beforeStartActivityForResult(intent, i2, bundle);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            super.startActivityForResult(intent, i2, bundle);
        } else {
            super.startActivityForResult(intent, i2);
        }
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        if (view == null) {
            return;
        }
        if (layoutParams == null) {
            super.setContentView(view);
        } else {
            super.setContentView(view, layoutParams);
        }
        FakeActivity fakeActivity = this.f53342b;
        if (fakeActivity != null) {
            fakeActivity.setContentView(view);
        }
    }

    public FakeActivity a() {
        String str;
        try {
            str = getPackageManager().getActivityInfo(getComponentName(), 128).metaData.getString(j.a("015fgPdfbdbacb7bKchbeRb8bcRhQbc%bHbg"));
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            str = null;
        }
        return a(str);
    }
}
