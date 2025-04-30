package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.deser.impl.BeanAsArrayBuilderDeserializer;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedCreator;
import com.fasterxml.jackson.databind.deser.impl.PropertyValueBuffer;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class BuilderBasedDeserializer extends BeanDeserializerBase {
    private static final long serialVersionUID = 1;
    protected final AnnotatedMethod _buildMethod;
    protected final JavaType _targetType;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.fasterxml.jackson.databind.deser.BuilderBasedDeserializer$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction;

        static {
            int[] iArr = new int[CoercionAction.values().length];
            $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction = iArr;
            try {
                iArr[CoercionAction.AsEmpty.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction[CoercionAction.AsNull.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction[CoercionAction.TryConvert.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public BuilderBasedDeserializer(BeanDeserializerBuilder beanDeserializerBuilder, BeanDescription beanDescription, JavaType javaType, BeanPropertyMap beanPropertyMap, Map<String, SettableBeanProperty> map, Set<String> set, boolean z3, boolean z4) {
        this(beanDeserializerBuilder, beanDescription, javaType, beanPropertyMap, map, set, z3, null, z4);
    }

    private final Object vanillaDeserialize(JsonParser jsonParser, DeserializationContext deserializationContext, JsonToken jsonToken) throws IOException {
        Object createUsingDefault = this._valueInstantiator.createUsingDefault(deserializationContext);
        while (jsonParser.currentToken() == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.currentName();
            jsonParser.nextToken();
            SettableBeanProperty find = this._beanProperties.find(currentName);
            if (find != null) {
                try {
                    createUsingDefault = find.deserializeSetAndReturn(jsonParser, deserializationContext, createUsingDefault);
                } catch (Exception e4) {
                    wrapAndThrow(e4, createUsingDefault, currentName, deserializationContext);
                }
            } else {
                handleUnknownVanilla(jsonParser, deserializationContext, createUsingDefault, currentName);
            }
            jsonParser.nextToken();
        }
        return createUsingDefault;
    }

    protected final Object _deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Class<?> activeView;
        if (this._injectables != null) {
            injectValues(deserializationContext, obj);
        }
        if (this._unwrappedPropertyHandler != null) {
            if (jsonParser.hasToken(JsonToken.START_OBJECT)) {
                jsonParser.nextToken();
            }
            TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
            tokenBuffer.writeStartObject();
            return deserializeWithUnwrapped(jsonParser, deserializationContext, obj, tokenBuffer);
        } else if (this._externalTypeIdHandler != null) {
            return deserializeWithExternalTypeId(jsonParser, deserializationContext, obj);
        } else {
            if (this._needViewProcesing && (activeView = deserializationContext.getActiveView()) != null) {
                return deserializeWithView(jsonParser, deserializationContext, obj, activeView);
            }
            JsonToken currentToken = jsonParser.currentToken();
            if (currentToken == JsonToken.START_OBJECT) {
                currentToken = jsonParser.nextToken();
            }
            while (currentToken == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.currentName();
                jsonParser.nextToken();
                SettableBeanProperty find = this._beanProperties.find(currentName);
                if (find != null) {
                    try {
                        obj = find.deserializeSetAndReturn(jsonParser, deserializationContext, obj);
                    } catch (Exception e4) {
                        wrapAndThrow(e4, obj, currentName, deserializationContext);
                    }
                } else {
                    handleUnknownVanilla(jsonParser, deserializationContext, obj, currentName);
                }
                currentToken = jsonParser.nextToken();
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
    public Object _deserializeFromArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonDeserializer<Object> jsonDeserializer = this._arrayDelegateDeserializer;
        if (jsonDeserializer == null && (jsonDeserializer = this._delegateDeserializer) == null) {
            CoercionAction _findCoercionFromEmptyArray = _findCoercionFromEmptyArray(deserializationContext);
            boolean isEnabled = deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS);
            if (isEnabled || _findCoercionFromEmptyArray != CoercionAction.Fail) {
                JsonToken nextToken = jsonParser.nextToken();
                JsonToken jsonToken = JsonToken.END_ARRAY;
                if (nextToken == jsonToken) {
                    int i2 = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction[_findCoercionFromEmptyArray.ordinal()];
                    if (i2 != 1) {
                        if (i2 != 2 && i2 != 3) {
                            return deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), JsonToken.START_ARRAY, jsonParser, (String) null, new Object[0]);
                        }
                        return getNullValue(deserializationContext);
                    }
                    return getEmptyValue(deserializationContext);
                } else if (isEnabled) {
                    Object deserialize = deserialize(jsonParser, deserializationContext);
                    if (jsonParser.nextToken() != jsonToken) {
                        handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                    }
                    return deserialize;
                }
            }
            return deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
        }
        Object createUsingArrayDelegate = this._valueInstantiator.createUsingArrayDelegate(deserializationContext, jsonDeserializer.deserialize(jsonParser, deserializationContext));
        if (this._injectables != null) {
            injectValues(deserializationContext, createUsingArrayDelegate);
        }
        return finishBuild(deserializationContext, createUsingArrayDelegate);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    protected Object _deserializeUsingPropertyBased(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object wrapInstantiationProblem;
        PropertyBasedCreator propertyBasedCreator = this._propertyBasedCreator;
        PropertyValueBuffer startBuilding = propertyBasedCreator.startBuilding(jsonParser, deserializationContext, this._objectIdReader);
        Class<?> activeView = this._needViewProcesing ? deserializationContext.getActiveView() : null;
        JsonToken currentToken = jsonParser.currentToken();
        TokenBuffer tokenBuffer = null;
        while (currentToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.currentName();
            jsonParser.nextToken();
            SettableBeanProperty findCreatorProperty = propertyBasedCreator.findCreatorProperty(currentName);
            if (!startBuilding.readIdProperty(currentName) || findCreatorProperty != null) {
                if (findCreatorProperty != null) {
                    if (activeView != null && !findCreatorProperty.visibleInView(activeView)) {
                        jsonParser.skipChildren();
                    } else if (startBuilding.assignParameter(findCreatorProperty, findCreatorProperty.deserialize(jsonParser, deserializationContext))) {
                        jsonParser.nextToken();
                        try {
                            Object build = propertyBasedCreator.build(deserializationContext, startBuilding);
                            if (build.getClass() != this._beanType.getRawClass()) {
                                return handlePolymorphic(jsonParser, deserializationContext, build, tokenBuffer);
                            }
                            if (tokenBuffer != null) {
                                build = handleUnknownProperties(deserializationContext, build, tokenBuffer);
                            }
                            return _deserialize(jsonParser, deserializationContext, build);
                        } catch (Exception e4) {
                            wrapAndThrow(e4, this._beanType.getRawClass(), currentName, deserializationContext);
                        }
                    } else {
                        continue;
                    }
                } else {
                    SettableBeanProperty find = this._beanProperties.find(currentName);
                    if (find != null) {
                        startBuilding.bufferProperty(find, find.deserialize(jsonParser, deserializationContext));
                    } else if (IgnorePropertiesUtil.shouldIgnore(currentName, this._ignorableProps, this._includableProps)) {
                        handleIgnoredProperty(jsonParser, deserializationContext, handledType(), currentName);
                    } else {
                        SettableAnyProperty settableAnyProperty = this._anySetter;
                        if (settableAnyProperty != null) {
                            startBuilding.bufferAnyProperty(settableAnyProperty, currentName, settableAnyProperty.deserialize(jsonParser, deserializationContext));
                        } else {
                            if (tokenBuffer == null) {
                                tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
                            }
                            tokenBuffer.writeFieldName(currentName);
                            tokenBuffer.copyCurrentStructure(jsonParser);
                        }
                    }
                }
            }
            currentToken = jsonParser.nextToken();
        }
        try {
            wrapInstantiationProblem = propertyBasedCreator.build(deserializationContext, startBuilding);
        } catch (Exception e5) {
            wrapInstantiationProblem = wrapInstantiationProblem(e5, deserializationContext);
        }
        if (tokenBuffer != null) {
            if (wrapInstantiationProblem.getClass() != this._beanType.getRawClass()) {
                return handlePolymorphic(null, deserializationContext, wrapInstantiationProblem, tokenBuffer);
            }
            return handleUnknownProperties(deserializationContext, wrapInstantiationProblem, tokenBuffer);
        }
        return wrapInstantiationProblem;
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    protected BeanDeserializerBase asArrayDeserializer() {
        return new BeanAsArrayBuilderDeserializer(this, this._targetType, this._beanProperties.getPropertiesInInsertionOrder(), this._buildMethod);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.isExpectedStartObjectToken()) {
            JsonToken nextToken = jsonParser.nextToken();
            if (this._vanillaProcessing) {
                return finishBuild(deserializationContext, vanillaDeserialize(jsonParser, deserializationContext, nextToken));
            }
            return finishBuild(deserializationContext, deserializeFromObject(jsonParser, deserializationContext));
        }
        switch (jsonParser.currentTokenId()) {
            case 2:
            case 5:
                return finishBuild(deserializationContext, deserializeFromObject(jsonParser, deserializationContext));
            case 3:
                return _deserializeFromArray(jsonParser, deserializationContext);
            case 4:
            case 11:
            default:
                return deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
            case 6:
                return finishBuild(deserializationContext, deserializeFromString(jsonParser, deserializationContext));
            case 7:
                return finishBuild(deserializationContext, deserializeFromNumber(jsonParser, deserializationContext));
            case 8:
                return finishBuild(deserializationContext, deserializeFromDouble(jsonParser, deserializationContext));
            case 9:
            case 10:
                return finishBuild(deserializationContext, deserializeFromBoolean(jsonParser, deserializationContext));
            case 12:
                return jsonParser.getEmbeddedObject();
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public Object deserializeFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Class<?> activeView;
        if (this._nonStandardCreation) {
            if (this._unwrappedPropertyHandler != null) {
                return deserializeWithUnwrapped(jsonParser, deserializationContext);
            }
            if (this._externalTypeIdHandler != null) {
                return deserializeWithExternalTypeId(jsonParser, deserializationContext);
            }
            return deserializeFromObjectUsingNonDefault(jsonParser, deserializationContext);
        }
        Object createUsingDefault = this._valueInstantiator.createUsingDefault(deserializationContext);
        if (this._injectables != null) {
            injectValues(deserializationContext, createUsingDefault);
        }
        if (this._needViewProcesing && (activeView = deserializationContext.getActiveView()) != null) {
            return deserializeWithView(jsonParser, deserializationContext, createUsingDefault, activeView);
        }
        while (jsonParser.currentToken() == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.currentName();
            jsonParser.nextToken();
            SettableBeanProperty find = this._beanProperties.find(currentName);
            if (find != null) {
                try {
                    createUsingDefault = find.deserializeSetAndReturn(jsonParser, deserializationContext, createUsingDefault);
                } catch (Exception e4) {
                    wrapAndThrow(e4, createUsingDefault, currentName, deserializationContext);
                }
            } else {
                handleUnknownVanilla(jsonParser, deserializationContext, createUsingDefault, currentName);
            }
            jsonParser.nextToken();
        }
        return createUsingDefault;
    }

    protected Object deserializeUsingPropertyBasedWithExternalTypeId(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JavaType javaType = this._targetType;
        return deserializationContext.reportBadDefinition(javaType, String.format("Deserialization (of %s) with Builder, External type id, @JsonCreator not yet implemented", javaType));
    }

    protected Object deserializeUsingPropertyBasedWithUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        PropertyBasedCreator propertyBasedCreator = this._propertyBasedCreator;
        PropertyValueBuffer startBuilding = propertyBasedCreator.startBuilding(jsonParser, deserializationContext, this._objectIdReader);
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        tokenBuffer.writeStartObject();
        JsonToken currentToken = jsonParser.currentToken();
        while (currentToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.currentName();
            jsonParser.nextToken();
            SettableBeanProperty findCreatorProperty = propertyBasedCreator.findCreatorProperty(currentName);
            if (!startBuilding.readIdProperty(currentName) || findCreatorProperty != null) {
                if (findCreatorProperty != null) {
                    if (startBuilding.assignParameter(findCreatorProperty, findCreatorProperty.deserialize(jsonParser, deserializationContext))) {
                        jsonParser.nextToken();
                        try {
                            Object build = propertyBasedCreator.build(deserializationContext, startBuilding);
                            if (build.getClass() != this._beanType.getRawClass()) {
                                return handlePolymorphic(jsonParser, deserializationContext, build, tokenBuffer);
                            }
                            return deserializeWithUnwrapped(jsonParser, deserializationContext, build, tokenBuffer);
                        } catch (Exception e4) {
                            wrapAndThrow(e4, this._beanType.getRawClass(), currentName, deserializationContext);
                        }
                    } else {
                        continue;
                    }
                } else {
                    SettableBeanProperty find = this._beanProperties.find(currentName);
                    if (find != null) {
                        startBuilding.bufferProperty(find, find.deserialize(jsonParser, deserializationContext));
                    } else if (IgnorePropertiesUtil.shouldIgnore(currentName, this._ignorableProps, this._includableProps)) {
                        handleIgnoredProperty(jsonParser, deserializationContext, handledType(), currentName);
                    } else {
                        tokenBuffer.writeFieldName(currentName);
                        tokenBuffer.copyCurrentStructure(jsonParser);
                        SettableAnyProperty settableAnyProperty = this._anySetter;
                        if (settableAnyProperty != null) {
                            startBuilding.bufferAnyProperty(settableAnyProperty, currentName, settableAnyProperty.deserialize(jsonParser, deserializationContext));
                        }
                    }
                }
            }
            currentToken = jsonParser.nextToken();
        }
        tokenBuffer.writeEndObject();
        try {
            return this._unwrappedPropertyHandler.processUnwrapped(jsonParser, deserializationContext, propertyBasedCreator.build(deserializationContext, startBuilding), tokenBuffer);
        } catch (Exception e5) {
            return wrapInstantiationProblem(e5, deserializationContext);
        }
    }

    protected Object deserializeWithExternalTypeId(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this._propertyBasedCreator != null) {
            return deserializeUsingPropertyBasedWithExternalTypeId(jsonParser, deserializationContext);
        }
        return deserializeWithExternalTypeId(jsonParser, deserializationContext, this._valueInstantiator.createUsingDefault(deserializationContext));
    }

    protected Object deserializeWithUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonDeserializer<Object> jsonDeserializer = this._delegateDeserializer;
        if (jsonDeserializer != null) {
            return this._valueInstantiator.createUsingDelegate(deserializationContext, jsonDeserializer.deserialize(jsonParser, deserializationContext));
        }
        if (this._propertyBasedCreator != null) {
            return deserializeUsingPropertyBasedWithUnwrapped(jsonParser, deserializationContext);
        }
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        tokenBuffer.writeStartObject();
        Object createUsingDefault = this._valueInstantiator.createUsingDefault(deserializationContext);
        if (this._injectables != null) {
            injectValues(deserializationContext, createUsingDefault);
        }
        Class<?> activeView = this._needViewProcesing ? deserializationContext.getActiveView() : null;
        while (jsonParser.currentToken() == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.currentName();
            jsonParser.nextToken();
            SettableBeanProperty find = this._beanProperties.find(currentName);
            if (find != null) {
                if (activeView != null && !find.visibleInView(activeView)) {
                    jsonParser.skipChildren();
                } else {
                    try {
                        createUsingDefault = find.deserializeSetAndReturn(jsonParser, deserializationContext, createUsingDefault);
                    } catch (Exception e4) {
                        wrapAndThrow(e4, createUsingDefault, currentName, deserializationContext);
                    }
                }
            } else if (IgnorePropertiesUtil.shouldIgnore(currentName, this._ignorableProps, this._includableProps)) {
                handleIgnoredProperty(jsonParser, deserializationContext, createUsingDefault, currentName);
            } else {
                tokenBuffer.writeFieldName(currentName);
                tokenBuffer.copyCurrentStructure(jsonParser);
                SettableAnyProperty settableAnyProperty = this._anySetter;
                if (settableAnyProperty != null) {
                    try {
                        settableAnyProperty.deserializeAndSet(jsonParser, deserializationContext, createUsingDefault, currentName);
                    } catch (Exception e5) {
                        wrapAndThrow(e5, createUsingDefault, currentName, deserializationContext);
                    }
                }
            }
            jsonParser.nextToken();
        }
        tokenBuffer.writeEndObject();
        return this._unwrappedPropertyHandler.processUnwrapped(jsonParser, deserializationContext, createUsingDefault, tokenBuffer);
    }

    protected final Object deserializeWithView(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, Class<?> cls) throws IOException {
        JsonToken currentToken = jsonParser.currentToken();
        while (currentToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.currentName();
            jsonParser.nextToken();
            SettableBeanProperty find = this._beanProperties.find(currentName);
            if (find != null) {
                if (!find.visibleInView(cls)) {
                    jsonParser.skipChildren();
                } else {
                    try {
                        obj = find.deserializeSetAndReturn(jsonParser, deserializationContext, obj);
                    } catch (Exception e4) {
                        wrapAndThrow(e4, obj, currentName, deserializationContext);
                    }
                }
            } else {
                handleUnknownVanilla(jsonParser, deserializationContext, obj, currentName);
            }
            currentToken = jsonParser.nextToken();
        }
        return obj;
    }

    protected Object finishBuild(DeserializationContext deserializationContext, Object obj) throws IOException {
        AnnotatedMethod annotatedMethod = this._buildMethod;
        if (annotatedMethod == null) {
            return obj;
        }
        try {
            return annotatedMethod.getMember().invoke(obj, null);
        } catch (Exception e4) {
            return wrapInstantiationProblem(e4, deserializationContext);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase, com.fasterxml.jackson.databind.JsonDeserializer
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return Boolean.FALSE;
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase, com.fasterxml.jackson.databind.JsonDeserializer
    public JsonDeserializer<Object> unwrappingDeserializer(NameTransformer nameTransformer) {
        return new BuilderBasedDeserializer(this, nameTransformer);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase withBeanProperties(BeanPropertyMap beanPropertyMap) {
        return new BuilderBasedDeserializer(this, beanPropertyMap);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase withByNameInclusion(Set<String> set, Set<String> set2) {
        return new BuilderBasedDeserializer(this, set, set2);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase withIgnoreAllUnknown(boolean z3) {
        return new BuilderBasedDeserializer(this, z3);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase withObjectIdReader(ObjectIdReader objectIdReader) {
        return new BuilderBasedDeserializer(this, objectIdReader);
    }

    public BuilderBasedDeserializer(BeanDeserializerBuilder beanDeserializerBuilder, BeanDescription beanDescription, JavaType javaType, BeanPropertyMap beanPropertyMap, Map<String, SettableBeanProperty> map, Set<String> set, boolean z3, Set<String> set2, boolean z4) {
        super(beanDeserializerBuilder, beanDescription, beanPropertyMap, map, set, z3, set2, z4);
        this._targetType = javaType;
        this._buildMethod = beanDeserializerBuilder.getBuildMethod();
        if (this._objectIdReader == null) {
            return;
        }
        throw new IllegalArgumentException("Cannot use Object Id with Builder-based deserialization (type " + beanDescription.getType() + ")");
    }

    protected Object deserializeWithExternalTypeId(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Class<?> activeView = this._needViewProcesing ? deserializationContext.getActiveView() : null;
        ExternalTypeHandler start = this._externalTypeIdHandler.start();
        JsonToken currentToken = jsonParser.currentToken();
        while (currentToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.currentName();
            JsonToken nextToken = jsonParser.nextToken();
            SettableBeanProperty find = this._beanProperties.find(currentName);
            if (find != null) {
                if (nextToken.isScalarValue()) {
                    start.handleTypePropertyValue(jsonParser, deserializationContext, currentName, obj);
                }
                if (activeView != null && !find.visibleInView(activeView)) {
                    jsonParser.skipChildren();
                } else {
                    try {
                        obj = find.deserializeSetAndReturn(jsonParser, deserializationContext, obj);
                    } catch (Exception e4) {
                        wrapAndThrow(e4, obj, currentName, deserializationContext);
                    }
                }
            } else if (IgnorePropertiesUtil.shouldIgnore(currentName, this._ignorableProps, this._includableProps)) {
                handleIgnoredProperty(jsonParser, deserializationContext, obj, currentName);
            } else if (!start.handlePropertyValue(jsonParser, deserializationContext, currentName, obj)) {
                SettableAnyProperty settableAnyProperty = this._anySetter;
                if (settableAnyProperty != null) {
                    try {
                        settableAnyProperty.deserializeAndSet(jsonParser, deserializationContext, obj, currentName);
                    } catch (Exception e5) {
                        wrapAndThrow(e5, obj, currentName, deserializationContext);
                    }
                } else {
                    handleUnknownProperty(jsonParser, deserializationContext, obj, currentName);
                }
            }
            currentToken = jsonParser.nextToken();
        }
        return start.complete(jsonParser, deserializationContext, obj);
    }

    @Deprecated
    public BuilderBasedDeserializer(BeanDeserializerBuilder beanDeserializerBuilder, BeanDescription beanDescription, BeanPropertyMap beanPropertyMap, Map<String, SettableBeanProperty> map, Set<String> set, boolean z3, boolean z4) {
        this(beanDeserializerBuilder, beanDescription, beanDescription.getType(), beanPropertyMap, map, set, z3, z4);
    }

    protected BuilderBasedDeserializer(BuilderBasedDeserializer builderBasedDeserializer) {
        this(builderBasedDeserializer, builderBasedDeserializer._ignoreAllUnknown);
    }

    protected BuilderBasedDeserializer(BuilderBasedDeserializer builderBasedDeserializer, boolean z3) {
        super(builderBasedDeserializer, z3);
        this._buildMethod = builderBasedDeserializer._buildMethod;
        this._targetType = builderBasedDeserializer._targetType;
    }

    protected BuilderBasedDeserializer(BuilderBasedDeserializer builderBasedDeserializer, NameTransformer nameTransformer) {
        super(builderBasedDeserializer, nameTransformer);
        this._buildMethod = builderBasedDeserializer._buildMethod;
        this._targetType = builderBasedDeserializer._targetType;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        JavaType javaType = this._targetType;
        Class<?> handledType = handledType();
        Class<?> cls = obj.getClass();
        if (handledType.isAssignableFrom(cls)) {
            return deserializationContext.reportBadDefinition(javaType, String.format("Deserialization of %s by passing existing Builder (%s) instance not supported", javaType, handledType.getName()));
        }
        return deserializationContext.reportBadDefinition(javaType, String.format("Deserialization of %s by passing existing instance (of %s) not supported", javaType, cls.getName()));
    }

    public BuilderBasedDeserializer(BuilderBasedDeserializer builderBasedDeserializer, ObjectIdReader objectIdReader) {
        super(builderBasedDeserializer, objectIdReader);
        this._buildMethod = builderBasedDeserializer._buildMethod;
        this._targetType = builderBasedDeserializer._targetType;
    }

    public BuilderBasedDeserializer(BuilderBasedDeserializer builderBasedDeserializer, Set<String> set) {
        this(builderBasedDeserializer, set, builderBasedDeserializer._includableProps);
    }

    public BuilderBasedDeserializer(BuilderBasedDeserializer builderBasedDeserializer, Set<String> set, Set<String> set2) {
        super(builderBasedDeserializer, set, set2);
        this._buildMethod = builderBasedDeserializer._buildMethod;
        this._targetType = builderBasedDeserializer._targetType;
    }

    public BuilderBasedDeserializer(BuilderBasedDeserializer builderBasedDeserializer, BeanPropertyMap beanPropertyMap) {
        super(builderBasedDeserializer, beanPropertyMap);
        this._buildMethod = builderBasedDeserializer._buildMethod;
        this._targetType = builderBasedDeserializer._targetType;
    }

    protected Object deserializeWithUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, TokenBuffer tokenBuffer) throws IOException {
        Class<?> activeView = this._needViewProcesing ? deserializationContext.getActiveView() : null;
        JsonToken currentToken = jsonParser.currentToken();
        while (currentToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.currentName();
            SettableBeanProperty find = this._beanProperties.find(currentName);
            jsonParser.nextToken();
            if (find != null) {
                if (activeView != null && !find.visibleInView(activeView)) {
                    jsonParser.skipChildren();
                } else {
                    try {
                        obj = find.deserializeSetAndReturn(jsonParser, deserializationContext, obj);
                    } catch (Exception e4) {
                        wrapAndThrow(e4, obj, currentName, deserializationContext);
                    }
                }
            } else if (IgnorePropertiesUtil.shouldIgnore(currentName, this._ignorableProps, this._includableProps)) {
                handleIgnoredProperty(jsonParser, deserializationContext, obj, currentName);
            } else {
                tokenBuffer.writeFieldName(currentName);
                tokenBuffer.copyCurrentStructure(jsonParser);
                SettableAnyProperty settableAnyProperty = this._anySetter;
                if (settableAnyProperty != null) {
                    settableAnyProperty.deserializeAndSet(jsonParser, deserializationContext, obj, currentName);
                }
            }
            currentToken = jsonParser.nextToken();
        }
        tokenBuffer.writeEndObject();
        return this._unwrappedPropertyHandler.processUnwrapped(jsonParser, deserializationContext, obj, tokenBuffer);
    }
}
