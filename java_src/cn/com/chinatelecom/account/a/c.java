package cn.com.chinatelecom.account.a;

import android.content.Context;
import android.text.TextUtils;
import cn.com.chinatelecom.account.api.Helper;
import cn.com.chinatelecom.account.api.e.g;
import java.net.URLEncoder;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class c extends cn.com.chinatelecom.account.api.d.a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f8472b = "c";

    private static void a(Context context, int i2) {
        try {
            cn.com.chinatelecom.account.api.e.c.a(context, "key_c_l_l_v", i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void a(Context context, String str) {
        str.hashCode();
        a(context, !str.equals("OFF") ? !str.equals("ERROR") ? 0 : -1 : -2);
    }

    public static void a(Context context, List<String> list) {
        int b4 = b(context);
        if (b4 == -2) {
            return;
        }
        b(context, list, b4);
    }

    private static int b(Context context) {
        try {
            return cn.com.chinatelecom.account.api.e.c.b(context, "key_c_l_l_v", 0);
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    private static String b(Context context, String str) {
        return a.a(context, g.c(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(Context context, Queue<String> queue) {
        JSONArray jSONArray = new JSONArray();
        String jSONArray2 = jSONArray.toString();
        if (!queue.isEmpty()) {
            for (String str : queue) {
                try {
                    jSONArray.put(new JSONObject(str));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
        if (jSONArray.length() <= 0) {
            return "";
        }
        String jSONArray3 = jSONArray.toString();
        if (!TextUtils.isEmpty(jSONArray3)) {
            try {
                jSONArray2 = URLEncoder.encode(Helper.guulam(context, jSONArray3), "UTF-8");
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
        return b(context, jSONArray2);
    }

    private static void b(final Context context, final List<String> list, final int i2) {
        cn.com.chinatelecom.account.api.d.a.a(new Runnable() { // from class: cn.com.chinatelecom.account.a.c.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Queue c4 = c.c(context, list, i2);
                    if (c4.isEmpty()) {
                        return;
                    }
                    String b4 = c.b(context, c4);
                    JSONObject jSONObject = null;
                    int i4 = -1;
                    try {
                        if (!TextUtils.isEmpty(b4)) {
                            JSONObject jSONObject2 = new JSONObject(b4);
                            try {
                                i4 = jSONObject2.getInt("code");
                                jSONObject = jSONObject2;
                            } catch (Exception e4) {
                                e = e4;
                                jSONObject = jSONObject2;
                                e.printStackTrace();
                                if (jSONObject != null) {
                                }
                                c.b(context, c4, i2);
                                return;
                            }
                        }
                    } catch (Exception e5) {
                        e = e5;
                    }
                    if (jSONObject != null || i4 != 0) {
                        c.b(context, c4, i2);
                        return;
                    }
                    c.c(context);
                    c4.clear();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, Queue<String> queue, int i2) {
        String str;
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        if (queue != null && !queue.isEmpty()) {
            int i4 = 0;
            for (String str2 : queue) {
                try {
                    jSONObject = new JSONObject(str2);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                if (i2 != -1 || jSONObject.getInt("rt") != 0) {
                    jSONArray.put(jSONObject);
                    i4++;
                    if (i4 > 10) {
                        break;
                    }
                }
            }
        }
        if (jSONArray.length() > 0) {
            try {
                str = Helper.eneulret(jSONArray.toString());
            } catch (Exception e5) {
                e5.printStackTrace();
                str = null;
            }
        } else {
            str = "";
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        b.a(context, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized Queue<String> c(Context context, List<String> list, int i2) {
        ConcurrentLinkedQueue concurrentLinkedQueue;
        synchronized (c.class) {
            concurrentLinkedQueue = new ConcurrentLinkedQueue();
            String a4 = b.a(context);
            if (!TextUtils.isEmpty(a4)) {
                try {
                    JSONArray jSONArray = new JSONArray(new String(Helper.dneulret(cn.com.chinatelecom.account.api.a.c.a(a4))));
                    int length = jSONArray.length();
                    for (int i4 = 0; i4 < length && i4 <= 10; i4++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i4);
                        if (jSONObject != null) {
                            concurrentLinkedQueue.add(jSONObject.toString());
                        }
                    }
                    b.a(context, "");
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            if (i2 == -1) {
                for (String str : list) {
                    try {
                        if (new JSONObject(str).getInt("rt") != 0) {
                            concurrentLinkedQueue.add(str);
                        }
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
            } else if (i2 == 0) {
                concurrentLinkedQueue.addAll(list);
            }
            while (concurrentLinkedQueue.size() > 10) {
                concurrentLinkedQueue.poll();
            }
        }
        return concurrentLinkedQueue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context) {
        b.a(context, "");
    }
}
