package retrofit2.converter.protobuf;

import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.MessageLite;
import com.google.protobuf.Parser;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;
/* compiled from: ProtoConverterFactory.java */
/* loaded from: classes5.dex */
public final class a extends Converter.Factory {

    /* renamed from: a  reason: collision with root package name */
    private final ExtensionRegistryLite f74092a;

    private a(ExtensionRegistryLite extensionRegistryLite) {
        this.f74092a = extensionRegistryLite;
    }

    public static a a() {
        return new a(null);
    }

    public static a b(ExtensionRegistryLite extensionRegistryLite) {
        return new a(extensionRegistryLite);
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        if ((type instanceof Class) && MessageLite.class.isAssignableFrom((Class) type)) {
            return new b();
        }
        return null;
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        Parser parser;
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (MessageLite.class.isAssignableFrom(cls)) {
                try {
                    try {
                        parser = (Parser) cls.getDeclaredMethod("parser", new Class[0]).invoke(null, new Object[0]);
                    } catch (IllegalAccessException | NoSuchFieldException unused) {
                        throw new IllegalArgumentException("Found a protobuf message but " + cls.getName() + " had no parser() method or PARSER field.");
                    }
                } catch (IllegalAccessException | NoSuchMethodException unused2) {
                    parser = (Parser) cls.getDeclaredField("PARSER").get(null);
                } catch (InvocationTargetException e4) {
                    throw new RuntimeException(e4.getCause());
                }
                return new c(parser, this.f74092a);
            }
            return null;
        }
        return null;
    }
}
