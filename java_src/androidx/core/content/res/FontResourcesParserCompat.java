package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.ArrayRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.R;
import androidx.core.provider.FontRequest;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class FontResourcesParserCompat {
    public static final int FETCH_STRATEGY_ASYNC = 1;
    public static final int FETCH_STRATEGY_BLOCKING = 0;
    public static final int INFINITE_TIMEOUT_VALUE = -1;

    /* renamed from: a  reason: collision with root package name */
    private static final int f4202a = 400;

    /* renamed from: b  reason: collision with root package name */
    private static final int f4203b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final int f4204c = 500;

    /* loaded from: classes.dex */
    public interface FamilyResourceEntry {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface FetchStrategy {
    }

    /* loaded from: classes.dex */
    public static final class FontFamilyFilesResourceEntry implements FamilyResourceEntry {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final FontFileResourceEntry[] f4205a;

        public FontFamilyFilesResourceEntry(@NonNull FontFileResourceEntry[] fontFileResourceEntryArr) {
            this.f4205a = fontFileResourceEntryArr;
        }

        @NonNull
        public FontFileResourceEntry[] getEntries() {
            return this.f4205a;
        }
    }

    /* loaded from: classes.dex */
    public static final class FontFileResourceEntry {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final String f4206a;

        /* renamed from: b  reason: collision with root package name */
        private int f4207b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f4208c;

        /* renamed from: d  reason: collision with root package name */
        private String f4209d;

        /* renamed from: e  reason: collision with root package name */
        private int f4210e;

        /* renamed from: f  reason: collision with root package name */
        private int f4211f;

        public FontFileResourceEntry(@NonNull String str, int i2, boolean z3, @Nullable String str2, int i4, int i5) {
            this.f4206a = str;
            this.f4207b = i2;
            this.f4208c = z3;
            this.f4209d = str2;
            this.f4210e = i4;
            this.f4211f = i5;
        }

        @NonNull
        public String getFileName() {
            return this.f4206a;
        }

        public int getResourceId() {
            return this.f4211f;
        }

        public int getTtcIndex() {
            return this.f4210e;
        }

        @Nullable
        public String getVariationSettings() {
            return this.f4209d;
        }

        public int getWeight() {
            return this.f4207b;
        }

        public boolean isItalic() {
            return this.f4208c;
        }
    }

    private FontResourcesParserCompat() {
    }

    @Nullable
    private static FamilyResourceEntry a(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return b(xmlPullParser, resources);
        }
        d(xmlPullParser);
        return null;
    }

    @Nullable
    private static FamilyResourceEntry b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.FontFamily);
        String string = obtainAttributes.getString(R.styleable.FontFamily_fontProviderAuthority);
        String string2 = obtainAttributes.getString(R.styleable.FontFamily_fontProviderPackage);
        String string3 = obtainAttributes.getString(R.styleable.FontFamily_fontProviderQuery);
        int resourceId = obtainAttributes.getResourceId(R.styleable.FontFamily_fontProviderCerts, 0);
        int integer = obtainAttributes.getInteger(R.styleable.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = obtainAttributes.getInteger(R.styleable.FontFamily_fontProviderFetchTimeout, 500);
        String string4 = obtainAttributes.getString(R.styleable.FontFamily_fontProviderSystemFontFamily);
        obtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                d(xmlPullParser);
            }
            return new ProviderResourceEntry(new FontRequest(string, string2, string3, readCerts(resources, resourceId)), integer, integer2, string4);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(c(xmlPullParser, resources));
                } else {
                    d(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new FontFamilyFilesResourceEntry((FontFileResourceEntry[]) arrayList.toArray(new FontFileResourceEntry[arrayList.size()]));
    }

    private static FontFileResourceEntry c(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.FontFamilyFont);
        int i2 = R.styleable.FontFamilyFont_fontWeight;
        if (!obtainAttributes.hasValue(i2)) {
            i2 = R.styleable.FontFamilyFont_android_fontWeight;
        }
        int i4 = obtainAttributes.getInt(i2, 400);
        int i5 = R.styleable.FontFamilyFont_fontStyle;
        if (!obtainAttributes.hasValue(i5)) {
            i5 = R.styleable.FontFamilyFont_android_fontStyle;
        }
        boolean z3 = 1 == obtainAttributes.getInt(i5, 0);
        int i6 = R.styleable.FontFamilyFont_ttcIndex;
        if (!obtainAttributes.hasValue(i6)) {
            i6 = R.styleable.FontFamilyFont_android_ttcIndex;
        }
        int i7 = R.styleable.FontFamilyFont_fontVariationSettings;
        if (!obtainAttributes.hasValue(i7)) {
            i7 = R.styleable.FontFamilyFont_android_fontVariationSettings;
        }
        String string = obtainAttributes.getString(i7);
        int i8 = obtainAttributes.getInt(i6, 0);
        int i9 = R.styleable.FontFamilyFont_font;
        if (!obtainAttributes.hasValue(i9)) {
            i9 = R.styleable.FontFamilyFont_android_font;
        }
        int resourceId = obtainAttributes.getResourceId(i9, 0);
        String string2 = obtainAttributes.getString(i9);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            d(xmlPullParser);
        }
        return new FontFileResourceEntry(string2, i4, z3, string, i8, resourceId);
    }

    private static void d(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i2 = 1;
        while (i2 > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i2++;
            } else if (next == 3) {
                i2--;
            }
        }
    }

    private static List<byte[]> e(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    private static int getType(TypedArray typedArray, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i2);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i2, typedValue);
        return typedValue.type;
    }

    @Nullable
    public static FamilyResourceEntry parse(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return a(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static List<List<byte[]>> readCerts(Resources resources, @ArrayRes int i2) {
        if (i2 == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i2);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (getType(obtainTypedArray, 0) == 1) {
                for (int i4 = 0; i4 < obtainTypedArray.length(); i4++) {
                    int resourceId = obtainTypedArray.getResourceId(i4, 0);
                    if (resourceId != 0) {
                        arrayList.add(e(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(e(resources.getStringArray(i2)));
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    /* loaded from: classes.dex */
    public static final class ProviderResourceEntry implements FamilyResourceEntry {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final FontRequest f4212a;

        /* renamed from: b  reason: collision with root package name */
        private final int f4213b;

        /* renamed from: c  reason: collision with root package name */
        private final int f4214c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final String f4215d;

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public ProviderResourceEntry(@NonNull FontRequest fontRequest, int i2, int i4, @Nullable String str) {
            this.f4212a = fontRequest;
            this.f4214c = i2;
            this.f4213b = i4;
            this.f4215d = str;
        }

        public int getFetchStrategy() {
            return this.f4214c;
        }

        @NonNull
        public FontRequest getRequest() {
            return this.f4212a;
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public String getSystemFontFamilyName() {
            return this.f4215d;
        }

        public int getTimeout() {
            return this.f4213b;
        }

        public ProviderResourceEntry(@NonNull FontRequest fontRequest, int i2, int i4) {
            this(fontRequest, i2, i4, null);
        }
    }
}
