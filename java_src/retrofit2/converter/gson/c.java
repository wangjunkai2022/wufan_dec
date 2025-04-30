package retrofit2.converter.gson;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.Converter;
/* compiled from: GsonResponseBodyConverter.java */
/* loaded from: classes5.dex */
final class c<T> implements Converter<ResponseBody, T> {

    /* renamed from: a  reason: collision with root package name */
    private final Gson f74086a;

    /* renamed from: b  reason: collision with root package name */
    private final TypeAdapter<T> f74087b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Gson gson, TypeAdapter<T> typeAdapter) {
        this.f74086a = gson;
        this.f74087b = typeAdapter;
    }

    @Override // retrofit2.Converter
    /* renamed from: a */
    public T convert(ResponseBody responseBody) throws IOException {
        JsonReader newJsonReader = this.f74086a.newJsonReader(responseBody.charStream());
        try {
            T read = this.f74087b.read(newJsonReader);
            if (newJsonReader.peek() == JsonToken.END_DOCUMENT) {
                return read;
            }
            throw new JsonIOException("JSON document was not fully consumed.");
        } finally {
            responseBody.close();
        }
    }
}
