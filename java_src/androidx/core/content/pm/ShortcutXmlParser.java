package androidx.core.content.pm;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ShortcutXmlParser {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4174a = "ShortcutXmlParser";

    /* renamed from: b  reason: collision with root package name */
    private static final String f4175b = "android.app.shortcuts";

    /* renamed from: c  reason: collision with root package name */
    private static final String f4176c = "shortcut";

    /* renamed from: d  reason: collision with root package name */
    private static final String f4177d = "shortcutId";

    /* renamed from: e  reason: collision with root package name */
    private static volatile ArrayList<String> f4178e;

    /* renamed from: f  reason: collision with root package name */
    private static final Object f4179f = new Object();

    private ShortcutXmlParser() {
    }

    private static String a(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str);
        return attributeValue == null ? xmlPullParser.getAttributeValue(null, str) : attributeValue;
    }

    @NonNull
    private static XmlResourceParser b(Context context, ActivityInfo activityInfo) {
        XmlResourceParser loadXmlMetaData = activityInfo.loadXmlMetaData(context.getPackageManager(), f4175b);
        if (loadXmlMetaData != null) {
            return loadXmlMetaData;
        }
        throw new IllegalArgumentException("Failed to open android.app.shortcuts meta-data resource of " + activityInfo.name);
    }

    @NonNull
    private static Set<String> c(@NonNull Context context) {
        HashSet hashSet = new HashSet();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 128);
        if (queryIntentActivities != null && queryIntentActivities.size() != 0) {
            try {
                for (ResolveInfo resolveInfo : queryIntentActivities) {
                    ActivityInfo activityInfo = resolveInfo.activityInfo;
                    Bundle bundle = activityInfo.metaData;
                    if (bundle != null && bundle.containsKey(f4175b)) {
                        XmlResourceParser b4 = b(context, activityInfo);
                        hashSet.addAll(parseShortcutIds(b4));
                        if (b4 != null) {
                            b4.close();
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return hashSet;
    }

    @NonNull
    @WorkerThread
    public static List<String> getShortcutIds(@NonNull Context context) {
        if (f4178e == null) {
            synchronized (f4179f) {
                if (f4178e == null) {
                    f4178e = new ArrayList<>();
                    f4178e.addAll(c(context));
                }
            }
        }
        return f4178e;
    }

    @NonNull
    @VisibleForTesting
    public static List<String> parseShortcutIds(@NonNull XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        String a4;
        ArrayList arrayList = new ArrayList(1);
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= 0)) {
                break;
            }
            int depth = xmlPullParser.getDepth();
            String name = xmlPullParser.getName();
            if (next == 2 && depth == 2 && f4176c.equals(name) && (a4 = a(xmlPullParser, f4177d)) != null) {
                arrayList.add(a4);
            }
        }
        return arrayList;
    }
}
