package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import external.org.apache.commons.lang3.d;
import java.io.Serializable;
/* loaded from: classes2.dex */
public class PropertyNamingStrategy implements Serializable {
    @Deprecated
    public static final PropertyNamingStrategy CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES;
    @Deprecated
    public static final PropertyNamingStrategy KEBAB_CASE;
    @Deprecated
    public static final PropertyNamingStrategy LOWER_CAMEL_CASE = new PropertyNamingStrategy();
    @Deprecated
    public static final PropertyNamingStrategy LOWER_CASE;
    @Deprecated
    public static final PropertyNamingStrategy LOWER_DOT_CASE;
    @Deprecated
    public static final PropertyNamingStrategy PASCAL_CASE_TO_CAMEL_CASE;
    @Deprecated
    public static final PropertyNamingStrategy SNAKE_CASE;
    @Deprecated
    public static final PropertyNamingStrategy UPPER_CAMEL_CASE;
    private static final long serialVersionUID = 2;

    @Deprecated
    /* loaded from: classes2.dex */
    public static class KebabCaseStrategy extends PropertyNamingStrategyBase {
        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy.PropertyNamingStrategyBase
        public String translate(String str) {
            return PropertyNamingStrategyBase.translateLowerCaseWithSeparator(str, '-');
        }
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public static class LowerCaseStrategy extends PropertyNamingStrategyBase {
        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy.PropertyNamingStrategyBase
        public String translate(String str) {
            return str.toLowerCase();
        }
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public static class LowerCaseWithUnderscoresStrategy extends SnakeCaseStrategy {
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public static class LowerDotCaseStrategy extends PropertyNamingStrategyBase {
        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy.PropertyNamingStrategyBase
        public String translate(String str) {
            return PropertyNamingStrategyBase.translateLowerCaseWithSeparator(str, d.f65364a);
        }
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public static class PascalCaseStrategy extends UpperCamelCaseStrategy {
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public static abstract class PropertyNamingStrategyBase extends PropertyNamingStrategy {
        protected static String translateLowerCaseWithSeparator(String str, char c4) {
            int length;
            if (str == null || (length = str.length()) == 0) {
                return str;
            }
            StringBuilder sb = new StringBuilder((length >> 1) + length);
            int i2 = 0;
            for (int i4 = 0; i4 < length; i4++) {
                char charAt = str.charAt(i4);
                char lowerCase = Character.toLowerCase(charAt);
                if (lowerCase == charAt) {
                    if (i2 > 1) {
                        sb.insert(sb.length() - 1, c4);
                    }
                    i2 = 0;
                } else {
                    if (i2 == 0 && i4 > 0) {
                        sb.append(c4);
                    }
                    i2++;
                }
                sb.append(lowerCase);
            }
            return sb.toString();
        }

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
        public String nameForConstructorParameter(MapperConfig<?> mapperConfig, AnnotatedParameter annotatedParameter, String str) {
            return translate(str);
        }

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
        public String nameForField(MapperConfig<?> mapperConfig, AnnotatedField annotatedField, String str) {
            return translate(str);
        }

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
        public String nameForGetterMethod(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, String str) {
            return translate(str);
        }

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
        public String nameForSetterMethod(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, String str) {
            return translate(str);
        }

        public abstract String translate(String str);
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public static class SnakeCaseStrategy extends PropertyNamingStrategyBase {
        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy.PropertyNamingStrategyBase
        public String translate(String str) {
            if (str == null) {
                return str;
            }
            int length = str.length();
            StringBuilder sb = new StringBuilder(length * 2);
            int i2 = 0;
            boolean z3 = false;
            for (int i4 = 0; i4 < length; i4++) {
                char charAt = str.charAt(i4);
                if (i4 > 0 || charAt != '_') {
                    if (Character.isUpperCase(charAt)) {
                        if (!z3 && i2 > 0 && sb.charAt(i2 - 1) != '_') {
                            sb.append('_');
                            i2++;
                        }
                        charAt = Character.toLowerCase(charAt);
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    sb.append(charAt);
                    i2++;
                }
            }
            return i2 > 0 ? sb.toString() : str;
        }
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public static class UpperCamelCaseStrategy extends PropertyNamingStrategyBase {
        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy.PropertyNamingStrategyBase
        public String translate(String str) {
            char charAt;
            char upperCase;
            if (str == null || str.isEmpty() || charAt == (upperCase = Character.toUpperCase((charAt = str.charAt(0))))) {
                return str;
            }
            StringBuilder sb = new StringBuilder(str);
            sb.setCharAt(0, upperCase);
            return sb.toString();
        }
    }

    static {
        UpperCamelCaseStrategy upperCamelCaseStrategy = new UpperCamelCaseStrategy();
        UPPER_CAMEL_CASE = upperCamelCaseStrategy;
        SnakeCaseStrategy snakeCaseStrategy = new SnakeCaseStrategy();
        SNAKE_CASE = snakeCaseStrategy;
        LOWER_CASE = new LowerCaseStrategy();
        KEBAB_CASE = new KebabCaseStrategy();
        LOWER_DOT_CASE = new LowerDotCaseStrategy();
        CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES = snakeCaseStrategy;
        PASCAL_CASE_TO_CAMEL_CASE = upperCamelCaseStrategy;
    }

    public String nameForConstructorParameter(MapperConfig<?> mapperConfig, AnnotatedParameter annotatedParameter, String str) {
        return str;
    }

    public String nameForField(MapperConfig<?> mapperConfig, AnnotatedField annotatedField, String str) {
        return str;
    }

    public String nameForGetterMethod(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, String str) {
        return str;
    }

    public String nameForSetterMethod(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, String str) {
        return str;
    }
}
