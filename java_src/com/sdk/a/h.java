package com.sdk.a;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.dto.Constant;
import com.sdk.a.g;
import java.io.File;
import java.io.Serializable;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes4.dex */
public class h<T> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public static final String f56570a = "com.sdk.a.h";

    /* renamed from: b  reason: collision with root package name */
    public static final Boolean f56571b = Boolean.valueOf(com.sdk.f.g.f56647b);
    public static final long serialVersionUID = -8869881146515387822L;

    /* renamed from: d  reason: collision with root package name */
    public String f56573d;

    /* renamed from: e  reason: collision with root package name */
    public String f56574e;

    /* renamed from: f  reason: collision with root package name */
    public TreeMap<String, Object> f56575f;

    /* renamed from: g  reason: collision with root package name */
    public ArrayList<File> f56576g;

    /* renamed from: h  reason: collision with root package name */
    public HashMap<String, Object> f56577h;

    /* renamed from: j  reason: collision with root package name */
    public com.sdk.e.b<T> f56579j;

    /* renamed from: c  reason: collision with root package name */
    public String f56572c = g.a.GET.f56569l;

    /* renamed from: i  reason: collision with root package name */
    public int f56578i = 0;

    public String a(TreeMap<String, Object> treeMap) {
        StringBuilder sb;
        if (treeMap != null) {
            try {
                sb = new StringBuilder();
                for (Map.Entry<String, Object> entry : treeMap.entrySet()) {
                    String key = entry.getKey();
                    Object value = entry.getValue();
                    if (value != null && com.sdk.o.b.b(key).booleanValue()) {
                        String encode = URLEncoder.encode(value.toString(), "UTF-8");
                        if (com.sdk.f.g.f56650e) {
                            if (!Constant.MD5.equals(key) && !"unikey".equals(key)) {
                                sb.append(key);
                                sb.append(SimpleComparison.EQUAL_TO_OPERATION);
                                encode = com.sdk.r.d.b(encode);
                            }
                            sb.append(key);
                            sb.append(SimpleComparison.EQUAL_TO_OPERATION);
                        } else {
                            sb.append(key);
                            sb.append(SimpleComparison.EQUAL_TO_OPERATION);
                        }
                        sb.append(encode);
                        sb.append(m.a.f72566d);
                    }
                }
                sb.deleteCharAt(sb.length() - 1);
            } catch (Exception e4) {
                com.sdk.o.b.a(f56570a, e4.getMessage(), f56571b);
                throw new Exception("http请求参数出错");
            }
        } else {
            sb = null;
        }
        if (sb == null) {
            return null;
        }
        return sb.toString();
    }

    public void a(String str) {
        if (com.sdk.o.b.b(str).booleanValue()) {
            this.f56572c = str;
        }
    }

    public void b(String str) {
        this.f56573d = str;
    }
}
