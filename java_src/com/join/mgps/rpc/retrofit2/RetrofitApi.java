package com.join.mgps.rpc.retrofit2;

import androidx.annotation.NonNull;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.join.mgps.Util.a2;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.io.File;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import retrofit2.Retrofit;
/* loaded from: classes4.dex */
public class RetrofitApi<T> {
    public static int TYPE_LIST = 1;
    public static int TYPE_MODEL = 2;
    public static int TYPE_NORMAL = 0;
    public static int TYPE_POST = 3;
    public static OkHttpClient okHttpClient;
    private static RetrofitApi retrofitApi;

    static {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.addInterceptor(new a());
        OkHttpClient.Builder a4 = a2.a(builder);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        a4.connectTimeout(2L, timeUnit);
        long j4 = 10;
        a4.connectTimeout(j4, timeUnit).readTimeout(j4, timeUnit).writeTimeout(j4, timeUnit);
        okHttpClient = a4.build();
    }

    @NonNull
    private RequestBody createPartFromString(String str) {
        return RequestBody.create(MultipartBody.FORM, str);
    }

    public static RetrofitApi getInstance() {
        RetrofitApi retrofitApi2 = retrofitApi;
        return retrofitApi2 == null ? new RetrofitApi() : retrofitApi2;
    }

    public static Retrofit getRetrofit2(String str) {
        return new Retrofit.Builder().baseUrl(str).addConverterFactory(retrofit2.converter.jackson.a.b(new ObjectMapper().configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false).configure(SerializationFeature.WRITE_NULL_MAP_VALUES, false).setSerializationInclusion(JsonInclude.Include.NON_NULL))).client(okHttpClient).build();
    }

    private String guessMimeType(String str) {
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(str);
        return contentTypeFor == null ? HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE : contentTypeFor;
    }

    @NonNull
    private MultipartBody.Part prepareFilePart(String str, File file) {
        return MultipartBody.Part.createFormData(str, file.getName(), RequestBody.create(MediaType.parse(guessMimeType(file.getName())), file));
    }

    public Map<String, RequestBody> convert2PartMap(Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (!(obj instanceof File)) {
                hashMap.put(str, parseRequestBody(obj + ""));
            }
        }
        return hashMap;
    }

    public List<MultipartBody.Part> convert2Parts(Map<String, Object> map) {
        ArrayList arrayList = new ArrayList();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj instanceof File) {
                File file = (File) obj;
                RequestBody.create(MediaType.parse(guessMimeType(file.getName())), file);
                arrayList.add(prepareFilePart(str, file));
            }
        }
        return arrayList;
    }

    public String parseImageMapKey(String str, String str2) {
        return str + "\"; filename=\"" + str2;
    }

    public RequestBody parseImageRequestBody(File file) {
        return RequestBody.create(MediaType.parse("image/jpg"), file);
    }

    public RequestBody parseRequestBody(String str) {
        return RequestBody.create(MediaType.parse(HttpPostBodyUtil.DEFAULT_TEXT_CONTENT_TYPE), str);
    }
}
