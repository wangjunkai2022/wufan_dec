package m.framework.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Hashon {
    private ArrayList<?> arrayToList(Object obj) {
        int i2 = 0;
        if (obj instanceof byte[]) {
            ArrayList<?> arrayList = new ArrayList<>();
            byte[] bArr = (byte[]) obj;
            int length = bArr.length;
            while (i2 < length) {
                arrayList.add(Byte.valueOf(bArr[i2]));
                i2++;
            }
            return arrayList;
        } else if (obj instanceof short[]) {
            ArrayList<?> arrayList2 = new ArrayList<>();
            short[] sArr = (short[]) obj;
            int length2 = sArr.length;
            while (i2 < length2) {
                arrayList2.add(Short.valueOf(sArr[i2]));
                i2++;
            }
            return arrayList2;
        } else if (obj instanceof int[]) {
            ArrayList<?> arrayList3 = new ArrayList<>();
            int[] iArr = (int[]) obj;
            int length3 = iArr.length;
            while (i2 < length3) {
                arrayList3.add(Integer.valueOf(iArr[i2]));
                i2++;
            }
            return arrayList3;
        } else if (obj instanceof long[]) {
            ArrayList<?> arrayList4 = new ArrayList<>();
            long[] jArr = (long[]) obj;
            int length4 = jArr.length;
            while (i2 < length4) {
                arrayList4.add(Long.valueOf(jArr[i2]));
                i2++;
            }
            return arrayList4;
        } else if (obj instanceof float[]) {
            ArrayList<?> arrayList5 = new ArrayList<>();
            float[] fArr = (float[]) obj;
            int length5 = fArr.length;
            while (i2 < length5) {
                arrayList5.add(Float.valueOf(fArr[i2]));
                i2++;
            }
            return arrayList5;
        } else if (obj instanceof double[]) {
            ArrayList<?> arrayList6 = new ArrayList<>();
            double[] dArr = (double[]) obj;
            int length6 = dArr.length;
            while (i2 < length6) {
                arrayList6.add(Double.valueOf(dArr[i2]));
                i2++;
            }
            return arrayList6;
        } else if (obj instanceof char[]) {
            ArrayList<?> arrayList7 = new ArrayList<>();
            char[] cArr = (char[]) obj;
            int length7 = cArr.length;
            while (i2 < length7) {
                arrayList7.add(Character.valueOf(cArr[i2]));
                i2++;
            }
            return arrayList7;
        } else if (obj instanceof boolean[]) {
            ArrayList<?> arrayList8 = new ArrayList<>();
            boolean[] zArr = (boolean[]) obj;
            int length8 = zArr.length;
            while (i2 < length8) {
                arrayList8.add(Boolean.valueOf(zArr[i2]));
                i2++;
            }
            return arrayList8;
        } else if (obj instanceof String[]) {
            ArrayList<?> arrayList9 = new ArrayList<>();
            String[] strArr = (String[]) obj;
            int length9 = strArr.length;
            while (i2 < length9) {
                arrayList9.add(strArr[i2]);
                i2++;
            }
            return arrayList9;
        } else {
            return null;
        }
    }

    private JSONArray getJSONArray(ArrayList<Object> arrayList) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<Object> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            if (next instanceof HashMap) {
                next = getJSONObject((HashMap) next);
            } else if (next instanceof ArrayList) {
                next = getJSONArray((ArrayList) next);
            }
            jSONArray.put(next);
        }
        return jSONArray;
    }

    private JSONObject getJSONObject(HashMap<String, Object> hashMap) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, Object> entry : hashMap.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof HashMap) {
                value = getJSONObject((HashMap) value);
            } else if (value instanceof ArrayList) {
                value = getJSONArray((ArrayList) value);
            } else if (isBasicArray(value)) {
                value = getJSONArray(arrayToList(value));
            }
            jSONObject.put(entry.getKey(), value);
        }
        return jSONObject;
    }

    private boolean isBasicArray(Object obj) {
        return (obj instanceof byte[]) || (obj instanceof short[]) || (obj instanceof int[]) || (obj instanceof long[]) || (obj instanceof float[]) || (obj instanceof double[]) || (obj instanceof char[]) || (obj instanceof boolean[]) || (obj instanceof String[]);
    }

    public String format(String str) {
        try {
            return format("", fromJson(str));
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public String fromHashMap(HashMap<String, Object> hashMap) {
        try {
            return getJSONObject(hashMap).toString();
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public HashMap<String, Object> fromJson(String str) {
        try {
            if (str.startsWith("[") && str.endsWith("]")) {
                str = "{\"fakelist\":" + str + "}";
            }
            return fromJson(new JSONObject(str));
        } catch (Throwable th) {
            th.printStackTrace();
            return new HashMap<>();
        }
    }

    private String format(String str, HashMap<String, Object> hashMap) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("{\n");
        String str2 = String.valueOf(str) + "\t";
        int i2 = 0;
        for (Map.Entry<String, Object> entry : hashMap.entrySet()) {
            if (i2 > 0) {
                stringBuffer.append(",\n");
            }
            stringBuffer.append(str2);
            stringBuffer.append('\"');
            stringBuffer.append(entry.getKey());
            stringBuffer.append("\":");
            Object value = entry.getValue();
            if (value instanceof HashMap) {
                stringBuffer.append(format(str2, (HashMap) value));
            } else if (value instanceof ArrayList) {
                stringBuffer.append(format(str2, (ArrayList) value));
            } else if (value instanceof String) {
                stringBuffer.append('\"');
                stringBuffer.append(value);
                stringBuffer.append('\"');
            } else {
                stringBuffer.append(value);
            }
            i2++;
        }
        stringBuffer.append('\n');
        stringBuffer.append(str);
        stringBuffer.append('}');
        return stringBuffer.toString();
    }

    private HashMap<String, Object> fromJson(JSONObject jSONObject) throws JSONException {
        HashMap<String, Object> hashMap = new HashMap<>();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object opt = jSONObject.opt(next);
            if (JSONObject.NULL.equals(opt)) {
                opt = null;
            }
            if (opt != null) {
                if (opt instanceof JSONObject) {
                    opt = fromJson((JSONObject) opt);
                } else if (opt instanceof JSONArray) {
                    opt = fromJson((JSONArray) opt);
                }
                hashMap.put(next, opt);
            }
        }
        return hashMap;
    }

    private ArrayList<Object> fromJson(JSONArray jSONArray) throws JSONException {
        ArrayList<Object> arrayList = new ArrayList<>();
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            Object opt = jSONArray.opt(i2);
            if (opt instanceof JSONObject) {
                opt = fromJson((JSONObject) opt);
            } else if (opt instanceof JSONArray) {
                opt = fromJson((JSONArray) opt);
            }
            arrayList.add(opt);
        }
        return arrayList;
    }

    private String format(String str, ArrayList<Object> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[\n");
        String str2 = String.valueOf(str) + "\t";
        Iterator<Object> it2 = arrayList.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            Object next = it2.next();
            if (i2 > 0) {
                stringBuffer.append(",\n");
            }
            stringBuffer.append(str2);
            if (next instanceof HashMap) {
                stringBuffer.append(format(str2, (HashMap) next));
            } else if (next instanceof ArrayList) {
                stringBuffer.append(format(str2, (ArrayList) next));
            } else if (next instanceof String) {
                stringBuffer.append('\"');
                stringBuffer.append(next);
                stringBuffer.append('\"');
            } else {
                stringBuffer.append(next);
            }
            i2++;
        }
        stringBuffer.append('\n');
        stringBuffer.append(str);
        stringBuffer.append(']');
        return stringBuffer.toString();
    }
}
