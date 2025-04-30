package retrofit2.converter.jackson;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Objects;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;
/* compiled from: JacksonConverterFactory.java */
/* loaded from: classes5.dex */
public final class a extends Converter.Factory {

    /* renamed from: a  reason: collision with root package name */
    private final ObjectMapper f74088a;

    private a(ObjectMapper objectMapper) {
        this.f74088a = objectMapper;
    }

    public static a a() {
        return b(new ObjectMapper());
    }

    public static a b(ObjectMapper objectMapper) {
        Objects.requireNonNull(objectMapper, "mapper == null");
        return new a(objectMapper);
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        return new b(this.f74088a.writerFor(this.f74088a.getTypeFactory().constructType(type)));
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        return new c(this.f74088a.readerFor(this.f74088a.getTypeFactory().constructType(type)));
    }
}
