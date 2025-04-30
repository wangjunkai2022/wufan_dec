package com.switfpass.pay.activity;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.JsPromptResult;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class WebViewEx extends WebView {

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f58656c = {"getClass", TTDownloadField.TT_HASHCODE, "notify", "notifyAll", "equals", "toString", "wait"};

    /* renamed from: a  reason: collision with root package name */
    private HashMap f58657a;

    /* renamed from: b  reason: collision with root package name */
    private String f58658b;

    public WebViewEx(Context context) {
        super(context);
        this.f58657a = new HashMap();
        this.f58658b = null;
        g();
    }

    public WebViewEx(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f58657a = new HashMap();
        this.f58658b = null;
        g();
    }

    public WebViewEx(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f58657a = new HashMap();
        this.f58658b = null;
        g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(WebViewEx webViewEx, WebView webView) {
        if (webView instanceof WebViewEx) {
            webViewEx.h();
        }
    }

    private static void b(String str, Object obj, StringBuilder sb) {
        Method[] methods;
        if (TextUtils.isEmpty(str) || obj == null || sb == null) {
            return;
        }
        Class<?> cls = obj.getClass();
        sb.append("if(typeof(window.");
        sb.append(str);
        sb.append(")!='undefined'){");
        sb.append("    console.log('window." + str + "_js_interface_name is exist!!');");
        sb.append("}else {");
        sb.append("    window.");
        sb.append(str);
        sb.append("={");
        for (Method method : cls.getMethods()) {
            String name = method.getName();
            if (!e(name)) {
                sb.append("        ");
                sb.append(name);
                sb.append(":function(");
                int length = method.getParameterTypes().length;
                if (length > 0) {
                    int i2 = length - 1;
                    int i4 = 0;
                    while (true) {
                        sb.append("arg");
                        if (i4 >= i2) {
                            break;
                        }
                        sb.append(i4);
                        sb.append(",");
                        i4++;
                    }
                    sb.append(i2);
                }
                sb.append(") {");
                sb.append(method.getReturnType() != Void.TYPE ? "            return prompt('MyApp:'+" : "            prompt('MyApp:'+");
                sb.append("JSON.stringify({");
                sb.append("obj:'");
                sb.append(str);
                sb.append("',");
                sb.append("func:'");
                sb.append(name);
                sb.append("',");
                sb.append("args:[");
                if (length > 0) {
                    int i5 = length - 1;
                    int i6 = 0;
                    while (true) {
                        sb.append("arg");
                        if (i6 >= i5) {
                            break;
                        }
                        sb.append(i6);
                        sb.append(",");
                        i6++;
                    }
                    sb.append(i5);
                }
                sb.append("]})");
                sb.append(");");
                sb.append("        }, ");
            }
        }
        sb.append("    };");
        sb.append("}");
    }

    private boolean c(JsPromptResult jsPromptResult, String str, String str2, Object[] objArr) {
        Object obj = this.f58657a.get(str);
        boolean z3 = false;
        if (obj == null) {
            jsPromptResult.cancel();
            return false;
        }
        Class<?>[] clsArr = null;
        int length = objArr != null ? objArr.length : 0;
        if (length > 0) {
            Class<?>[] clsArr2 = new Class[length];
            for (int i2 = 0; i2 < length; i2++) {
                Class<?> cls = objArr[i2].getClass();
                clsArr2[i2] = cls == Integer.class ? Integer.TYPE : cls == Boolean.class ? Boolean.TYPE : String.class;
            }
            clsArr = clsArr2;
        }
        try {
            Object invoke = obj.getClass().getMethod(str2, clsArr).invoke(obj, objArr);
            jsPromptResult.confirm(invoke == null || invoke.getClass() == Void.TYPE ? "" : invoke.toString());
            z3 = true;
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        jsPromptResult.cancel();
        return z3;
    }

    private static boolean e(String str) {
        for (String str2 : f58656c) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f(String str, JsPromptResult jsPromptResult) {
        int length;
        if (str.startsWith("MyApp:")) {
            try {
                JSONObject jSONObject = new JSONObject(str.substring(6));
                String string = jSONObject.getString("obj");
                String string2 = jSONObject.getString(com.alipay.sdk.authjs.a.f9679m);
                JSONArray jSONArray = jSONObject.getJSONArray("args");
                Object[] objArr = null;
                if (jSONArray != null && (length = jSONArray.length()) > 0) {
                    objArr = new Object[length];
                    for (int i2 = 0; i2 < length; i2++) {
                        objArr[i2] = jSONArray.get(i2);
                    }
                }
                if (c(jsPromptResult, string, string2, objArr)) {
                    return true;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            jsPromptResult.cancel();
            return false;
        }
        return false;
    }

    private void g() {
        super.setWebChromeClient(new x(this, (byte) 0));
        super.setWebViewClient(new y(this, (byte) 0));
        if (!(Build.VERSION.SDK_INT >= 11) || k()) {
            return;
        }
        super.removeJavascriptInterface("searchBoxJavaBridge_");
        super.removeJavascriptInterface("accessibility");
        super.removeJavascriptInterface("accessibilityTraversal");
    }

    private void h() {
        if (!TextUtils.isEmpty(this.f58658b)) {
            i();
            return;
        }
        this.f58658b = j();
        i();
    }

    private void i() {
        loadUrl(this.f58658b);
    }

    private String j() {
        if (this.f58657a.size() == 0) {
            this.f58658b = null;
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("javascript:(function JsAddJavascriptInterface_(){");
        for (Map.Entry entry : this.f58657a.entrySet()) {
            try {
                b((String) entry.getKey(), entry.getValue(), sb);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        sb.append("})()");
        return sb.toString();
    }

    private static boolean k() {
        return Build.VERSION.SDK_INT >= 17;
    }

    @Override // android.webkit.WebView
    public void addJavascriptInterface(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (k()) {
            super.addJavascriptInterface(obj, str);
        } else {
            this.f58657a.put(str, obj);
        }
    }

    @Override // android.webkit.WebView
    public void removeJavascriptInterface(String str) {
        if (k()) {
            super.removeJavascriptInterface(str);
            return;
        }
        this.f58657a.remove(str);
        this.f58658b = null;
        h();
    }
}
