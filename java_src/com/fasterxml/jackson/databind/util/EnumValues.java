package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumMap;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes2.dex */
public final class EnumValues implements Serializable {
    private static final long serialVersionUID = 1;
    private transient EnumMap<?, SerializableString> _asMap;
    private final Class<Enum<?>> _enumClass;
    private final SerializableString[] _textual;
    private final Enum<?>[] _values;

    private EnumValues(Class<Enum<?>> cls, SerializableString[] serializableStringArr) {
        this._enumClass = cls;
        this._values = cls.getEnumConstants();
        this._textual = serializableStringArr;
    }

    public static EnumValues construct(SerializationConfig serializationConfig, Class<Enum<?>> cls) {
        if (serializationConfig.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING)) {
            return constructFromToString(serializationConfig, cls);
        }
        return constructFromName(serializationConfig, cls);
    }

    public static EnumValues constructFromName(MapperConfig<?> mapperConfig, Class<Enum<?>> cls) {
        Class<? extends Enum<?>> findEnumType = ClassUtil.findEnumType(cls);
        Enum<?>[] enumArr = (Enum[]) findEnumType.getEnumConstants();
        if (enumArr != null) {
            String[] findEnumValues = mapperConfig.getAnnotationIntrospector().findEnumValues(findEnumType, enumArr, new String[enumArr.length]);
            SerializableString[] serializableStringArr = new SerializableString[enumArr.length];
            int length = enumArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                Enum<?> r5 = enumArr[i2];
                String str = findEnumValues[i2];
                if (str == null) {
                    str = r5.name();
                }
                serializableStringArr[r5.ordinal()] = mapperConfig.compileString(str);
            }
            return construct(cls, serializableStringArr);
        }
        throw new IllegalArgumentException("Cannot determine enum constants for Class " + cls.getName());
    }

    public static EnumValues constructFromToString(MapperConfig<?> mapperConfig, Class<Enum<?>> cls) {
        Enum[] enumArr = (Enum[]) ClassUtil.findEnumType(cls).getEnumConstants();
        if (enumArr != null) {
            ArrayList arrayList = new ArrayList(enumArr.length);
            for (Enum r4 : enumArr) {
                arrayList.add(r4.toString());
            }
            return construct(mapperConfig, cls, arrayList);
        }
        throw new IllegalArgumentException("Cannot determine enum constants for Class " + cls.getName());
    }

    public List<Enum<?>> enums() {
        return Arrays.asList(this._values);
    }

    public Class<Enum<?>> getEnumClass() {
        return this._enumClass;
    }

    public EnumMap<?, SerializableString> internalMap() {
        Enum<?>[] enumArr;
        EnumMap<?, SerializableString> enumMap = this._asMap;
        if (enumMap == null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Enum<?> r4 : this._values) {
                linkedHashMap.put(r4, this._textual[r4.ordinal()]);
            }
            return new EnumMap<>(linkedHashMap);
        }
        return enumMap;
    }

    public SerializableString serializedValueFor(Enum<?> r22) {
        return this._textual[r22.ordinal()];
    }

    public Collection<SerializableString> values() {
        return Arrays.asList(this._textual);
    }

    public static EnumValues construct(MapperConfig<?> mapperConfig, Class<Enum<?>> cls, List<String> list) {
        int size = list.size();
        SerializableString[] serializableStringArr = new SerializableString[size];
        for (int i2 = 0; i2 < size; i2++) {
            serializableStringArr[i2] = mapperConfig.compileString(list.get(i2));
        }
        return construct(cls, serializableStringArr);
    }

    public static EnumValues construct(Class<Enum<?>> cls, SerializableString[] serializableStringArr) {
        return new EnumValues(cls, serializableStringArr);
    }
}
