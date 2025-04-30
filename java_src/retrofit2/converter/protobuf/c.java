package retrofit2.converter.protobuf;

import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLite;
import com.google.protobuf.Parser;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.Converter;
/* compiled from: ProtoResponseBodyConverter.java */
/* loaded from: classes5.dex */
final class c<T extends MessageLite> implements Converter<ResponseBody, T> {

    /* renamed from: a  reason: collision with root package name */
    private final Parser<T> f74094a;

    /* renamed from: b  reason: collision with root package name */
    private final ExtensionRegistryLite f74095b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) {
        this.f74094a = parser;
        this.f74095b = extensionRegistryLite;
    }

    @Override // retrofit2.Converter
    /* renamed from: a */
    public T convert(ResponseBody responseBody) throws IOException {
        try {
            try {
                return this.f74094a.parseFrom(responseBody.byteStream(), this.f74095b);
            } catch (InvalidProtocolBufferException e4) {
                throw new RuntimeException(e4);
            }
        } finally {
            responseBody.close();
        }
    }
}
