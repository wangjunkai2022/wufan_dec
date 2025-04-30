package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.BeanDeserializer;
import com.fasterxml.jackson.databind.deser.SettableAnyProperty;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.util.Set;
/* loaded from: classes2.dex */
public class ThrowableDeserializer extends BeanDeserializer {
    protected static final String PROP_NAME_MESSAGE = "message";
    private static final long serialVersionUID = 1;

    public ThrowableDeserializer(BeanDeserializer beanDeserializer) {
        super(beanDeserializer);
        this._vanillaProcessing = false;
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializer, com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public Object deserializeFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object createUsingDefault;
        if (this._propertyBasedCreator != null) {
            return _deserializeUsingPropertyBased(jsonParser, deserializationContext);
        }
        JsonDeserializer<Object> jsonDeserializer = this._delegateDeserializer;
        if (jsonDeserializer != null) {
            return this._valueInstantiator.createUsingDelegate(deserializationContext, jsonDeserializer.deserialize(jsonParser, deserializationContext));
        }
        if (this._beanType.isAbstract()) {
            return deserializationContext.handleMissingInstantiator(handledType(), getValueInstantiator(), jsonParser, "abstract type (need to add/enable type information?)", new Object[0]);
        }
        boolean canCreateFromString = this._valueInstantiator.canCreateFromString();
        boolean canCreateUsingDefault = this._valueInstantiator.canCreateUsingDefault();
        if (!canCreateFromString && !canCreateUsingDefault) {
            return deserializationContext.handleMissingInstantiator(handledType(), getValueInstantiator(), jsonParser, "Throwable needs a default constructor, a single-String-arg constructor; or explicit @JsonCreator", new Object[0]);
        }
        Object obj = null;
        Object[] objArr = null;
        int i2 = 0;
        while (!jsonParser.hasToken(JsonToken.END_OBJECT)) {
            String currentName = jsonParser.currentName();
            SettableBeanProperty find = this._beanProperties.find(currentName);
            jsonParser.nextToken();
            if (find != null) {
                if (obj != null) {
                    find.deserializeAndSet(jsonParser, deserializationContext, obj);
                } else {
                    if (objArr == null) {
                        int size = this._beanProperties.size();
                        objArr = new Object[size + size];
                    }
                    int i4 = i2 + 1;
                    objArr[i2] = find;
                    i2 = i4 + 1;
                    objArr[i4] = find.deserialize(jsonParser, deserializationContext);
                }
            } else if ("message".equals(currentName) && canCreateFromString) {
                obj = this._valueInstantiator.createFromString(deserializationContext, jsonParser.getValueAsString());
                if (objArr != null) {
                    for (int i5 = 0; i5 < i2; i5 += 2) {
                        ((SettableBeanProperty) objArr[i5]).set(obj, objArr[i5 + 1]);
                    }
                    objArr = null;
                }
            } else {
                Set<String> set = this._ignorableProps;
                if (set != null && set.contains(currentName)) {
                    jsonParser.skipChildren();
                } else {
                    SettableAnyProperty settableAnyProperty = this._anySetter;
                    if (settableAnyProperty != null) {
                        settableAnyProperty.deserializeAndSet(jsonParser, deserializationContext, obj, currentName);
                    } else {
                        handleUnknownProperty(jsonParser, deserializationContext, obj, currentName);
                    }
                }
            }
            jsonParser.nextToken();
        }
        if (obj == null) {
            if (canCreateFromString) {
                createUsingDefault = this._valueInstantiator.createFromString(deserializationContext, null);
            } else {
                createUsingDefault = this._valueInstantiator.createUsingDefault(deserializationContext);
            }
            obj = createUsingDefault;
            if (objArr != null) {
                for (int i6 = 0; i6 < i2; i6 += 2) {
                    ((SettableBeanProperty) objArr[i6]).set(obj, objArr[i6 + 1]);
                }
            }
        }
        return obj;
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializer, com.fasterxml.jackson.databind.deser.BeanDeserializerBase, com.fasterxml.jackson.databind.JsonDeserializer
    public JsonDeserializer<Object> unwrappingDeserializer(NameTransformer nameTransformer) {
        return getClass() != ThrowableDeserializer.class ? this : new ThrowableDeserializer(this, nameTransformer);
    }

    protected ThrowableDeserializer(BeanDeserializer beanDeserializer, NameTransformer nameTransformer) {
        super(beanDeserializer, nameTransformer);
    }
}
