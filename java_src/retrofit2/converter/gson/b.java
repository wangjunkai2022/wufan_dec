package retrofit2.converter.gson;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import retrofit2.Converter;
/* compiled from: GsonRequestBodyConverter.java */
/* loaded from: classes5.dex */
final class b<T> implements Converter<T, RequestBody> {

    /* renamed from: c  reason: collision with root package name */
    private static final MediaType f74082c = MediaType.get("application/json; charset=UTF-8");

    /* renamed from: d  reason: collision with root package name */
    private static final Charset f74083d = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final Gson f74084a;

    /* renamed from: b  reason: collision with root package name */
    private final TypeAdapter<T> f74085b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Gson gson, TypeAdapter<T> typeAdapter) {
        this.f74084a = gson;
        this.f74085b = typeAdapter;
    }

    @Override // retrofit2.Converter
    /* renamed from: a */
    public RequestBody convert(T t3) throws IOException {
        Buffer buffer = new Buffer();
        JsonWriter newJsonWriter = this.f74084a.newJsonWriter(new OutputStreamWriter(buffer.outputStream(), f74083d));
        this.f74085b.write(newJsonWriter, t3);
        newJsonWriter.close();
        return RequestBody.create(f74082c, buffer.readByteString());
    }
}
