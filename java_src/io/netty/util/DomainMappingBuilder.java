package io.netty.util;
@Deprecated
/* loaded from: classes5.dex */
public final class DomainMappingBuilder<V> {
    private final DomainNameMappingBuilder<V> builder;

    public DomainMappingBuilder(V v3) {
        this.builder = new DomainNameMappingBuilder<>(v3);
    }

    public DomainMappingBuilder<V> add(String str, V v3) {
        this.builder.add(str, v3);
        return this;
    }

    public DomainNameMapping<V> build() {
        return this.builder.build();
    }

    public DomainMappingBuilder(int i2, V v3) {
        this.builder = new DomainNameMappingBuilder<>(i2, v3);
    }
}
