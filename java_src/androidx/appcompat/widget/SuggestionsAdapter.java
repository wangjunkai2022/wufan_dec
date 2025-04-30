package androidx.appcompat.widget;

import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.core.content.ContextCompat;
import androidx.cursoradapter.widget.ResourceCursorAdapter;
import com.facebook.common.util.f;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;
import net.lingala.zip4j.util.e;
/* loaded from: classes.dex */
class SuggestionsAdapter extends ResourceCursorAdapter implements View.OnClickListener {
    private static final boolean A = false;
    private static final String B = "SuggestionsAdapter";
    private static final int C = 50;
    static final int D = 0;
    static final int E = 1;
    static final int F = 2;
    static final int G = -1;

    /* renamed from: m  reason: collision with root package name */
    private final SearchView f1382m;

    /* renamed from: n  reason: collision with root package name */
    private final SearchableInfo f1383n;

    /* renamed from: o  reason: collision with root package name */
    private final Context f1384o;

    /* renamed from: p  reason: collision with root package name */
    private final WeakHashMap<String, Drawable.ConstantState> f1385p;

    /* renamed from: q  reason: collision with root package name */
    private final int f1386q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f1387r;

    /* renamed from: s  reason: collision with root package name */
    private int f1388s;

    /* renamed from: t  reason: collision with root package name */
    private ColorStateList f1389t;

    /* renamed from: u  reason: collision with root package name */
    private int f1390u;

    /* renamed from: v  reason: collision with root package name */
    private int f1391v;

    /* renamed from: w  reason: collision with root package name */
    private int f1392w;

    /* renamed from: x  reason: collision with root package name */
    private int f1393x;

    /* renamed from: y  reason: collision with root package name */
    private int f1394y;

    /* renamed from: z  reason: collision with root package name */
    private int f1395z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class ChildViewCache {
        public final ImageView mIcon1;
        public final ImageView mIcon2;
        public final ImageView mIconRefine;
        public final TextView mText1;
        public final TextView mText2;

        public ChildViewCache(View view) {
            this.mText1 = (TextView) view.findViewById(16908308);
            this.mText2 = (TextView) view.findViewById(16908309);
            this.mIcon1 = (ImageView) view.findViewById(16908295);
            this.mIcon2 = (ImageView) view.findViewById(16908296);
            this.mIconRefine = (ImageView) view.findViewById(R.id.edit_query);
        }
    }

    public SuggestionsAdapter(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), (Cursor) null, true);
        this.f1387r = false;
        this.f1388s = 1;
        this.f1390u = -1;
        this.f1391v = -1;
        this.f1392w = -1;
        this.f1393x = -1;
        this.f1394y = -1;
        this.f1395z = -1;
        this.f1382m = searchView;
        this.f1383n = searchableInfo;
        this.f1386q = searchView.getSuggestionCommitIconResId();
        this.f1384o = context;
        this.f1385p = weakHashMap;
    }

    private Drawable d(String str) {
        Drawable.ConstantState constantState = this.f1385p.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    private CharSequence e(CharSequence charSequence) {
        if (this.f1389t == null) {
            TypedValue typedValue = new TypedValue();
            this.f1384o.getTheme().resolveAttribute(R.attr.textColorSearchUrl, typedValue, true);
            this.f1389t = this.f1384o.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f1389t, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    private Drawable f(ComponentName componentName) {
        PackageManager packageManager = this.f1384o.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Invalid icon resource ");
                sb.append(iconResource);
                sb.append(" for ");
                sb.append(componentName.flattenToShortString());
                return null;
            }
            return drawable;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.toString();
            return null;
        }
    }

    private Drawable g(ComponentName componentName) {
        String flattenToShortString = componentName.flattenToShortString();
        if (this.f1385p.containsKey(flattenToShortString)) {
            Drawable.ConstantState constantState = this.f1385p.get(flattenToShortString);
            if (constantState == null) {
                return null;
            }
            return constantState.newDrawable(this.f1384o.getResources());
        }
        Drawable f4 = f(componentName);
        this.f1385p.put(flattenToShortString, f4 != null ? f4.getConstantState() : null);
        return f4;
    }

    public static String getColumnString(Cursor cursor, String str) {
        return o(cursor, cursor.getColumnIndex(str));
    }

    private Drawable h() {
        Drawable g4 = g(this.f1383n.getSearchActivity());
        return g4 != null ? g4 : this.f1384o.getPackageManager().getDefaultActivityIcon();
    }

    private Drawable i(Uri uri) {
        try {
            if (f.f11772h.equals(uri.getScheme())) {
                try {
                    return j(uri);
                } catch (Resources.NotFoundException unused) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream openInputStream = this.f1384o.getContentResolver().openInputStream(uri);
            if (openInputStream != null) {
                Drawable createFromStream = Drawable.createFromStream(openInputStream, null);
                try {
                    openInputStream.close();
                } catch (IOException unused2) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Error closing icon stream for ");
                    sb.append(uri);
                }
                return createFromStream;
            }
            throw new FileNotFoundException("Failed to open " + uri);
        } catch (FileNotFoundException e4) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Icon not found: ");
            sb2.append(uri);
            sb2.append(", ");
            sb2.append(e4.getMessage());
            return null;
        }
        StringBuilder sb22 = new StringBuilder();
        sb22.append("Icon not found: ");
        sb22.append(uri);
        sb22.append(", ");
        sb22.append(e4.getMessage());
        return null;
    }

    private Drawable k(String str) {
        if (str == null || str.isEmpty() || "0".equals(str)) {
            return null;
        }
        try {
            int parseInt = Integer.parseInt(str);
            String str2 = "android.resource://" + this.f1384o.getPackageName() + e.F0 + parseInt;
            Drawable d4 = d(str2);
            if (d4 != null) {
                return d4;
            }
            Drawable drawable = ContextCompat.getDrawable(this.f1384o, parseInt);
            r(str2, drawable);
            return drawable;
        } catch (Resources.NotFoundException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Icon resource not found: ");
            sb.append(str);
            return null;
        } catch (NumberFormatException unused2) {
            Drawable d5 = d(str);
            if (d5 != null) {
                return d5;
            }
            Drawable i2 = i(Uri.parse(str));
            r(str, i2);
            return i2;
        }
    }

    private Drawable l(Cursor cursor) {
        int i2 = this.f1393x;
        if (i2 == -1) {
            return null;
        }
        Drawable k4 = k(cursor.getString(i2));
        return k4 != null ? k4 : h();
    }

    private Drawable m(Cursor cursor) {
        int i2 = this.f1394y;
        if (i2 == -1) {
            return null;
        }
        return k(cursor.getString(i2));
    }

    private static String o(Cursor cursor, int i2) {
        if (i2 == -1) {
            return null;
        }
        try {
            return cursor.getString(i2);
        } catch (Exception unused) {
            return null;
        }
    }

    private void p(ImageView imageView, Drawable drawable, int i2) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i2);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    private void q(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    private void r(String str, Drawable drawable) {
        if (drawable != null) {
            this.f1385p.put(str, drawable.getConstantState());
        }
    }

    private void s(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        CharSequence o3;
        ChildViewCache childViewCache = (ChildViewCache) view.getTag();
        int i2 = this.f1395z;
        int i4 = i2 != -1 ? cursor.getInt(i2) : 0;
        if (childViewCache.mText1 != null) {
            q(childViewCache.mText1, o(cursor, this.f1390u));
        }
        if (childViewCache.mText2 != null) {
            String o4 = o(cursor, this.f1392w);
            if (o4 != null) {
                o3 = e(o4);
            } else {
                o3 = o(cursor, this.f1391v);
            }
            if (TextUtils.isEmpty(o3)) {
                TextView textView = childViewCache.mText1;
                if (textView != null) {
                    textView.setSingleLine(false);
                    childViewCache.mText1.setMaxLines(2);
                }
            } else {
                TextView textView2 = childViewCache.mText1;
                if (textView2 != null) {
                    textView2.setSingleLine(true);
                    childViewCache.mText1.setMaxLines(1);
                }
            }
            q(childViewCache.mText2, o3);
        }
        ImageView imageView = childViewCache.mIcon1;
        if (imageView != null) {
            p(imageView, l(cursor), 4);
        }
        ImageView imageView2 = childViewCache.mIcon2;
        if (imageView2 != null) {
            p(imageView2, m(cursor), 8);
        }
        int i5 = this.f1388s;
        if (i5 != 2 && (i5 != 1 || (i4 & 1) == 0)) {
            childViewCache.mIconRefine.setVisibility(8);
            return;
        }
        childViewCache.mIconRefine.setVisibility(0);
        childViewCache.mIconRefine.setTag(childViewCache.mText1.getText());
        childViewCache.mIconRefine.setOnClickListener(this);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    public void changeCursor(Cursor cursor) {
        if (this.f1387r) {
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.changeCursor(cursor);
            if (cursor != null) {
                this.f1390u = cursor.getColumnIndex("suggest_text_1");
                this.f1391v = cursor.getColumnIndex("suggest_text_2");
                this.f1392w = cursor.getColumnIndex("suggest_text_2_url");
                this.f1393x = cursor.getColumnIndex("suggest_icon_1");
                this.f1394y = cursor.getColumnIndex("suggest_icon_2");
                this.f1395z = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception unused) {
        }
    }

    public void close() {
        changeCursor(null);
        this.f1387r = true;
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    public CharSequence convertToString(Cursor cursor) {
        String columnString;
        String columnString2;
        if (cursor == null) {
            return null;
        }
        String columnString3 = getColumnString(cursor, "suggest_intent_query");
        if (columnString3 != null) {
            return columnString3;
        }
        if (!this.f1383n.shouldRewriteQueryFromData() || (columnString2 = getColumnString(cursor, "suggest_intent_data")) == null) {
            if (!this.f1383n.shouldRewriteQueryFromText() || (columnString = getColumnString(cursor, "suggest_text_1")) == null) {
                return null;
            }
            return columnString;
        }
        return columnString2;
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i2, view, viewGroup);
        } catch (RuntimeException e4) {
            View newDropDownView = newDropDownView(this.f1384o, getCursor(), viewGroup);
            if (newDropDownView != null) {
                ((ChildViewCache) newDropDownView.getTag()).mText1.setText(e4.toString());
            }
            return newDropDownView;
        }
    }

    public int getQueryRefinement() {
        return this.f1388s;
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i2, view, viewGroup);
        } catch (RuntimeException e4) {
            View newView = newView(this.f1384o, getCursor(), viewGroup);
            if (newView != null) {
                ((ChildViewCache) newView.getTag()).mText1.setText(e4.toString());
            }
            return newView;
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    Drawable j(Uri uri) throws FileNotFoundException {
        int parseInt;
        String authority = uri.getAuthority();
        if (!TextUtils.isEmpty(authority)) {
            try {
                Resources resourcesForApplication = this.f1384o.getPackageManager().getResourcesForApplication(authority);
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments != null) {
                    int size = pathSegments.size();
                    if (size == 1) {
                        try {
                            parseInt = Integer.parseInt(pathSegments.get(0));
                        } catch (NumberFormatException unused) {
                            throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                        }
                    } else if (size == 2) {
                        parseInt = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
                    } else {
                        throw new FileNotFoundException("More than two path segments: " + uri);
                    }
                    if (parseInt != 0) {
                        return resourcesForApplication.getDrawable(parseInt);
                    }
                    throw new FileNotFoundException("No resource found for: " + uri);
                }
                throw new FileNotFoundException("No path: " + uri);
            } catch (PackageManager.NameNotFoundException unused2) {
                throw new FileNotFoundException("No package found for authority: " + uri);
            }
        }
        throw new FileNotFoundException("No authority: " + uri);
    }

    Cursor n(SearchableInfo searchableInfo, String str, int i2) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder fragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            fragment.appendEncodedPath(suggestPath);
        }
        fragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            fragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        if (i2 > 0) {
            fragment.appendQueryParameter("limit", String.valueOf(i2));
        }
        return this.f1384o.getContentResolver().query(fragment.build(), null, suggestSelection, strArr2, null);
    }

    @Override // androidx.cursoradapter.widget.ResourceCursorAdapter, androidx.cursoradapter.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        View newView = super.newView(context, cursor, viewGroup);
        newView.setTag(new ChildViewCache(newView));
        ((ImageView) newView.findViewById(R.id.edit_query)).setImageResource(this.f1386q);
        return newView;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        s(getCursor());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        s(getCursor());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f1382m.M((CharSequence) tag);
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    public Cursor runQueryOnBackgroundThread(CharSequence charSequence) {
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        if (this.f1382m.getVisibility() == 0 && this.f1382m.getWindowVisibility() == 0) {
            try {
                Cursor n4 = n(this.f1383n, charSequence2, 50);
                if (n4 != null) {
                    n4.getCount();
                    return n4;
                }
            } catch (RuntimeException unused) {
            }
        }
        return null;
    }

    public void setQueryRefinement(int i2) {
        this.f1388s = i2;
    }
}
