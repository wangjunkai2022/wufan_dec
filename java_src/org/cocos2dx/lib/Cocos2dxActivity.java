package org.cocos2dx.lib;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.chukong.cocosplay.client.CocosPlayClient;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.wrapper.SystemUiHider;
import com.papa91.wrapper.Wrapper;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import org.cocos2dx.lib.Cocos2dxHandler;
import org.cocos2dx.lib.Cocos2dxHelper;
/* loaded from: classes5.dex */
public abstract class Cocos2dxActivity extends Activity implements Cocos2dxHelper.Cocos2dxHelperListener {
    protected static final String TAG = "Cocos2dxActivity";
    public static FrameLayout mFrameLayout;
    private static Cocos2dxActivity sContext;
    private Handler hideHandler;
    private Runnable hideRunnable;
    protected SystemUiHider uiHider;
    public Cocos2dxGLSurfaceView mGLSurfaceView = null;
    protected int[] mGLContextAttrs = null;
    private Cocos2dxHandler mHandler = null;
    private Cocos2dxVideoHelper mVideoHelper = null;
    private Cocos2dxWebViewHelper mWebViewHelper = null;
    private boolean fullScreenFlag = true;
    int fullScreenCfg = 0;

    public static Context getContext() {
        return sContext;
    }

    private static native int[] getGLContextAttrs();

    private static final boolean isAndroidEmulator() {
        String str = Build.MODEL;
        StringBuilder sb = new StringBuilder();
        sb.append("model=");
        sb.append(str);
        String str2 = Build.PRODUCT;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("product=");
        sb2.append(str2);
        boolean z3 = false;
        if (str2 != null && (str2.equals("sdk") || str2.contains("_sdk") || str2.contains("sdk_"))) {
            z3 = true;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("isEmulator=");
        sb3.append(z3);
        return z3;
    }

    protected void hideUiDelayed() {
        this.hideHandler.removeCallbacks(this.hideRunnable);
        if (this.fullScreenCfg != 0) {
            this.hideHandler.postDelayed(this.hideRunnable, 3000L);
        }
    }

    @SuppressLint({"NewApi"})
    public void init() {
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        FrameLayout frameLayout = new FrameLayout(this);
        mFrameLayout = frameLayout;
        frameLayout.setLayoutParams(layoutParams);
        ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams(-1, -2);
        Cocos2dxEditText cocos2dxEditText = new Cocos2dxEditText(this);
        cocos2dxEditText.setImeOptions(268435456);
        cocos2dxEditText.setLayoutParams(layoutParams2);
        mFrameLayout.addView(cocos2dxEditText);
        Cocos2dxGLSurfaceView onCreateView = onCreateView();
        this.mGLSurfaceView = onCreateView;
        mFrameLayout.addView(onCreateView);
        if (isAndroidEmulator()) {
            this.mGLSurfaceView.setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        }
        this.mGLSurfaceView.setCocos2dxRenderer(new Cocos2dxRenderer());
        this.mGLSurfaceView.setCocos2dxEditText(cocos2dxEditText);
        if (Wrapper.SDK_INT > 11) {
            mFrameLayout.setSystemUiVisibility(2);
        }
        mFrameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.cocos2dx.lib.Cocos2dxActivity.4
            @Override // android.view.View.OnClickListener
            @SuppressLint({"NewApi"})
            public void onClick(View view) {
                int systemUiVisibility = Cocos2dxActivity.mFrameLayout.getSystemUiVisibility();
                if (systemUiVisibility == 2) {
                    Cocos2dxActivity.mFrameLayout.setSystemUiVisibility(0);
                } else if (systemUiVisibility == 0) {
                    Cocos2dxActivity.mFrameLayout.setSystemUiVisibility(1);
                } else if (systemUiVisibility == 1) {
                    Cocos2dxActivity.mFrameLayout.setSystemUiVisibility(2);
                }
            }
        });
        setContentView(mFrameLayout);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i2, int i4, Intent intent) {
        for (PreferenceManager.OnActivityResultListener onActivityResultListener : Cocos2dxHelper.getOnActivityResultListeners()) {
            onActivityResultListener.onActivityResult(i2, i4, intent);
        }
        super.onActivityResult(i2, i4, intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        CocosPlayClient.init(this, false);
        onLoadNativeLibraries();
        sContext = this;
        this.mHandler = new Cocos2dxHandler(this);
        Cocos2dxHelper.init(this);
        this.mGLContextAttrs = getGLContextAttrs();
        init();
        if (this.mVideoHelper == null) {
            this.mVideoHelper = new Cocos2dxVideoHelper(this, mFrameLayout);
        }
        if (this.mWebViewHelper == null) {
            this.mWebViewHelper = new Cocos2dxWebViewHelper(mFrameLayout);
        }
    }

    public Cocos2dxGLSurfaceView onCreateView() {
        Cocos2dxGLSurfaceView cocos2dxGLSurfaceView = new Cocos2dxGLSurfaceView(this);
        if (this.mGLContextAttrs[3] > 0) {
            cocos2dxGLSurfaceView.getHolder().setFormat(-3);
        }
        cocos2dxGLSurfaceView.setEGLConfigChooser(new Cocos2dxEGLConfigChooser(this.mGLContextAttrs));
        return cocos2dxGLSurfaceView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        mFrameLayout = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onLoadNativeLibraries() {
        try {
            System.load(EmuBaseActivity.soPath + "libcocos2dcpp.so");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        Cocos2dxHelper.onPause();
        this.mGLSurfaceView.onPause();
        SystemUiHider systemUiHider = this.uiHider;
        if (systemUiHider != null) {
            systemUiHider.setOnVisibilityChangeListener(null);
        }
        Handler handler = this.hideHandler;
        if (handler != null) {
            handler.removeCallbacks(this.hideRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        int i2;
        super.onResume();
        Cocos2dxHelper.onResume();
        this.mGLSurfaceView.onResume();
        boolean z3 = this.fullScreenFlag;
        if (z3) {
            if (z3) {
                i2 = 6;
            } else {
                i2 = Wrapper.SDK_INT < 11 ? 3 : 1;
            }
            this.fullScreenCfg = i2;
        } else {
            this.fullScreenCfg = 0;
        }
        if (this.fullScreenCfg != 0) {
            this.hideHandler = new Handler();
            this.hideRunnable = new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    Cocos2dxActivity.this.uiHider.hide();
                }
            };
            SystemUiHider systemUiHider = SystemUiHider.getInstance(this, findViewById(16908290), this.fullScreenCfg);
            this.uiHider = systemUiHider;
            systemUiHider.setup();
            this.uiHider.setOnVisibilityChangeListener(new SystemUiHider.OnVisibilityChangeListener() { // from class: org.cocos2dx.lib.Cocos2dxActivity.3
                @Override // com.papa91.wrapper.SystemUiHider.OnVisibilityChangeListener
                public void onVisibilityChange(boolean z4) {
                    if (z4) {
                        Cocos2dxActivity.this.hideUiDelayed();
                    }
                }
            });
        }
        SystemUiHider systemUiHider2 = this.uiHider;
        if (systemUiHider2 == null || !systemUiHider2.isVisible()) {
            return;
        }
        this.uiHider.hide();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z3) {
        if (z3) {
            this.uiHider.hide();
        }
        super.onWindowFocusChanged(z3);
    }

    @Override // org.cocos2dx.lib.Cocos2dxHelper.Cocos2dxHelperListener
    public void runOnGLThread(Runnable runnable) {
        this.mGLSurfaceView.queueEvent(runnable);
    }

    public void setKeepScreenOn(final boolean z3) {
        runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxActivity.1
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxActivity.this.mGLSurfaceView.setKeepScreenOn(z3);
            }
        });
    }

    @Override // org.cocos2dx.lib.Cocos2dxHelper.Cocos2dxHelperListener
    public void showDialog(String str, String str2) {
        Message message = new Message();
        message.what = 1;
        message.obj = new Cocos2dxHandler.DialogMessage(str, str2);
        this.mHandler.sendMessage(message);
    }

    @Override // org.cocos2dx.lib.Cocos2dxHelper.Cocos2dxHelperListener
    public void showEditTextDialog(String str, String str2, int i2, int i4, int i5, int i6) {
        Message message = new Message();
        message.what = 2;
        message.obj = new Cocos2dxHandler.EditBoxMessage(str, str2, i2, i4, i5, i6);
        this.mHandler.sendMessage(message);
    }

    /* loaded from: classes5.dex */
    public class Cocos2dxEGLConfigChooser implements GLSurfaceView.EGLConfigChooser {
        protected int[] configAttribs;

        public Cocos2dxEGLConfigChooser(int i2, int i4, int i5, int i6, int i7, int i8) {
            this.configAttribs = new int[]{i2, i4, i5, i6, i7, i8};
        }

        private int findConfigAttrib(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i2, int i4) {
            int[] iArr = new int[1];
            return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i2, iArr) ? iArr[0] : i4;
        }

        @Override // android.opengl.GLSurfaceView.EGLConfigChooser
        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
            int[] iArr;
            int[] iArr2 = new int[1];
            if (egl10.eglGetConfigs(eGLDisplay, null, 0, iArr2)) {
                EGLConfig[] eGLConfigArr = new EGLConfig[iArr2[0]];
                int[] iArr3 = this.configAttribs;
                int[] iArr4 = new int[1];
                egl10.eglChooseConfig(eGLDisplay, new int[]{12324, iArr3[0], 12323, iArr3[1], 12322, iArr3[2], 12321, iArr3[3], 12325, iArr3[4], 12326, iArr3[5], 12352, 4, 12344}, eGLConfigArr, iArr2[0], iArr4);
                if (iArr4[0] > 0) {
                    return selectConfig(egl10, eGLDisplay, eGLConfigArr, this.configAttribs);
                }
                int[] iArr5 = {12324, 5, 12323, 6, 12322, 5, 12321, 0, 12325, 0, 12326, 0, 12352, 4, 12344};
                int[] iArr6 = {12324, 4, 12323, 4, 12322, 4, 12321, 4, 12325, 0, 12326, 0, 12352, 4, 12344};
                if (this.configAttribs[3] == 0) {
                    egl10.eglChooseConfig(eGLDisplay, iArr5, eGLConfigArr, iArr2[0], iArr4);
                    iArr = new int[]{5, 6, 5, 0, 0, 0};
                } else {
                    egl10.eglChooseConfig(eGLDisplay, iArr6, eGLConfigArr, iArr2[0], iArr4);
                    iArr = new int[]{4, 4, 4, 4, 0, 0};
                }
                if (iArr4[0] > 0) {
                    return selectConfig(egl10, eGLDisplay, eGLConfigArr, iArr);
                }
            }
            return null;
        }

        public EGLConfig selectConfig(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr, int[] iArr) {
            for (EGLConfig eGLConfig : eGLConfigArr) {
                int findConfigAttrib = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12325, 0);
                int findConfigAttrib2 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12326, 0);
                if (findConfigAttrib >= iArr[4] && findConfigAttrib2 >= iArr[5]) {
                    int findConfigAttrib3 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12324, 0);
                    int findConfigAttrib4 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12323, 0);
                    int findConfigAttrib5 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12322, 0);
                    int findConfigAttrib6 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12321, 0);
                    if (findConfigAttrib3 >= iArr[0] && findConfigAttrib4 >= iArr[1] && findConfigAttrib5 >= iArr[2] && findConfigAttrib6 >= iArr[3]) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }

        public Cocos2dxEGLConfigChooser(int[] iArr) {
            this.configAttribs = iArr;
        }
    }
}
