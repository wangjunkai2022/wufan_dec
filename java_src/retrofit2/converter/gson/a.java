package retrofit2.converter.gson;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Objects;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;
/* compiled from: GsonConverterFactory.java */
/* loaded from: classes5.dex */
public final class a extends Converter.Factory {

    /* renamed from: a  reason: collision with root package name */
    private final Gson f74081a;

    private a(Gson gson) {
        this.f74081a = gson;
    }

    public static a a() {
        return b(new Gson());
    }

    public static a b(Gson gson) {
        Objects.requireNonNull(gson, "gson == null");
        return new a(gson);
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        return new b(this.f74081a, this.f74081a.getAdapter(TypeToken.get(type)));
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        return new c(this.f74081a, this.f74081a.getAdapter(TypeToken.get(type)));
    }
}
