package org.cocos2dx.lib;

import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.widget.FrameLayout;
import com.chukong.cocosplay.client.CocosPlayClient;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
/* loaded from: classes5.dex */
public class Cocos2dxWebViewHelper {
    private static final String TAG = "Cocos2dxWebViewHelper";
    private static Cocos2dxActivity sCocos2dxActivity;
    private static Handler sHandler;
    private static FrameLayout sLayout;
    private static int viewTag;
    private static SparseArray<Cocos2dxWebView> webViews;

    public Cocos2dxWebViewHelper(FrameLayout frameLayout) {
        sLayout = frameLayout;
        sHandler = new Handler(Looper.myLooper());
        sCocos2dxActivity = (Cocos2dxActivity) Cocos2dxActivity.getContext();
        webViews = new SparseArray<>();
    }

    public static void _didFailLoading(int i2, String str) {
        didFailLoading(i2, str);
    }

    public static void _didFinishLoading(int i2, String str) {
        didFinishLoading(i2, str);
    }

    public static void _onJsCallback(int i2, String str) {
        onJsCallback(i2, str);
    }

    public static boolean _shouldStartLoading(int i2, String str) {
        return !shouldStartLoading(i2, str);
    }

    public static <T> T callInMainThread(Callable<T> callable) throws ExecutionException, InterruptedException {
        FutureTask futureTask = new FutureTask(callable);
        sHandler.post(futureTask);
        return (T) futureTask.get();
    }

    public static boolean canGoBack(final int i2) {
        try {
            return ((Boolean) callInMainThread(new Callable<Boolean>() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.12
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Boolean call() throws Exception {
                    Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i2);
                    return Boolean.valueOf(cocos2dxWebView != null && cocos2dxWebView.canGoBack());
                }
            })).booleanValue();
        } catch (InterruptedException | ExecutionException unused) {
            return false;
        }
    }

    public static boolean canGoForward(final int i2) {
        try {
            return ((Boolean) callInMainThread(new Callable<Boolean>() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.13
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Boolean call() throws Exception {
                    Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i2);
                    return Boolean.valueOf(cocos2dxWebView != null && cocos2dxWebView.canGoForward());
                }
            })).booleanValue();
        } catch (InterruptedException | ExecutionException unused) {
            return false;
        }
    }

    public static int createWebView() {
        final int i2 = viewTag;
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.1
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = new Cocos2dxWebView(Cocos2dxWebViewHelper.sCocos2dxActivity, i2);
                Cocos2dxWebViewHelper.sLayout.addView(cocos2dxWebView, new FrameLayout.LayoutParams(-2, -2));
                Cocos2dxWebViewHelper.webViews.put(i2, cocos2dxWebView);
            }
        });
        int i4 = viewTag;
        viewTag = i4 + 1;
        return i4;
    }

    private static native void didFailLoading(int i2, String str);

    private static native void didFinishLoading(int i2, String str);

    public static void evaluateJS(final int i2, final String str) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.16
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i2);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.loadUrl("javascript:" + str);
                }
            }
        });
    }

    public static void goBack(final int i2) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.14
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i2);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.goBack();
                }
            }
        });
    }

    public static void goForward(final int i2) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.15
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i2);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.goForward();
                }
            }
        });
    }

    public static void loadData(final int i2, final String str, final String str2, final String str3, final String str4) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.6
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i2);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.loadDataWithBaseURL(str4, str, str2, str3, null);
                }
            }
        });
    }

    public static void loadFile(final int i2, final String str) {
        if (CocosPlayClient.isEnabled() && !CocosPlayClient.isDemo()) {
            CocosPlayClient.updateAssets(str);
        }
        CocosPlayClient.notifyFileLoaded(str);
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.9
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i2);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.loadUrl(str);
                }
            }
        });
    }

    public static void loadHTMLString(final int i2, final String str, final String str2) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.7
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i2);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.loadDataWithBaseURL(str2, str, null, null, null);
                }
            }
        });
    }

    public static void loadUrl(final int i2, final String str) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.8
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i2);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.loadUrl(str);
                }
            }
        });
    }

    private static native void onJsCallback(int i2, String str);

    public static void reload(final int i2) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.11
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i2);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.reload();
                }
            }
        });
    }

    public static void removeWebView(final int i2) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.2
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i2);
                if (cocos2dxWebView != null) {
                    Cocos2dxWebViewHelper.webViews.remove(i2);
                    Cocos2dxWebViewHelper.sLayout.removeView(cocos2dxWebView);
                }
            }
        });
    }

    public static void setJavascriptInterfaceScheme(final int i2, final String str) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.5
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i2);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.setJavascriptInterfaceScheme(str);
                }
            }
        });
    }

    public static void setScalesPageToFit(final int i2, final boolean z3) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.17
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i2);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.setScalesPageToFit(z3);
                }
            }
        });
    }

    public static void setVisible(final int i2, final boolean z3) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.3
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i2);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.setVisibility(z3 ? 0 : 8);
                }
            }
        });
    }

    public static void setWebViewRect(final int i2, final int i4, final int i5, final int i6, final int i7) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.4
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i2);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.setWebViewRect(i4, i5, i6, i7);
                }
            }
        });
    }

    private static native boolean shouldStartLoading(int i2, String str);

    public static void stopLoading(final int i2) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.10
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(i2);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.stopLoading();
                }
            }
        });
    }
}
