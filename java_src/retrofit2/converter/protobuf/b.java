package retrofit2.converter.protobuf;

import com.google.protobuf.MessageLite;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.Converter;
/* compiled from: ProtoRequestBodyConverter.java */
/* loaded from: classes5.dex */
final class b<T extends MessageLite> implements Converter<T, RequestBody> {

    /* renamed from: a  reason: collision with root package name */
    private static final MediaType f74093a = MediaType.parse("application/x-protobuf");

    @Override // retrofit2.Converter
    /* renamed from: a */
    public RequestBody convert(T t3) throws IOException {
        return RequestBody.create(f74093a, t3.toByteArray());
    }
}
