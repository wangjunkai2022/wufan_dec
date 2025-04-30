package retrofit2.converter.jackson;

import com.fasterxml.jackson.databind.ObjectReader;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.Converter;
/* compiled from: JacksonResponseBodyConverter.java */
/* loaded from: classes5.dex */
final class c<T> implements Converter<ResponseBody, T> {

    /* renamed from: a  reason: collision with root package name */
    private final ObjectReader f74091a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(ObjectReader objectReader) {
        this.f74091a = objectReader;
    }

    @Override // retrofit2.Converter
    /* renamed from: a */
    public T convert(ResponseBody responseBody) throws IOException {
        try {
            return (T) this.f74091a.readValue(responseBody.charStream());
        } finally {
            responseBody.close();
        }
    }
}
