package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.type.SimpleType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes2.dex */
public class BasicClassIntrospector extends ClassIntrospector implements Serializable {
    protected static final BasicBeanDescription BOOLEAN_DESC;
    protected static final BasicBeanDescription INT_DESC;
    protected static final BasicBeanDescription LONG_DESC;
    protected static final BasicBeanDescription OBJECT_DESC;
    private static final long serialVersionUID = 2;
    private static final Class<?> CLS_OBJECT = Object.class;
    private static final Class<?> CLS_STRING = String.class;
    private static final Class<?> CLS_JSON_NODE = JsonNode.class;
    protected static final BasicBeanDescription STRING_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(String.class), AnnotatedClassResolver.createPrimordial(String.class));

    static {
        Class cls = Boolean.TYPE;
        BOOLEAN_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(cls), AnnotatedClassResolver.createPrimordial(cls));
        Class cls2 = Integer.TYPE;
        INT_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(cls2), AnnotatedClassResolver.createPrimordial(cls2));
        Class cls3 = Long.TYPE;
        LONG_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(cls3), AnnotatedClassResolver.createPrimordial(cls3));
        OBJECT_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(Object.class), AnnotatedClassResolver.createPrimordial(Object.class));
    }

    protected BasicBeanDescription _findStdJdkCollectionDesc(MapperConfig<?> mapperConfig, JavaType javaType) {
        if (_isStdJDKCollection(javaType)) {
            return BasicBeanDescription.forOtherUse(mapperConfig, javaType, _resolveAnnotatedClass(mapperConfig, javaType, mapperConfig));
        }
        return null;
    }

    protected BasicBeanDescription _findStdTypeDesc(MapperConfig<?> mapperConfig, JavaType javaType) {
        Class<?> rawClass = javaType.getRawClass();
        if (rawClass.isPrimitive()) {
            if (rawClass == Integer.TYPE) {
                return INT_DESC;
            }
            if (rawClass == Long.TYPE) {
                return LONG_DESC;
            }
            if (rawClass == Boolean.TYPE) {
                return BOOLEAN_DESC;
            }
            return null;
        } else if (ClassUtil.isJDKClass(rawClass)) {
            if (rawClass == CLS_OBJECT) {
                return OBJECT_DESC;
            }
            if (rawClass == CLS_STRING) {
                return STRING_DESC;
            }
            if (rawClass == Integer.class) {
                return INT_DESC;
            }
            if (rawClass == Long.class) {
                return LONG_DESC;
            }
            if (rawClass == Boolean.class) {
                return BOOLEAN_DESC;
            }
            return null;
        } else if (CLS_JSON_NODE.isAssignableFrom(rawClass)) {
            return BasicBeanDescription.forOtherUse(mapperConfig, javaType, AnnotatedClassResolver.createPrimordial(rawClass));
        } else {
            return null;
        }
    }

    protected boolean _isStdJDKCollection(JavaType javaType) {
        if (javaType.isContainerType() && !javaType.isArrayType()) {
            Class<?> rawClass = javaType.getRawClass();
            if (ClassUtil.isJDKClass(rawClass) && (Collection.class.isAssignableFrom(rawClass) || Map.class.isAssignableFrom(rawClass))) {
                return true;
            }
        }
        return false;
    }

    protected AnnotatedClass _resolveAnnotatedClass(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        return AnnotatedClassResolver.resolve(mapperConfig, javaType, mixInResolver);
    }

    protected AnnotatedClass _resolveAnnotatedWithoutSuperTypes(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        return AnnotatedClassResolver.resolveWithoutSuperTypes(mapperConfig, javaType, mixInResolver);
    }

    protected POJOPropertiesCollector collectProperties(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver, boolean z3) {
        AccessorNamingStrategy forPOJO;
        AnnotatedClass _resolveAnnotatedClass = _resolveAnnotatedClass(mapperConfig, javaType, mixInResolver);
        if (javaType.isRecordType()) {
            forPOJO = mapperConfig.getAccessorNaming().forRecord(mapperConfig, _resolveAnnotatedClass);
        } else {
            forPOJO = mapperConfig.getAccessorNaming().forPOJO(mapperConfig, _resolveAnnotatedClass);
        }
        return constructPropertyCollector(mapperConfig, _resolveAnnotatedClass, javaType, z3, forPOJO);
    }

    protected POJOPropertiesCollector collectPropertiesWithBuilder(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver, BeanDescription beanDescription, boolean z3) {
        AnnotatedClass _resolveAnnotatedClass = _resolveAnnotatedClass(mapperConfig, javaType, mixInResolver);
        return constructPropertyCollector(mapperConfig, _resolveAnnotatedClass, javaType, z3, mapperConfig.getAccessorNaming().forBuilder(mapperConfig, _resolveAnnotatedClass, beanDescription));
    }

    protected POJOPropertiesCollector constructPropertyCollector(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, JavaType javaType, boolean z3, AccessorNamingStrategy accessorNamingStrategy) {
        return new POJOPropertiesCollector(mapperConfig, z3, javaType, annotatedClass, accessorNamingStrategy);
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public ClassIntrospector copy() {
        return new BasicClassIntrospector();
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public /* bridge */ /* synthetic */ BeanDescription forClassAnnotations(MapperConfig mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        return forClassAnnotations((MapperConfig<?>) mapperConfig, javaType, mixInResolver);
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public /* bridge */ /* synthetic */ BeanDescription forDirectClassAnnotations(MapperConfig mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        return forDirectClassAnnotations((MapperConfig<?>) mapperConfig, javaType, mixInResolver);
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forClassAnnotations(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription _findStdTypeDesc = _findStdTypeDesc(mapperConfig, javaType);
        return _findStdTypeDesc == null ? BasicBeanDescription.forOtherUse(mapperConfig, javaType, _resolveAnnotatedClass(mapperConfig, javaType, mixInResolver)) : _findStdTypeDesc;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forCreation(DeserializationConfig deserializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription _findStdTypeDesc = _findStdTypeDesc(deserializationConfig, javaType);
        if (_findStdTypeDesc == null) {
            BasicBeanDescription _findStdJdkCollectionDesc = _findStdJdkCollectionDesc(deserializationConfig, javaType);
            return _findStdJdkCollectionDesc == null ? BasicBeanDescription.forDeserialization(collectProperties(deserializationConfig, javaType, mixInResolver, false)) : _findStdJdkCollectionDesc;
        }
        return _findStdTypeDesc;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forDeserialization(DeserializationConfig deserializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription _findStdTypeDesc = _findStdTypeDesc(deserializationConfig, javaType);
        if (_findStdTypeDesc == null) {
            BasicBeanDescription _findStdJdkCollectionDesc = _findStdJdkCollectionDesc(deserializationConfig, javaType);
            return _findStdJdkCollectionDesc == null ? BasicBeanDescription.forDeserialization(collectProperties(deserializationConfig, javaType, mixInResolver, false)) : _findStdJdkCollectionDesc;
        }
        return _findStdTypeDesc;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forDirectClassAnnotations(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription _findStdTypeDesc = _findStdTypeDesc(mapperConfig, javaType);
        return _findStdTypeDesc == null ? BasicBeanDescription.forOtherUse(mapperConfig, javaType, _resolveAnnotatedWithoutSuperTypes(mapperConfig, javaType, mixInResolver)) : _findStdTypeDesc;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forSerialization(SerializationConfig serializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription _findStdTypeDesc = _findStdTypeDesc(serializationConfig, javaType);
        if (_findStdTypeDesc == null) {
            BasicBeanDescription _findStdJdkCollectionDesc = _findStdJdkCollectionDesc(serializationConfig, javaType);
            return _findStdJdkCollectionDesc == null ? BasicBeanDescription.forSerialization(collectProperties(serializationConfig, javaType, mixInResolver, true)) : _findStdJdkCollectionDesc;
        }
        return _findStdTypeDesc;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forDeserializationWithBuilder(DeserializationConfig deserializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver, BeanDescription beanDescription) {
        return BasicBeanDescription.forDeserialization(collectPropertiesWithBuilder(deserializationConfig, javaType, mixInResolver, beanDescription, false));
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    @Deprecated
    public BasicBeanDescription forDeserializationWithBuilder(DeserializationConfig deserializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        return BasicBeanDescription.forDeserialization(collectPropertiesWithBuilder(deserializationConfig, javaType, mixInResolver, null, false));
    }
}
