package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.exc.InvalidTypeIdException;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class AsDeductionTypeDeserializer extends AsPropertyTypeDeserializer {
    private static final long serialVersionUID = 1;
    private final Map<String, Integer> fieldBitIndex;
    private final Map<BitSet, String> subtypeFingerprints;

    public AsDeductionTypeDeserializer(JavaType javaType, TypeIdResolver typeIdResolver, JavaType javaType2, DeserializationConfig deserializationConfig, Collection<NamedType> collection) {
        super(javaType, typeIdResolver, null, false, javaType2);
        this.fieldBitIndex = new HashMap();
        this.subtypeFingerprints = buildFingerprints(deserializationConfig, collection);
    }

    private static void prune(List<BitSet> list, int i2) {
        Iterator<BitSet> it2 = list.iterator();
        while (it2.hasNext()) {
            if (!it2.next().get(i2)) {
                it2.remove();
            }
        }
    }

    protected Map<BitSet, String> buildFingerprints(DeserializationConfig deserializationConfig, Collection<NamedType> collection) {
        boolean isEnabled = deserializationConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
        HashMap hashMap = new HashMap();
        int i2 = 0;
        for (NamedType namedType : collection) {
            List<BeanPropertyDefinition> findProperties = deserializationConfig.introspect(deserializationConfig.getTypeFactory().constructType(namedType.getType())).findProperties();
            BitSet bitSet = new BitSet(findProperties.size() + i2);
            for (BeanPropertyDefinition beanPropertyDefinition : findProperties) {
                String name = beanPropertyDefinition.getName();
                if (isEnabled) {
                    name = name.toLowerCase();
                }
                Integer num = this.fieldBitIndex.get(name);
                if (num == null) {
                    num = Integer.valueOf(i2);
                    this.fieldBitIndex.put(name, Integer.valueOf(i2));
                    i2++;
                }
                bitSet.set(num.intValue());
            }
            String str = (String) hashMap.put(bitSet, namedType.getType().getName());
            if (str != null) {
                throw new IllegalStateException(String.format("Subtypes %s and %s have the same signature and cannot be uniquely deduced.", str, namedType.getType().getName()));
            }
        }
        return hashMap;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsPropertyTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public Object deserializeTypedFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.currentToken() == JsonToken.START_OBJECT) {
            JsonToken nextToken = jsonParser.nextToken();
            LinkedList linkedList = new LinkedList(this.subtypeFingerprints.keySet());
            TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
            boolean isEnabled = deserializationContext.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
            while (nextToken == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.currentName();
                if (isEnabled) {
                    currentName = currentName.toLowerCase();
                }
                tokenBuffer.copyCurrentStructure(jsonParser);
                Integer num = this.fieldBitIndex.get(currentName);
                if (num != null) {
                    prune(linkedList, num.intValue());
                    if (linkedList.size() == 1) {
                        return _deserializeTypedForId(jsonParser, deserializationContext, tokenBuffer, this.subtypeFingerprints.get(linkedList.get(0)));
                    }
                }
                nextToken = jsonParser.nextToken();
            }
            throw new InvalidTypeIdException(jsonParser, String.format("Cannot deduce unique subtype of %s (%d candidates match)", ClassUtil.getTypeDescription(this._baseType), Integer.valueOf(linkedList.size())), this._baseType, "DEDUCED");
        }
        return _deserializeTypedUsingDefaultImpl(jsonParser, deserializationContext, null);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsPropertyTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase, com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public TypeDeserializer forProperty(BeanProperty beanProperty) {
        return beanProperty == this._property ? this : new AsDeductionTypeDeserializer(this, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsPropertyTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase, com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public JsonTypeInfo.As getTypeInclusion() {
        return null;
    }

    public AsDeductionTypeDeserializer(AsDeductionTypeDeserializer asDeductionTypeDeserializer, BeanProperty beanProperty) {
        super(asDeductionTypeDeserializer, beanProperty);
        this.fieldBitIndex = asDeductionTypeDeserializer.fieldBitIndex;
        this.subtypeFingerprints = asDeductionTypeDeserializer.subtypeFingerprints;
    }
}
