package com.join.mgps.dto;

import java.lang.reflect.Field;
import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class BaseRequest {
    public LinkedMultiValueMap<String, String> getMapParams() {
        Class<?> cls = getClass();
        Class<? super Object> superclass = cls.getSuperclass();
        Field[] declaredFields = cls.getDeclaredFields();
        Field[] declaredFields2 = superclass.getDeclaredFields();
        if (declaredFields != null && declaredFields.length != 0) {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            try {
                for (Field field : declaredFields) {
                    field.setAccessible(true);
                    linkedMultiValueMap.add(field.getName(), field.get(this).toString());
                }
                for (Field field2 : declaredFields2) {
                    field2.setAccessible(true);
                    linkedMultiValueMap.add(field2.getName(), field2.get(this).toString());
                }
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (IllegalArgumentException e5) {
                e5.printStackTrace();
            }
            return linkedMultiValueMap;
        }
        return new LinkedMultiValueMap<>();
    }
}
