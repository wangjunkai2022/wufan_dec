package retrofit2.converter.jackson;

import com.fasterxml.jackson.databind.ObjectWriter;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.Converter;
/* compiled from: JacksonRequestBodyConverter.java */
/* loaded from: classes5.dex */
final class b<T> implements Converter<T, RequestBody> {

    /* renamed from: b  reason: collision with root package name */
    private static final MediaType f74089b = MediaType.get("application/json; charset=UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final ObjectWriter f74090a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(ObjectWriter objectWriter) {
        this.f74090a = objectWriter;
    }

    @Override // retrofit2.Converter
    /* renamed from: a */
    public RequestBody convert(T t3) throws IOException {
        return RequestBody.create(f74089b, this.f74090a.writeValueAsBytes(t3));
    }
}
