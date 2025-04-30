package retrofit2;

import io.netty.handler.codec.http.HttpHeaders;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Map;
import javax.annotation.Nullable;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class ParameterHandler<T> {

    /* loaded from: classes.dex */
    static final class Body<T> extends ParameterHandler<T> {
        private final Converter<T, RequestBody> converter;
        private final Method method;

        /* renamed from: p  reason: collision with root package name */
        private final int f74046p;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Body(Method method, int i2, Converter<T, RequestBody> converter) {
            this.method = method;
            this.f74046p = i2;
            this.converter = converter;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @Nullable T t3) {
            if (t3 != null) {
                try {
                    requestBuilder.setBody(this.converter.convert(t3));
                    return;
                } catch (IOException e4) {
                    Method method = this.method;
                    int i2 = this.f74046p;
                    throw Utils.parameterError(method, e4, i2, "Unable to convert " + t3 + " to RequestBody", new Object[0]);
                }
            }
            throw Utils.parameterError(this.method, this.f74046p, "Body parameter value must not be null.", new Object[0]);
        }
    }

    /* loaded from: classes.dex */
    static final class Field<T> extends ParameterHandler<T> {
        private final boolean encoded;
        private final String name;
        private final Converter<T, String> valueConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Field(String str, Converter<T, String> converter, boolean z3) {
            this.name = (String) Utils.checkNotNull(str, "name == null");
            this.valueConverter = converter;
            this.encoded = z3;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @Nullable T t3) throws IOException {
            String convert;
            if (t3 == null || (convert = this.valueConverter.convert(t3)) == null) {
                return;
            }
            requestBuilder.addFormField(this.name, convert, this.encoded);
        }
    }

    /* loaded from: classes.dex */
    static final class FieldMap<T> extends ParameterHandler<Map<String, T>> {
        private final boolean encoded;
        private final Method method;

        /* renamed from: p  reason: collision with root package name */
        private final int f74047p;
        private final Converter<T, String> valueConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public FieldMap(Method method, int i2, Converter<T, String> converter, boolean z3) {
            this.method = method;
            this.f74047p = i2;
            this.valueConverter = converter;
            this.encoded = z3;
        }

        @Override // retrofit2.ParameterHandler
        /* bridge */ /* synthetic */ void apply(RequestBuilder requestBuilder, @Nullable Object obj) throws IOException {
            apply(requestBuilder, (Map) ((Map) obj));
        }

        void apply(RequestBuilder requestBuilder, @Nullable Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            String convert = this.valueConverter.convert(value);
                            if (convert != null) {
                                requestBuilder.addFormField(key, convert, this.encoded);
                            } else {
                                Method method = this.method;
                                int i2 = this.f74047p;
                                throw Utils.parameterError(method, i2, "Field map value '" + value + "' converted to null by " + this.valueConverter.getClass().getName() + " for key '" + key + "'.", new Object[0]);
                            }
                        } else {
                            Method method2 = this.method;
                            int i4 = this.f74047p;
                            throw Utils.parameterError(method2, i4, "Field map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw Utils.parameterError(this.method, this.f74047p, "Field map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw Utils.parameterError(this.method, this.f74047p, "Field map was null.", new Object[0]);
        }
    }

    /* loaded from: classes.dex */
    static final class Header<T> extends ParameterHandler<T> {
        private final String name;
        private final Converter<T, String> valueConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Header(String str, Converter<T, String> converter) {
            this.name = (String) Utils.checkNotNull(str, "name == null");
            this.valueConverter = converter;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @Nullable T t3) throws IOException {
            String convert;
            if (t3 == null || (convert = this.valueConverter.convert(t3)) == null) {
                return;
            }
            requestBuilder.addHeader(this.name, convert);
        }
    }

    /* loaded from: classes.dex */
    static final class HeaderMap<T> extends ParameterHandler<Map<String, T>> {
        private final Method method;

        /* renamed from: p  reason: collision with root package name */
        private final int f74048p;
        private final Converter<T, String> valueConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public HeaderMap(Method method, int i2, Converter<T, String> converter) {
            this.method = method;
            this.f74048p = i2;
            this.valueConverter = converter;
        }

        @Override // retrofit2.ParameterHandler
        /* bridge */ /* synthetic */ void apply(RequestBuilder requestBuilder, @Nullable Object obj) throws IOException {
            apply(requestBuilder, (Map) ((Map) obj));
        }

        void apply(RequestBuilder requestBuilder, @Nullable Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            requestBuilder.addHeader(key, this.valueConverter.convert(value));
                        } else {
                            Method method = this.method;
                            int i2 = this.f74048p;
                            throw Utils.parameterError(method, i2, "Header map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw Utils.parameterError(this.method, this.f74048p, "Header map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw Utils.parameterError(this.method, this.f74048p, "Header map was null.", new Object[0]);
        }
    }

    /* loaded from: classes.dex */
    static final class Headers extends ParameterHandler<okhttp3.Headers> {
        private final Method method;

        /* renamed from: p  reason: collision with root package name */
        private final int f74049p;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Headers(Method method, int i2) {
            this.method = method;
            this.f74049p = i2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.ParameterHandler
        public void apply(RequestBuilder requestBuilder, @Nullable okhttp3.Headers headers) {
            if (headers != null) {
                requestBuilder.addHeaders(headers);
                return;
            }
            throw Utils.parameterError(this.method, this.f74049p, "Headers parameter must not be null.", new Object[0]);
        }
    }

    /* loaded from: classes.dex */
    static final class Part<T> extends ParameterHandler<T> {
        private final Converter<T, RequestBody> converter;
        private final okhttp3.Headers headers;
        private final Method method;

        /* renamed from: p  reason: collision with root package name */
        private final int f74050p;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Part(Method method, int i2, okhttp3.Headers headers, Converter<T, RequestBody> converter) {
            this.method = method;
            this.f74050p = i2;
            this.headers = headers;
            this.converter = converter;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @Nullable T t3) {
            if (t3 == null) {
                return;
            }
            try {
                requestBuilder.addPart(this.headers, this.converter.convert(t3));
            } catch (IOException e4) {
                Method method = this.method;
                int i2 = this.f74050p;
                throw Utils.parameterError(method, i2, "Unable to convert " + t3 + " to RequestBody", e4);
            }
        }
    }

    /* loaded from: classes.dex */
    static final class PartMap<T> extends ParameterHandler<Map<String, T>> {
        private final Method method;

        /* renamed from: p  reason: collision with root package name */
        private final int f74051p;
        private final String transferEncoding;
        private final Converter<T, RequestBody> valueConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public PartMap(Method method, int i2, Converter<T, RequestBody> converter, String str) {
            this.method = method;
            this.f74051p = i2;
            this.valueConverter = converter;
            this.transferEncoding = str;
        }

        @Override // retrofit2.ParameterHandler
        /* bridge */ /* synthetic */ void apply(RequestBuilder requestBuilder, @Nullable Object obj) throws IOException {
            apply(requestBuilder, (Map) ((Map) obj));
        }

        void apply(RequestBuilder requestBuilder, @Nullable Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            requestBuilder.addPart(okhttp3.Headers.of("Content-Disposition", "form-data; name=\"" + key + m.a.f72569g, HttpHeaders.Names.CONTENT_TRANSFER_ENCODING, this.transferEncoding), this.valueConverter.convert(value));
                        } else {
                            Method method = this.method;
                            int i2 = this.f74051p;
                            throw Utils.parameterError(method, i2, "Part map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw Utils.parameterError(this.method, this.f74051p, "Part map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw Utils.parameterError(this.method, this.f74051p, "Part map was null.", new Object[0]);
        }
    }

    /* loaded from: classes.dex */
    static final class Path<T> extends ParameterHandler<T> {
        private final boolean encoded;
        private final Method method;
        private final String name;

        /* renamed from: p  reason: collision with root package name */
        private final int f74052p;
        private final Converter<T, String> valueConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Path(Method method, int i2, String str, Converter<T, String> converter, boolean z3) {
            this.method = method;
            this.f74052p = i2;
            this.name = (String) Utils.checkNotNull(str, "name == null");
            this.valueConverter = converter;
            this.encoded = z3;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @Nullable T t3) throws IOException {
            if (t3 != null) {
                requestBuilder.addPathParam(this.name, this.valueConverter.convert(t3), this.encoded);
                return;
            }
            Method method = this.method;
            int i2 = this.f74052p;
            throw Utils.parameterError(method, i2, "Path parameter \"" + this.name + "\" value must not be null.", new Object[0]);
        }
    }

    /* loaded from: classes.dex */
    static final class Query<T> extends ParameterHandler<T> {
        private final boolean encoded;
        private final String name;
        private final Converter<T, String> valueConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Query(String str, Converter<T, String> converter, boolean z3) {
            this.name = (String) Utils.checkNotNull(str, "name == null");
            this.valueConverter = converter;
            this.encoded = z3;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @Nullable T t3) throws IOException {
            String convert;
            if (t3 == null || (convert = this.valueConverter.convert(t3)) == null) {
                return;
            }
            requestBuilder.addQueryParam(this.name, convert, this.encoded);
        }
    }

    /* loaded from: classes.dex */
    static final class QueryMap<T> extends ParameterHandler<Map<String, T>> {
        private final boolean encoded;
        private final Method method;

        /* renamed from: p  reason: collision with root package name */
        private final int f74053p;
        private final Converter<T, String> valueConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public QueryMap(Method method, int i2, Converter<T, String> converter, boolean z3) {
            this.method = method;
            this.f74053p = i2;
            this.valueConverter = converter;
            this.encoded = z3;
        }

        @Override // retrofit2.ParameterHandler
        /* bridge */ /* synthetic */ void apply(RequestBuilder requestBuilder, @Nullable Object obj) throws IOException {
            apply(requestBuilder, (Map) ((Map) obj));
        }

        void apply(RequestBuilder requestBuilder, @Nullable Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            String convert = this.valueConverter.convert(value);
                            if (convert != null) {
                                requestBuilder.addQueryParam(key, convert, this.encoded);
                            } else {
                                Method method = this.method;
                                int i2 = this.f74053p;
                                throw Utils.parameterError(method, i2, "Query map value '" + value + "' converted to null by " + this.valueConverter.getClass().getName() + " for key '" + key + "'.", new Object[0]);
                            }
                        } else {
                            Method method2 = this.method;
                            int i4 = this.f74053p;
                            throw Utils.parameterError(method2, i4, "Query map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw Utils.parameterError(this.method, this.f74053p, "Query map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw Utils.parameterError(this.method, this.f74053p, "Query map was null", new Object[0]);
        }
    }

    /* loaded from: classes.dex */
    static final class QueryName<T> extends ParameterHandler<T> {
        private final boolean encoded;
        private final Converter<T, String> nameConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public QueryName(Converter<T, String> converter, boolean z3) {
            this.nameConverter = converter;
            this.encoded = z3;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @Nullable T t3) throws IOException {
            if (t3 == null) {
                return;
            }
            requestBuilder.addQueryParam(this.nameConverter.convert(t3), null, this.encoded);
        }
    }

    /* loaded from: classes.dex */
    static final class RawPart extends ParameterHandler<MultipartBody.Part> {
        static final RawPart INSTANCE = new RawPart();

        private RawPart() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.ParameterHandler
        public void apply(RequestBuilder requestBuilder, @Nullable MultipartBody.Part part) {
            if (part != null) {
                requestBuilder.addPart(part);
            }
        }
    }

    /* loaded from: classes.dex */
    static final class RelativeUrl extends ParameterHandler<Object> {
        private final Method method;

        /* renamed from: p  reason: collision with root package name */
        private final int f74054p;

        /* JADX INFO: Access modifiers changed from: package-private */
        public RelativeUrl(Method method, int i2) {
            this.method = method;
            this.f74054p = i2;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @Nullable Object obj) {
            if (obj != null) {
                requestBuilder.setRelativeUrl(obj);
                return;
            }
            throw Utils.parameterError(this.method, this.f74054p, "@Url parameter is null.", new Object[0]);
        }
    }

    /* loaded from: classes.dex */
    static final class Tag<T> extends ParameterHandler<T> {
        final Class<T> cls;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Tag(Class<T> cls) {
            this.cls = cls;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @Nullable T t3) {
            requestBuilder.addTag(this.cls, t3);
        }
    }

    ParameterHandler() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void apply(RequestBuilder requestBuilder, @Nullable T t3) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ParameterHandler<Object> array() {
        return new ParameterHandler<Object>() { // from class: retrofit2.ParameterHandler.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // retrofit2.ParameterHandler
            void apply(RequestBuilder requestBuilder, @Nullable Object obj) throws IOException {
                if (obj == null) {
                    return;
                }
                int length = Array.getLength(obj);
                for (int i2 = 0; i2 < length; i2++) {
                    ParameterHandler.this.apply(requestBuilder, Array.get(obj, i2));
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ParameterHandler<Iterable<T>> iterable() {
        return new ParameterHandler<Iterable<T>>() { // from class: retrofit2.ParameterHandler.1
            @Override // retrofit2.ParameterHandler
            /* bridge */ /* synthetic */ void apply(RequestBuilder requestBuilder, @Nullable Object obj) throws IOException {
                apply(requestBuilder, (Iterable) ((Iterable) obj));
            }

            void apply(RequestBuilder requestBuilder, @Nullable Iterable<T> iterable) throws IOException {
                if (iterable == null) {
                    return;
                }
                for (T t3 : iterable) {
                    ParameterHandler.this.apply(requestBuilder, t3);
                }
            }
        };
    }
}
