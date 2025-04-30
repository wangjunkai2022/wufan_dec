package com.join.mgps.dto;

import java.util.HashMap;
/* loaded from: classes4.dex */
public class PaPaBean {
    public static final String KEY_IMAGE_HEADER_HEIGHT = "key_image_header_height";
    private HashMap<String, Object> mImageHeaderParams = new HashMap<>();
    private int type;
    private Object typeValue;

    /* loaded from: classes4.dex */
    public enum PaPaBeanTypes {
        TYPE_IMAGE_HEADER(0),
        TYPE_TITLE_COLLECTION(1),
        TYPE_CONTENT_COLLECTION(2),
        TYPE_CONTENT_GAMEINFO(3),
        TYPE_GAMEFACTORY_LIST(4),
        TYPE_STANDSALONE_LINE_20(5),
        TYPE_STANDSALONE_TITLE(6),
        TYPE_STANDSALONE_HORIZONTAL(7),
        TYPE_STANDSALONE_VERTICAL(8),
        TYPE_STANDSALONE_TAG(9),
        TYPE_STANDSALONE_COMPANY(10),
        TYPE_STANDSALONE_LINE_40(11);
        
        private int value;

        PaPaBeanTypes(int i2) {
            this.value = i2;
        }

        public int value() {
            return this.value;
        }
    }

    public static int getTypes() {
        return PaPaBeanTypes.values().length;
    }

    public HashMap<String, Object> getImageHeaderParams() {
        return this.mImageHeaderParams;
    }

    public int getType() {
        return this.type;
    }

    public Object getTypeValue() {
        return this.typeValue;
    }

    public void setImageHeaderParams(HashMap hashMap) {
        this.mImageHeaderParams = hashMap;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setTypeValue(Object obj) {
        this.typeValue = obj;
    }
}
