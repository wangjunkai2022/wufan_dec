package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public class AtomicReferenceSerializer extends ReferenceTypeSerializer<AtomicReference<?>> {
    private static final long serialVersionUID = 1;

    public AtomicReferenceSerializer(ReferenceType referenceType, boolean z3, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        super(referenceType, z3, typeSerializer, jsonSerializer);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ReferenceTypeSerializer
    public ReferenceTypeSerializer<AtomicReference<?>> withContentInclusion(Object obj, boolean z3) {
        return new AtomicReferenceSerializer(this, this._property, this._valueTypeSerializer, this._valueSerializer, this._unwrapper, obj, z3);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.ReferenceTypeSerializer
    protected ReferenceTypeSerializer<AtomicReference<?>> withResolved(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, NameTransformer nameTransformer) {
        return new AtomicReferenceSerializer(this, beanProperty, typeSerializer, jsonSerializer, nameTransformer, this._suppressableValue, this._suppressNulls);
    }

    protected AtomicReferenceSerializer(AtomicReferenceSerializer atomicReferenceSerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, NameTransformer nameTransformer, Object obj, boolean z3) {
        super(atomicReferenceSerializer, beanProperty, typeSerializer, jsonSerializer, nameTransformer, obj, z3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.ser.std.ReferenceTypeSerializer
    public Object _getReferenced(AtomicReference<?> atomicReference) {
        return atomicReference.get();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.ser.std.ReferenceTypeSerializer
    public Object _getReferencedIfPresent(AtomicReference<?> atomicReference) {
        return atomicReference.get();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.ser.std.ReferenceTypeSerializer
    public boolean _isValuePresent(AtomicReference<?> atomicReference) {
        return atomicReference.get() != null;
    }
}
