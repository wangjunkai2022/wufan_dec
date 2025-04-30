package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.BeanUtil;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
/* loaded from: classes2.dex */
public class PropertyBuilder {
    private static final Object NO_DEFAULT_MARKER = Boolean.FALSE;
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final BeanDescription _beanDesc;
    protected final SerializationConfig _config;
    protected Object _defaultBean;
    protected final JsonInclude.Value _defaultInclusion;
    protected final boolean _useRealPropertyDefaults;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.fasterxml.jackson.databind.ser.PropertyBuilder$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include;

        static {
            int[] iArr = new int[JsonInclude.Include.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include = iArr;
            try {
                iArr[JsonInclude.Include.NON_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_ABSENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.CUSTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.NON_NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[JsonInclude.Include.ALWAYS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public PropertyBuilder(SerializationConfig serializationConfig, BeanDescription beanDescription) {
        this._config = serializationConfig;
        this._beanDesc = beanDescription;
        JsonInclude.Value merge = JsonInclude.Value.merge(beanDescription.findPropertyInclusion(JsonInclude.Value.empty()), serializationConfig.getDefaultPropertyInclusion(beanDescription.getBeanClass(), JsonInclude.Value.empty()));
        this._defaultInclusion = JsonInclude.Value.merge(serializationConfig.getDefaultPropertyInclusion(), merge);
        this._useRealPropertyDefaults = merge.getValueInclusion() == JsonInclude.Include.NON_DEFAULT;
        this._annotationIntrospector = serializationConfig.getAnnotationIntrospector();
    }

    protected BeanPropertyWriter _constructPropertyWriter(BeanPropertyDefinition beanPropertyDefinition, AnnotatedMember annotatedMember, Annotations annotations, JavaType javaType, JsonSerializer<?> jsonSerializer, TypeSerializer typeSerializer, JavaType javaType2, boolean z3, Object obj, Class<?>[] clsArr) throws JsonMappingException {
        return new BeanPropertyWriter(beanPropertyDefinition, annotatedMember, annotations, javaType, jsonSerializer, typeSerializer, javaType2, z3, obj, clsArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r3 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.Object _throwWrapped(java.lang.Exception r3, java.lang.String r4, java.lang.Object r5) {
        /*
            r2 = this;
        L0:
            java.lang.Throwable r0 = r3.getCause()
            if (r0 == 0) goto Lb
            java.lang.Throwable r3 = r3.getCause()
            goto L0
        Lb:
            com.fasterxml.jackson.databind.util.ClassUtil.throwIfError(r3)
            com.fasterxml.jackson.databind.util.ClassUtil.throwIfRTE(r3)
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Failed to get property '"
            r0.append(r1)
            r0.append(r4)
            java.lang.String r4 = "' of default "
            r0.append(r4)
            java.lang.Class r4 = r5.getClass()
            java.lang.String r4 = r4.getName()
            r0.append(r4)
            java.lang.String r4 = " instance"
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            r3.<init>(r4)
            goto L3e
        L3d:
            throw r3
        L3e:
            goto L3d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.PropertyBuilder._throwWrapped(java.lang.Exception, java.lang.String, java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanPropertyWriter buildWriter(SerializerProvider serializerProvider, BeanPropertyDefinition beanPropertyDefinition, JavaType javaType, JsonSerializer<?> jsonSerializer, TypeSerializer typeSerializer, TypeSerializer typeSerializer2, AnnotatedMember annotatedMember, boolean z3) throws JsonMappingException {
        JavaType javaType2;
        Object arrayComparator;
        Object defaultBean;
        Object obj;
        boolean z4;
        try {
            JavaType findSerializationType = findSerializationType(annotatedMember, z3, javaType);
            if (typeSerializer2 != null) {
                if (findSerializationType == null) {
                    findSerializationType = javaType;
                }
                if (findSerializationType.getContentType() == null) {
                    BeanDescription beanDescription = this._beanDesc;
                    serializerProvider.reportBadPropertyDefinition(beanDescription, beanPropertyDefinition, "serialization type " + findSerializationType + " has no content", new Object[0]);
                }
                JavaType withContentTypeHandler = findSerializationType.withContentTypeHandler(typeSerializer2);
                withContentTypeHandler.getContentType();
                javaType2 = withContentTypeHandler;
            } else {
                javaType2 = findSerializationType;
            }
            Object obj2 = null;
            JavaType javaType3 = javaType2 == null ? javaType : javaType2;
            AnnotatedMember accessor = beanPropertyDefinition.getAccessor();
            if (accessor == null) {
                return (BeanPropertyWriter) serializerProvider.reportBadPropertyDefinition(this._beanDesc, beanPropertyDefinition, "could not determine property type", new Object[0]);
            }
            JsonInclude.Value withOverrides = this._config.getDefaultInclusion(javaType3.getRawClass(), accessor.getRawType(), this._defaultInclusion).withOverrides(beanPropertyDefinition.findInclusion());
            JsonInclude.Include valueInclusion = withOverrides.getValueInclusion();
            if (valueInclusion == JsonInclude.Include.USE_DEFAULTS) {
                valueInclusion = JsonInclude.Include.ALWAYS;
            }
            int i2 = AnonymousClass1.$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[valueInclusion.ordinal()];
            if (i2 != 1) {
                if (i2 == 2) {
                    if (javaType3.isReferenceType()) {
                        arrayComparator = BeanPropertyWriter.MARKER_FOR_EMPTY;
                    }
                    obj = obj2;
                    z4 = true;
                } else if (i2 != 3) {
                    if (i2 != 4) {
                        r1 = i2 == 5;
                        SerializationFeature serializationFeature = SerializationFeature.WRITE_EMPTY_JSON_ARRAYS;
                        if (javaType3.isContainerType() && !this._config.isEnabled(serializationFeature)) {
                            arrayComparator = BeanPropertyWriter.MARKER_FOR_EMPTY;
                        }
                        z4 = r1;
                        obj = obj2;
                    } else {
                        arrayComparator = serializerProvider.includeFilterInstance(beanPropertyDefinition, withOverrides.getValueFilter());
                        if (arrayComparator != null) {
                            r1 = serializerProvider.includeFilterSuppressNulls(arrayComparator);
                        }
                    }
                    obj = arrayComparator;
                    z4 = r1;
                } else {
                    arrayComparator = BeanPropertyWriter.MARKER_FOR_EMPTY;
                }
                obj = arrayComparator;
                z4 = true;
            } else {
                if (this._useRealPropertyDefaults && (defaultBean = getDefaultBean()) != null) {
                    if (serializerProvider.isEnabled(MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
                        annotatedMember.fixAccess(this._config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                    }
                    try {
                        obj2 = annotatedMember.getValue(defaultBean);
                    } catch (Exception e4) {
                        _throwWrapped(e4, beanPropertyDefinition.getName(), defaultBean);
                    }
                } else {
                    obj2 = BeanUtil.getDefaultValue(javaType3);
                    r1 = true;
                }
                if (obj2 != null) {
                    if (obj2.getClass().isArray()) {
                        arrayComparator = ArrayBuilders.getArrayComparator(obj2);
                        obj = arrayComparator;
                        z4 = r1;
                    }
                    z4 = r1;
                    obj = obj2;
                }
                obj = obj2;
                z4 = true;
            }
            Class<?>[] findViews = beanPropertyDefinition.findViews();
            if (findViews == null) {
                findViews = this._beanDesc.findDefaultViews();
            }
            BeanPropertyWriter _constructPropertyWriter = _constructPropertyWriter(beanPropertyDefinition, annotatedMember, this._beanDesc.getClassAnnotations(), javaType, jsonSerializer, typeSerializer, javaType2, z4, obj, findViews);
            Object findNullSerializer = this._annotationIntrospector.findNullSerializer(annotatedMember);
            if (findNullSerializer != null) {
                _constructPropertyWriter.assignNullSerializer(serializerProvider.serializerInstance(annotatedMember, findNullSerializer));
            }
            NameTransformer findUnwrappingNameTransformer = this._annotationIntrospector.findUnwrappingNameTransformer(annotatedMember);
            return findUnwrappingNameTransformer != null ? _constructPropertyWriter.unwrappingWriter(findUnwrappingNameTransformer) : _constructPropertyWriter;
        } catch (JsonMappingException e5) {
            if (beanPropertyDefinition == null) {
                return (BeanPropertyWriter) serializerProvider.reportBadDefinition(javaType, ClassUtil.exceptionMessage(e5));
            }
            return (BeanPropertyWriter) serializerProvider.reportBadPropertyDefinition(this._beanDesc, beanPropertyDefinition, ClassUtil.exceptionMessage(e5), new Object[0]);
        }
    }

    protected JavaType findSerializationType(Annotated annotated, boolean z3, JavaType javaType) throws JsonMappingException {
        JavaType refineSerializationType = this._annotationIntrospector.refineSerializationType(this._config, annotated, javaType);
        if (refineSerializationType != javaType) {
            Class<?> rawClass = refineSerializationType.getRawClass();
            Class<?> rawClass2 = javaType.getRawClass();
            if (!rawClass.isAssignableFrom(rawClass2) && !rawClass2.isAssignableFrom(rawClass)) {
                throw new IllegalArgumentException("Illegal concrete-type annotation for method '" + annotated.getName() + "': class " + rawClass.getName() + " not a super-type of (declared) class " + rawClass2.getName());
            }
            javaType = refineSerializationType;
            z3 = true;
        }
        JsonSerialize.Typing findSerializationTyping = this._annotationIntrospector.findSerializationTyping(annotated);
        if (findSerializationTyping != null && findSerializationTyping != JsonSerialize.Typing.DEFAULT_TYPING) {
            z3 = findSerializationTyping == JsonSerialize.Typing.STATIC;
        }
        if (z3) {
            return javaType.withStaticTyping();
        }
        return null;
    }

    public Annotations getClassAnnotations() {
        return this._beanDesc.getClassAnnotations();
    }

    protected Object getDefaultBean() {
        Object obj = this._defaultBean;
        if (obj == null) {
            obj = this._beanDesc.instantiateBean(this._config.canOverrideAccessModifiers());
            if (obj == null) {
                obj = NO_DEFAULT_MARKER;
            }
            this._defaultBean = obj;
        }
        if (obj == NO_DEFAULT_MARKER) {
            return null;
        }
        return this._defaultBean;
    }

    @Deprecated
    protected Object getDefaultValue(JavaType javaType) {
        return BeanUtil.getDefaultValue(javaType);
    }

    @Deprecated
    protected Object getPropertyDefaultValue(String str, AnnotatedMember annotatedMember, JavaType javaType) {
        Object defaultBean = getDefaultBean();
        if (defaultBean == null) {
            return getDefaultValue(javaType);
        }
        try {
            return annotatedMember.getValue(defaultBean);
        } catch (Exception e4) {
            return _throwWrapped(e4, str, defaultBean);
        }
    }
}
