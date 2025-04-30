package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy;
import com.fasterxml.jackson.databind.jdk14.JDK14Util;
import com.umeng.analytics.pro.ai;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class DefaultAccessorNamingStrategy extends AccessorNamingStrategy {
    protected final BaseNameValidator _baseNameValidator;
    protected final MapperConfig<?> _config;
    protected final AnnotatedClass _forClass;
    protected final String _getterPrefix;
    protected final String _isGetterPrefix;
    protected final String _mutatorPrefix;
    protected final boolean _stdBeanNaming;

    /* loaded from: classes2.dex */
    public interface BaseNameValidator {
        boolean accept(char c4, String str, int i2);
    }

    /* loaded from: classes2.dex */
    public static class FirstCharBasedValidator implements BaseNameValidator {
        private final boolean _allowLowerCaseFirstChar;
        private final boolean _allowNonLetterFirstChar;

        protected FirstCharBasedValidator(boolean z3, boolean z4) {
            this._allowLowerCaseFirstChar = z3;
            this._allowNonLetterFirstChar = z4;
        }

        public static BaseNameValidator forFirstNameRule(boolean z3, boolean z4) {
            if (z3 || z4) {
                return new FirstCharBasedValidator(z3, z4);
            }
            return null;
        }

        @Override // com.fasterxml.jackson.databind.introspect.DefaultAccessorNamingStrategy.BaseNameValidator
        public boolean accept(char c4, String str, int i2) {
            if (Character.isLetter(c4)) {
                return this._allowLowerCaseFirstChar || !Character.isLowerCase(c4);
            }
            return this._allowNonLetterFirstChar;
        }
    }

    /* loaded from: classes2.dex */
    public static class Provider extends AccessorNamingStrategy.Provider implements Serializable {
        private static final long serialVersionUID = 1;
        protected final BaseNameValidator _baseNameValidator;
        protected final String _getterPrefix;
        protected final String _isGetterPrefix;
        protected final String _setterPrefix;
        protected final String _withPrefix;

        public Provider() {
            this("set", JsonPOJOBuilder.DEFAULT_WITH_PREFIX, "get", ai.ae, (BaseNameValidator) null);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy.Provider
        public AccessorNamingStrategy forBuilder(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, BeanDescription beanDescription) {
            AnnotationIntrospector annotationIntrospector = mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null;
            JsonPOJOBuilder.Value findPOJOBuilderConfig = annotationIntrospector != null ? annotationIntrospector.findPOJOBuilderConfig(annotatedClass) : null;
            return new DefaultAccessorNamingStrategy(mapperConfig, annotatedClass, findPOJOBuilderConfig == null ? this._withPrefix : findPOJOBuilderConfig.withPrefix, this._getterPrefix, this._isGetterPrefix, this._baseNameValidator);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy.Provider
        public AccessorNamingStrategy forPOJO(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass) {
            return new DefaultAccessorNamingStrategy(mapperConfig, annotatedClass, this._setterPrefix, this._getterPrefix, this._isGetterPrefix, this._baseNameValidator);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy.Provider
        public AccessorNamingStrategy forRecord(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass) {
            return new RecordNaming(mapperConfig, annotatedClass);
        }

        public Provider withBaseNameValidator(BaseNameValidator baseNameValidator) {
            return new Provider(this, baseNameValidator);
        }

        public Provider withBuilderPrefix(String str) {
            return new Provider(this, this._setterPrefix, str, this._getterPrefix, this._isGetterPrefix);
        }

        public Provider withFirstCharAcceptance(boolean z3, boolean z4) {
            return withBaseNameValidator(FirstCharBasedValidator.forFirstNameRule(z3, z4));
        }

        public Provider withGetterPrefix(String str) {
            return new Provider(this, this._setterPrefix, this._withPrefix, str, this._isGetterPrefix);
        }

        public Provider withIsGetterPrefix(String str) {
            return new Provider(this, this._setterPrefix, this._withPrefix, this._getterPrefix, str);
        }

        public Provider withSetterPrefix(String str) {
            return new Provider(this, str, this._withPrefix, this._getterPrefix, this._isGetterPrefix);
        }

        protected Provider(Provider provider, String str, String str2, String str3, String str4) {
            this(str, str2, str3, str4, provider._baseNameValidator);
        }

        protected Provider(Provider provider, BaseNameValidator baseNameValidator) {
            this(provider._setterPrefix, provider._withPrefix, provider._getterPrefix, provider._isGetterPrefix, baseNameValidator);
        }

        protected Provider(String str, String str2, String str3, String str4, BaseNameValidator baseNameValidator) {
            this._setterPrefix = str;
            this._withPrefix = str2;
            this._getterPrefix = str3;
            this._isGetterPrefix = str4;
            this._baseNameValidator = baseNameValidator;
        }
    }

    /* loaded from: classes2.dex */
    public static class RecordNaming extends DefaultAccessorNamingStrategy {
        protected final Set<String> _fieldNames;

        public RecordNaming(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass) {
            super(mapperConfig, annotatedClass, null, "get", ai.ae, null);
            this._fieldNames = new HashSet();
            for (String str : JDK14Util.getRecordFieldNames(annotatedClass.getRawType())) {
                this._fieldNames.add(str);
            }
        }

        @Override // com.fasterxml.jackson.databind.introspect.DefaultAccessorNamingStrategy, com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy
        public String findNameForRegularGetter(AnnotatedMethod annotatedMethod, String str) {
            return this._fieldNames.contains(str) ? str : super.findNameForRegularGetter(annotatedMethod, str);
        }
    }

    protected DefaultAccessorNamingStrategy(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, String str, String str2, String str3, BaseNameValidator baseNameValidator) {
        this._config = mapperConfig;
        this._forClass = annotatedClass;
        this._stdBeanNaming = mapperConfig.isEnabled(MapperFeature.USE_STD_BEAN_NAMING);
        this._mutatorPrefix = str;
        this._getterPrefix = str2;
        this._isGetterPrefix = str3;
        this._baseNameValidator = baseNameValidator;
    }

    protected boolean _isCglibGetCallbacks(AnnotatedMethod annotatedMethod) {
        Class<?> rawType = annotatedMethod.getRawType();
        if (rawType.isArray()) {
            String name = rawType.getComponentType().getName();
            if (name.contains(".cglib")) {
                return name.startsWith("net.sf.cglib") || name.startsWith("org.hibernate.repackage.cglib") || name.startsWith("org.springframework.cglib");
            }
            return false;
        }
        return false;
    }

    protected boolean _isGroovyMetaClassGetter(AnnotatedMethod annotatedMethod) {
        return annotatedMethod.getRawType().getName().startsWith("groovy.lang");
    }

    @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy
    public String findNameForIsGetter(AnnotatedMethod annotatedMethod, String str) {
        if (this._isGetterPrefix != null) {
            Class<?> rawType = annotatedMethod.getRawType();
            if ((rawType == Boolean.class || rawType == Boolean.TYPE) && str.startsWith(this._isGetterPrefix)) {
                if (this._stdBeanNaming) {
                    return stdManglePropertyName(str, 2);
                }
                return legacyManglePropertyName(str, 2);
            }
            return null;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy
    public String findNameForMutator(AnnotatedMethod annotatedMethod, String str) {
        String str2 = this._mutatorPrefix;
        if (str2 == null || !str.startsWith(str2)) {
            return null;
        }
        if (this._stdBeanNaming) {
            return stdManglePropertyName(str, this._mutatorPrefix.length());
        }
        return legacyManglePropertyName(str, this._mutatorPrefix.length());
    }

    @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy
    public String findNameForRegularGetter(AnnotatedMethod annotatedMethod, String str) {
        String str2 = this._getterPrefix;
        if (str2 == null || !str.startsWith(str2)) {
            return null;
        }
        if ("getCallbacks".equals(str)) {
            if (_isCglibGetCallbacks(annotatedMethod)) {
                return null;
            }
        } else if ("getMetaClass".equals(str) && _isGroovyMetaClassGetter(annotatedMethod)) {
            return null;
        }
        if (this._stdBeanNaming) {
            return stdManglePropertyName(str, this._getterPrefix.length());
        }
        return legacyManglePropertyName(str, this._getterPrefix.length());
    }

    protected String legacyManglePropertyName(String str, int i2) {
        int length = str.length();
        if (length == i2) {
            return null;
        }
        char charAt = str.charAt(i2);
        BaseNameValidator baseNameValidator = this._baseNameValidator;
        if (baseNameValidator == null || baseNameValidator.accept(charAt, str, i2)) {
            char lowerCase = Character.toLowerCase(charAt);
            if (charAt == lowerCase) {
                return str.substring(i2);
            }
            StringBuilder sb = new StringBuilder(length - i2);
            sb.append(lowerCase);
            while (true) {
                i2++;
                if (i2 >= length) {
                    break;
                }
                char charAt2 = str.charAt(i2);
                char lowerCase2 = Character.toLowerCase(charAt2);
                if (charAt2 == lowerCase2) {
                    sb.append((CharSequence) str, i2, length);
                    break;
                }
                sb.append(lowerCase2);
            }
            return sb.toString();
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy
    public String modifyFieldName(AnnotatedField annotatedField, String str) {
        return str;
    }

    protected String stdManglePropertyName(String str, int i2) {
        int length = str.length();
        if (length == i2) {
            return null;
        }
        char charAt = str.charAt(i2);
        BaseNameValidator baseNameValidator = this._baseNameValidator;
        if (baseNameValidator == null || baseNameValidator.accept(charAt, str, i2)) {
            char lowerCase = Character.toLowerCase(charAt);
            if (charAt == lowerCase) {
                return str.substring(i2);
            }
            int i4 = i2 + 1;
            if (i4 < length && Character.isUpperCase(str.charAt(i4))) {
                return str.substring(i2);
            }
            StringBuilder sb = new StringBuilder(length - i2);
            sb.append(lowerCase);
            sb.append((CharSequence) str, i4, length);
            return sb.toString();
        }
        return null;
    }
}
