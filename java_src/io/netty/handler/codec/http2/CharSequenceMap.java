package io.netty.handler.codec.http2;

import io.netty.handler.codec.DefaultHeaders;
import io.netty.handler.codec.UnsupportedValueConverter;
import io.netty.handler.codec.ValueConverter;
import io.netty.util.AsciiString;
/* loaded from: classes5.dex */
public final class CharSequenceMap<V> extends DefaultHeaders<CharSequence, V, CharSequenceMap<V>> {
    public CharSequenceMap() {
        this(true);
    }

    public CharSequenceMap(boolean z3) {
        this(z3, UnsupportedValueConverter.instance());
    }

    public CharSequenceMap(boolean z3, ValueConverter<V> valueConverter) {
        super(z3 ? AsciiString.CASE_SENSITIVE_HASHER : AsciiString.CASE_INSENSITIVE_HASHER, valueConverter);
    }

    public CharSequenceMap(boolean z3, ValueConverter<V> valueConverter, int i2) {
        super(z3 ? AsciiString.CASE_SENSITIVE_HASHER : AsciiString.CASE_INSENSITIVE_HASHER, valueConverter, DefaultHeaders.NameValidator.NOT_NULL, i2);
    }
}
