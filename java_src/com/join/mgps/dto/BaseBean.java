package com.join.mgps.dto;

import com.join.android.app.common.utils.JsonMapper;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class BaseBean implements Serializable {
    public static String toJsonStringOrEmpty(Object obj) {
        return obj == null ? "" : JsonMapper.toJsonString(obj);
    }

    public String toJsonString() {
        return JsonMapper.toJsonString(this);
    }
}
