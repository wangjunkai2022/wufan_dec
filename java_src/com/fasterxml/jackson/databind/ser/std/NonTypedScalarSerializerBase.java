package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.io.IOException;
@Deprecated
/* loaded from: classes2.dex */
public abstract class NonTypedScalarSerializerBase<T> extends StdScalarSerializer<T> {
    protected NonTypedScalarSerializerBase(Class<T> cls) {
        super(cls);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public final void serializeWithType(T t3, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        serialize(t3, jsonGenerator, serializerProvider);
    }

    protected NonTypedScalarSerializerBase(Class<?> cls, boolean z3) {
        super(cls, z3);
    }
}
