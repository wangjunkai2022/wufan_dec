package com.papa91.arc.http;

import android.content.Context;
import com.google.gson.Gson;
import com.papa91.arc.bean.PopwindowBean;
import com.papa91.arc.bean.ReqRealNameArgs;
import com.papa91.arc.bean.ReqSubmitRealNameArgs;
import com.papa91.arc.bean.Request;
import com.papa91.arc.bean.RequestHeaders;
import com.papa91.arc.bean.Response;
import com.papa91.arc.http.http.DNSDataResult;
import com.papa91.arc.http.rpc.RpcConstant;
import com.papa91.arc.http.utils.PrefUtil;
import com.papa91.arc.util.StringUtils;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
/* loaded from: classes4.dex */
public class HttpUtils {
    private static Gson gson;
    private static boolean initSuccess;
    private static RequestHeaders mHeaders;

    /* loaded from: classes4.dex */
    public interface OnResult {
        void onFailure(String str);

        void onSuccess(String str);
    }

    public static Response<PopwindowBean> checkRealName(Request<ReqRealNameArgs> request) {
        StringBuilder sb = new StringBuilder();
        sb.append("getGoldenFinger: ");
        sb.append(request.toString());
        ensureGsonCreated();
        String json = gson.toJson(request);
        return post(RpcConstant.gameUrl + "/v9/realName/auth/check", json, PopwindowBean.class);
    }

    private static void ensureGsonCreated() {
        if (gson == null) {
            gson = new Gson();
        }
    }

    public static void init(Context context) {
        boolean z3;
        boolean z4;
        if (initSuccess) {
            return;
        }
        ensureGsonCreated();
        String dNSHttpUrl = PrefUtil.getInstance(context).getDNSHttpUrl();
        String requestHeaders = PrefUtil.getInstance(context).getRequestHeaders();
        boolean z5 = true;
        if (StringUtils.isNotEmpty(dNSHttpUrl)) {
            ((DNSDataResult) gson.fromJson(dNSHttpUrl, (Class<Object>) DNSDataResult.class)).updateRpcConstant();
            z3 = true;
        } else {
            z3 = false;
        }
        if (StringUtils.isNotEmpty(requestHeaders)) {
            mHeaders = (RequestHeaders) gson.fromJson(requestHeaders, (Class<Object>) RequestHeaders.class);
            z4 = true;
        } else {
            z4 = false;
        }
        initSuccess = (z3 && z4) ? false : false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$postSync$0(String str, String str2, OnResult onResult) {
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
        HttpPost httpPost = new HttpPost(str);
        try {
            StringEntity stringEntity = new StringEntity(str2);
            httpPost.setHeader("Content-type", HttpHeaders.Values.APPLICATION_JSON);
            httpPost.setEntity(stringEntity);
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
        }
        try {
            HttpResponse execute = defaultHttpClient.execute(httpPost);
            if (execute.getStatusLine().getStatusCode() != 200) {
                if (onResult != null) {
                    onResult.onFailure("");
                    return;
                }
                return;
            }
            String entityUtils = EntityUtils.toString(execute.getEntity(), "utf-8");
            if (onResult != null) {
                onResult.onSuccess(entityUtils);
            }
        } catch (Exception e5) {
            e5.printStackTrace();
            if (onResult != null) {
                onResult.onFailure("网络连接异常，请检查网络连接");
            }
        }
    }

    static <T> Response<T> parse(String str, Class<T> cls) {
        try {
            ensureGsonCreated();
            return (Response) gson.fromJson(str, type(Response.class, cls));
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static <T> Response<T> post(String str, String str2, Class<T> cls) {
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
        HttpPost httpPost = new HttpPost(str);
        try {
            RequestHeaders requestHeaders = mHeaders;
            if (requestHeaders != null) {
                try {
                    httpPost.setHeader("wufankey", requestHeaders.getWufankey());
                    httpPost.setHeader("wf-d", mHeaders.getWf_d());
                    httpPost.setHeader("wf-a", mHeaders.getWf_a());
                    httpPost.setHeader("wf-ad", mHeaders.getWf_ad());
                    httpPost.setHeader("wf-m", mHeaders.getWf_m());
                    httpPost.setHeader("wf-i", mHeaders.getWf_i());
                    httpPost.setHeader("wf-pm", mHeaders.getWf_pm());
                    httpPost.setHeader("android-ver", mHeaders.getAndroid_ver());
                    httpPost.setHeader("wf-single", String.valueOf(mHeaders.getWf_single()));
                    httpPost.setHeader("wf-o", mHeaders.getWf_o());
                    httpPost.setHeader("arm64", mHeaders.getArm64());
                    httpPost.setHeader("wf-single", String.valueOf(mHeaders.getWf_single()));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            StringEntity stringEntity = new StringEntity(str2, "UTF-8");
            httpPost.setHeader("Content-type", "application/json;charset=utf-8");
            httpPost.setHeader("Accept", HttpHeaders.Values.APPLICATION_JSON);
            httpPost.setEntity(stringEntity);
        } catch (UnsupportedEncodingException e5) {
            e5.printStackTrace();
        }
        try {
            HttpResponse execute = defaultHttpClient.execute(httpPost);
            if (execute.getStatusLine().getStatusCode() == 200) {
                return parse(EntityUtils.toString(execute.getEntity(), "utf-8"), cls);
            }
            return null;
        } catch (Exception e6) {
            e6.printStackTrace();
            return null;
        }
    }

    public static void postSync(final String str, final String str2, final OnResult onResult) {
        new Thread(new Runnable() { // from class: com.papa91.arc.http.a
            @Override // java.lang.Runnable
            public final void run() {
                HttpUtils.lambda$postSync$0(str, str2, onResult);
            }
        }).start();
    }

    public static Response<PopwindowBean> submitRealName(Request<ReqSubmitRealNameArgs> request) {
        StringBuilder sb = new StringBuilder();
        sb.append("getGoldenFinger: ");
        sb.append(request.toString());
        ensureGsonCreated();
        String json = gson.toJson(request);
        return post(RpcConstant.gameUrl + "/v9/realName/auth/submit", json, PopwindowBean.class);
    }

    static ParameterizedType type(final Class cls, final Type... typeArr) {
        return new ParameterizedType() { // from class: com.papa91.arc.http.HttpUtils.1
            @Override // java.lang.reflect.ParameterizedType
            public Type[] getActualTypeArguments() {
                return typeArr;
            }

            @Override // java.lang.reflect.ParameterizedType
            public Type getOwnerType() {
                return null;
            }

            @Override // java.lang.reflect.ParameterizedType
            public Type getRawType() {
                return cls;
            }
        };
    }
}
