package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
public class BeanPropertyMap implements Iterable<SettableBeanProperty>, Serializable {
    private static final long serialVersionUID = 2;
    private final Map<String, List<PropertyName>> _aliasDefs;
    private final Map<String, String> _aliasMapping;
    protected final boolean _caseInsensitive;
    private Object[] _hashArea;
    private int _hashMask;
    private final Locale _locale;
    private final SettableBeanProperty[] _propsInOrder;
    private int _size;
    private int _spillCount;

    public BeanPropertyMap(boolean z3, Collection<SettableBeanProperty> collection, Map<String, List<PropertyName>> map, Locale locale) {
        this._caseInsensitive = z3;
        this._propsInOrder = (SettableBeanProperty[]) collection.toArray(new SettableBeanProperty[collection.size()]);
        this._aliasDefs = map;
        this._locale = locale;
        this._aliasMapping = _buildAliasMapping(map, z3, locale);
        init(collection);
    }

    private Map<String, String> _buildAliasMapping(Map<String, List<PropertyName>> map, boolean z3, Locale locale) {
        if (map != null && !map.isEmpty()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, List<PropertyName>> entry : map.entrySet()) {
                String key = entry.getKey();
                if (z3) {
                    key = key.toLowerCase(locale);
                }
                for (PropertyName propertyName : entry.getValue()) {
                    String simpleName = propertyName.getSimpleName();
                    if (z3) {
                        simpleName = simpleName.toLowerCase(locale);
                    }
                    hashMap.put(simpleName, key);
                }
            }
            return hashMap;
        }
        return Collections.emptyMap();
    }

    private final SettableBeanProperty _find2(String str, int i2, Object obj) {
        if (obj == null) {
            return _findWithAlias(this._aliasMapping.get(str));
        }
        int i4 = this._hashMask + 1;
        int i5 = ((i2 >> 1) + i4) << 1;
        Object obj2 = this._hashArea[i5];
        if (str.equals(obj2)) {
            return (SettableBeanProperty) this._hashArea[i5 + 1];
        }
        if (obj2 != null) {
            int i6 = (i4 + (i4 >> 1)) << 1;
            int i7 = this._spillCount + i6;
            while (i6 < i7) {
                Object obj3 = this._hashArea[i6];
                if (obj3 == str || str.equals(obj3)) {
                    return (SettableBeanProperty) this._hashArea[i6 + 1];
                }
                i6 += 2;
            }
        }
        return _findWithAlias(this._aliasMapping.get(str));
    }

    private SettableBeanProperty _find2ViaAlias(String str, int i2, Object obj) {
        int i4 = this._hashMask + 1;
        int i5 = ((i2 >> 1) + i4) << 1;
        Object obj2 = this._hashArea[i5];
        if (str.equals(obj2)) {
            return (SettableBeanProperty) this._hashArea[i5 + 1];
        }
        if (obj2 != null) {
            int i6 = (i4 + (i4 >> 1)) << 1;
            int i7 = this._spillCount + i6;
            while (i6 < i7) {
                Object obj3 = this._hashArea[i6];
                if (obj3 == str || str.equals(obj3)) {
                    return (SettableBeanProperty) this._hashArea[i6 + 1];
                }
                i6 += 2;
            }
            return null;
        }
        return null;
    }

    private final int _findFromOrdered(SettableBeanProperty settableBeanProperty) {
        int length = this._propsInOrder.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (this._propsInOrder[i2] == settableBeanProperty) {
                return i2;
            }
        }
        throw new IllegalStateException("Illegal state: property '" + settableBeanProperty.getName() + "' missing from _propsInOrder");
    }

    private SettableBeanProperty _findWithAlias(String str) {
        if (str == null) {
            return null;
        }
        int _hashCode = _hashCode(str);
        int i2 = _hashCode << 1;
        Object obj = this._hashArea[i2];
        if (str.equals(obj)) {
            return (SettableBeanProperty) this._hashArea[i2 + 1];
        }
        if (obj == null) {
            return null;
        }
        return _find2ViaAlias(str, _hashCode, obj);
    }

    private final int _hashCode(String str) {
        return str.hashCode() & this._hashMask;
    }

    private List<SettableBeanProperty> _properties() {
        ArrayList arrayList = new ArrayList(this._size);
        int length = this._hashArea.length;
        for (int i2 = 1; i2 < length; i2 += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i2];
            if (settableBeanProperty != null) {
                arrayList.add(settableBeanProperty);
            }
        }
        return arrayList;
    }

    public static BeanPropertyMap construct(MapperConfig<?> mapperConfig, Collection<SettableBeanProperty> collection, Map<String, List<PropertyName>> map, boolean z3) {
        return new BeanPropertyMap(z3, collection, map, mapperConfig.getLocale());
    }

    private static final int findSize(int i2) {
        if (i2 <= 5) {
            return 8;
        }
        if (i2 <= 12) {
            return 16;
        }
        int i4 = 32;
        while (i4 < i2 + (i2 >> 2)) {
            i4 += i4;
        }
        return i4;
    }

    protected SettableBeanProperty _rename(SettableBeanProperty settableBeanProperty, NameTransformer nameTransformer) {
        JsonDeserializer<Object> unwrappingDeserializer;
        if (settableBeanProperty == null) {
            return settableBeanProperty;
        }
        SettableBeanProperty withSimpleName = settableBeanProperty.withSimpleName(nameTransformer.transform(settableBeanProperty.getName()));
        JsonDeserializer<Object> valueDeserializer = withSimpleName.getValueDeserializer();
        return (valueDeserializer == null || (unwrappingDeserializer = valueDeserializer.unwrappingDeserializer(nameTransformer)) == valueDeserializer) ? withSimpleName : withSimpleName.withValueDeserializer(unwrappingDeserializer);
    }

    public BeanPropertyMap assignIndexes() {
        int length = this._hashArea.length;
        int i2 = 0;
        for (int i4 = 1; i4 < length; i4 += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i4];
            if (settableBeanProperty != null) {
                settableBeanProperty.assignIndex(i2);
                i2++;
            }
        }
        return this;
    }

    public SettableBeanProperty find(int i2) {
        int length = this._hashArea.length;
        for (int i4 = 1; i4 < length; i4 += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i4];
            if (settableBeanProperty != null && i2 == settableBeanProperty.getPropertyIndex()) {
                return settableBeanProperty;
            }
        }
        return null;
    }

    public boolean findDeserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        SettableBeanProperty find = find(str);
        if (find == null) {
            return false;
        }
        try {
            find.deserializeAndSet(jsonParser, deserializationContext, obj);
            return true;
        } catch (Exception e4) {
            wrapAndThrow(e4, obj, str, deserializationContext);
            return true;
        }
    }

    public SettableBeanProperty[] getPropertiesInInsertionOrder() {
        return this._propsInOrder;
    }

    protected final String getPropertyName(SettableBeanProperty settableBeanProperty) {
        boolean z3 = this._caseInsensitive;
        String name = settableBeanProperty.getName();
        return z3 ? name.toLowerCase(this._locale) : name;
    }

    public boolean hasAliases() {
        return !this._aliasDefs.isEmpty();
    }

    protected void init(Collection<SettableBeanProperty> collection) {
        int size = collection.size();
        this._size = size;
        int findSize = findSize(size);
        this._hashMask = findSize - 1;
        int i2 = (findSize >> 1) + findSize;
        Object[] objArr = new Object[i2 * 2];
        int i4 = 0;
        for (SettableBeanProperty settableBeanProperty : collection) {
            if (settableBeanProperty != null) {
                String propertyName = getPropertyName(settableBeanProperty);
                int _hashCode = _hashCode(propertyName);
                int i5 = _hashCode << 1;
                if (objArr[i5] != null) {
                    i5 = ((_hashCode >> 1) + findSize) << 1;
                    if (objArr[i5] != null) {
                        i5 = (i2 << 1) + i4;
                        i4 += 2;
                        if (i5 >= objArr.length) {
                            objArr = Arrays.copyOf(objArr, objArr.length + 4);
                        }
                    }
                }
                objArr[i5] = propertyName;
                objArr[i5 + 1] = settableBeanProperty;
            }
        }
        this._hashArea = objArr;
        this._spillCount = i4;
    }

    public boolean isCaseInsensitive() {
        return this._caseInsensitive;
    }

    @Override // java.lang.Iterable
    public Iterator<SettableBeanProperty> iterator() {
        return _properties().iterator();
    }

    public void remove(SettableBeanProperty settableBeanProperty) {
        ArrayList arrayList = new ArrayList(this._size);
        String propertyName = getPropertyName(settableBeanProperty);
        int length = this._hashArea.length;
        boolean z3 = false;
        for (int i2 = 1; i2 < length; i2 += 2) {
            Object[] objArr = this._hashArea;
            SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) objArr[i2];
            if (settableBeanProperty2 != null) {
                if (!z3 && (z3 = propertyName.equals(objArr[i2 - 1]))) {
                    this._propsInOrder[_findFromOrdered(settableBeanProperty2)] = null;
                } else {
                    arrayList.add(settableBeanProperty2);
                }
            }
        }
        if (z3) {
            init(arrayList);
            return;
        }
        throw new NoSuchElementException("No entry '" + settableBeanProperty.getName() + "' found, can't remove");
    }

    public BeanPropertyMap renameAll(NameTransformer nameTransformer) {
        if (nameTransformer == null || nameTransformer == NameTransformer.NOP) {
            return this;
        }
        int length = this._propsInOrder.length;
        ArrayList arrayList = new ArrayList(length);
        for (int i2 = 0; i2 < length; i2++) {
            SettableBeanProperty settableBeanProperty = this._propsInOrder[i2];
            if (settableBeanProperty == null) {
                arrayList.add(settableBeanProperty);
            } else {
                arrayList.add(_rename(settableBeanProperty, nameTransformer));
            }
        }
        return new BeanPropertyMap(this._caseInsensitive, arrayList, this._aliasDefs, this._locale);
    }

    public void replace(SettableBeanProperty settableBeanProperty, SettableBeanProperty settableBeanProperty2) {
        int length = this._hashArea.length;
        for (int i2 = 1; i2 <= length; i2 += 2) {
            Object[] objArr = this._hashArea;
            if (objArr[i2] == settableBeanProperty) {
                objArr[i2] = settableBeanProperty2;
                this._propsInOrder[_findFromOrdered(settableBeanProperty)] = settableBeanProperty2;
                return;
            }
        }
        throw new NoSuchElementException("No entry '" + settableBeanProperty.getName() + "' found, can't replace");
    }

    public int size() {
        return this._size;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Properties=[");
        Iterator<SettableBeanProperty> it2 = iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            SettableBeanProperty next = it2.next();
            int i4 = i2 + 1;
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(next.getName());
            sb.append('(');
            sb.append(next.getType());
            sb.append(')');
            i2 = i4;
        }
        sb.append(']');
        if (!this._aliasDefs.isEmpty()) {
            sb.append("(aliases: ");
            sb.append(this._aliasDefs);
            sb.append(")");
        }
        return sb.toString();
    }

    public BeanPropertyMap withCaseInsensitivity(boolean z3) {
        return this._caseInsensitive == z3 ? this : new BeanPropertyMap(this, z3);
    }

    public BeanPropertyMap withProperty(SettableBeanProperty settableBeanProperty) {
        String propertyName = getPropertyName(settableBeanProperty);
        int length = this._hashArea.length;
        for (int i2 = 1; i2 < length; i2 += 2) {
            SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) this._hashArea[i2];
            if (settableBeanProperty2 != null && settableBeanProperty2.getName().equals(propertyName)) {
                return new BeanPropertyMap(this, settableBeanProperty, i2, _findFromOrdered(settableBeanProperty2));
            }
        }
        return new BeanPropertyMap(this, settableBeanProperty, propertyName, _hashCode(propertyName));
    }

    public BeanPropertyMap withoutProperties(Collection<String> collection) {
        return withoutProperties(collection, null);
    }

    protected void wrapAndThrow(Throwable th, Object obj, String str, DeserializationContext deserializationContext) throws IOException {
        while ((th instanceof InvocationTargetException) && th.getCause() != null) {
            th = th.getCause();
        }
        ClassUtil.throwIfError(th);
        boolean z3 = deserializationContext == null || deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
        if (th instanceof IOException) {
            if (!z3 || !(th instanceof JsonProcessingException)) {
                throw ((IOException) th);
            }
        } else if (!z3) {
            ClassUtil.throwIfRTE(th);
        }
        throw JsonMappingException.wrapWithPath(th, obj, str);
    }

    public BeanPropertyMap withoutProperties(Collection<String> collection, Collection<String> collection2) {
        if ((collection == null || collection.isEmpty()) && collection2 == null) {
            return this;
        }
        int length = this._propsInOrder.length;
        ArrayList arrayList = new ArrayList(length);
        for (int i2 = 0; i2 < length; i2++) {
            SettableBeanProperty settableBeanProperty = this._propsInOrder[i2];
            if (settableBeanProperty != null && !IgnorePropertiesUtil.shouldIgnore(settableBeanProperty.getName(), collection, collection2)) {
                arrayList.add(settableBeanProperty);
            }
        }
        return new BeanPropertyMap(this._caseInsensitive, arrayList, this._aliasDefs, this._locale);
    }

    @Deprecated
    public static BeanPropertyMap construct(MapperConfig<?> mapperConfig, Collection<SettableBeanProperty> collection, Map<String, List<PropertyName>> map) {
        return new BeanPropertyMap(mapperConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES), collection, map, mapperConfig.getLocale());
    }

    public SettableBeanProperty find(String str) {
        if (str != null) {
            if (this._caseInsensitive) {
                str = str.toLowerCase(this._locale);
            }
            int hashCode = str.hashCode() & this._hashMask;
            int i2 = hashCode << 1;
            Object obj = this._hashArea[i2];
            if (obj != str && !str.equals(obj)) {
                return _find2(str, hashCode, obj);
            }
            return (SettableBeanProperty) this._hashArea[i2 + 1];
        }
        throw new IllegalArgumentException("Cannot pass null property name");
    }

    @Deprecated
    public static BeanPropertyMap construct(Collection<SettableBeanProperty> collection, boolean z3, Map<String, List<PropertyName>> map) {
        return new BeanPropertyMap(z3, collection, map);
    }

    @Deprecated
    public BeanPropertyMap(boolean z3, Collection<SettableBeanProperty> collection, Map<String, List<PropertyName>> map) {
        this(z3, collection, map, Locale.getDefault());
    }

    private BeanPropertyMap(BeanPropertyMap beanPropertyMap, SettableBeanProperty settableBeanProperty, int i2, int i4) {
        this._caseInsensitive = beanPropertyMap._caseInsensitive;
        this._locale = beanPropertyMap._locale;
        this._hashMask = beanPropertyMap._hashMask;
        this._size = beanPropertyMap._size;
        this._spillCount = beanPropertyMap._spillCount;
        this._aliasDefs = beanPropertyMap._aliasDefs;
        this._aliasMapping = beanPropertyMap._aliasMapping;
        Object[] objArr = beanPropertyMap._hashArea;
        this._hashArea = Arrays.copyOf(objArr, objArr.length);
        SettableBeanProperty[] settableBeanPropertyArr = beanPropertyMap._propsInOrder;
        SettableBeanProperty[] settableBeanPropertyArr2 = (SettableBeanProperty[]) Arrays.copyOf(settableBeanPropertyArr, settableBeanPropertyArr.length);
        this._propsInOrder = settableBeanPropertyArr2;
        this._hashArea[i2] = settableBeanProperty;
        settableBeanPropertyArr2[i4] = settableBeanProperty;
    }

    private BeanPropertyMap(BeanPropertyMap beanPropertyMap, SettableBeanProperty settableBeanProperty, String str, int i2) {
        this._caseInsensitive = beanPropertyMap._caseInsensitive;
        this._locale = beanPropertyMap._locale;
        this._hashMask = beanPropertyMap._hashMask;
        this._size = beanPropertyMap._size;
        this._spillCount = beanPropertyMap._spillCount;
        this._aliasDefs = beanPropertyMap._aliasDefs;
        this._aliasMapping = beanPropertyMap._aliasMapping;
        Object[] objArr = beanPropertyMap._hashArea;
        this._hashArea = Arrays.copyOf(objArr, objArr.length);
        SettableBeanProperty[] settableBeanPropertyArr = beanPropertyMap._propsInOrder;
        int length = settableBeanPropertyArr.length;
        SettableBeanProperty[] settableBeanPropertyArr2 = (SettableBeanProperty[]) Arrays.copyOf(settableBeanPropertyArr, length + 1);
        this._propsInOrder = settableBeanPropertyArr2;
        settableBeanPropertyArr2[length] = settableBeanProperty;
        int i4 = this._hashMask + 1;
        int i5 = i2 << 1;
        Object[] objArr2 = this._hashArea;
        if (objArr2[i5] != null) {
            i5 = ((i2 >> 1) + i4) << 1;
            if (objArr2[i5] != null) {
                int i6 = this._spillCount;
                i5 = ((i4 + (i4 >> 1)) << 1) + i6;
                this._spillCount = i6 + 2;
                if (i5 >= objArr2.length) {
                    this._hashArea = Arrays.copyOf(objArr2, objArr2.length + 4);
                }
            }
        }
        Object[] objArr3 = this._hashArea;
        objArr3[i5] = str;
        objArr3[i5 + 1] = settableBeanProperty;
    }

    protected BeanPropertyMap(BeanPropertyMap beanPropertyMap, boolean z3) {
        this._caseInsensitive = z3;
        this._locale = beanPropertyMap._locale;
        this._aliasDefs = beanPropertyMap._aliasDefs;
        this._aliasMapping = beanPropertyMap._aliasMapping;
        SettableBeanProperty[] settableBeanPropertyArr = beanPropertyMap._propsInOrder;
        SettableBeanProperty[] settableBeanPropertyArr2 = (SettableBeanProperty[]) Arrays.copyOf(settableBeanPropertyArr, settableBeanPropertyArr.length);
        this._propsInOrder = settableBeanPropertyArr2;
        init(Arrays.asList(settableBeanPropertyArr2));
    }
}
