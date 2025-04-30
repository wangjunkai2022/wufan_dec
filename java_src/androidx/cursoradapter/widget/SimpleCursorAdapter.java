package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
/* loaded from: classes.dex */
public class SimpleCursorAdapter extends ResourceCursorAdapter {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: m  reason: collision with root package name */
    protected int[] f5164m;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: n  reason: collision with root package name */
    protected int[] f5165n;

    /* renamed from: o  reason: collision with root package name */
    private int f5166o;

    /* renamed from: p  reason: collision with root package name */
    private CursorToStringConverter f5167p;

    /* renamed from: q  reason: collision with root package name */
    private ViewBinder f5168q;

    /* renamed from: r  reason: collision with root package name */
    String[] f5169r;

    /* loaded from: classes.dex */
    public interface CursorToStringConverter {
        CharSequence convertToString(Cursor cursor);
    }

    /* loaded from: classes.dex */
    public interface ViewBinder {
        boolean setViewValue(View view, Cursor cursor, int i2);
    }

    @Deprecated
    public SimpleCursorAdapter(Context context, int i2, Cursor cursor, String[] strArr, int[] iArr) {
        super(context, i2, cursor);
        this.f5166o = -1;
        this.f5165n = iArr;
        this.f5169r = strArr;
        d(cursor, strArr);
    }

    private void d(Cursor cursor, String[] strArr) {
        if (cursor != null) {
            int length = strArr.length;
            int[] iArr = this.f5164m;
            if (iArr == null || iArr.length != length) {
                this.f5164m = new int[length];
            }
            for (int i2 = 0; i2 < length; i2++) {
                this.f5164m[i2] = cursor.getColumnIndexOrThrow(strArr[i2]);
            }
            return;
        }
        this.f5164m = null;
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        ViewBinder viewBinder = this.f5168q;
        int[] iArr = this.f5165n;
        int length = iArr.length;
        int[] iArr2 = this.f5164m;
        for (int i2 = 0; i2 < length; i2++) {
            View findViewById = view.findViewById(iArr[i2]);
            if (findViewById != null) {
                if (viewBinder != null ? viewBinder.setViewValue(findViewById, cursor, iArr2[i2]) : false) {
                    continue;
                } else {
                    String string = cursor.getString(iArr2[i2]);
                    if (string == null) {
                        string = "";
                    }
                    if (findViewById instanceof TextView) {
                        setViewText((TextView) findViewById, string);
                    } else if (findViewById instanceof ImageView) {
                        setViewImage((ImageView) findViewById, string);
                    } else {
                        throw new IllegalStateException(findViewById.getClass().getName() + " is not a  view that can be bounds by this SimpleCursorAdapter");
                    }
                }
            }
        }
    }

    public void changeCursorAndColumns(Cursor cursor, String[] strArr, int[] iArr) {
        this.f5169r = strArr;
        this.f5165n = iArr;
        d(cursor, strArr);
        super.changeCursor(cursor);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    public CharSequence convertToString(Cursor cursor) {
        CursorToStringConverter cursorToStringConverter = this.f5167p;
        if (cursorToStringConverter != null) {
            return cursorToStringConverter.convertToString(cursor);
        }
        int i2 = this.f5166o;
        if (i2 > -1) {
            return cursor.getString(i2);
        }
        return super.convertToString(cursor);
    }

    public CursorToStringConverter getCursorToStringConverter() {
        return this.f5167p;
    }

    public int getStringConversionColumn() {
        return this.f5166o;
    }

    public ViewBinder getViewBinder() {
        return this.f5168q;
    }

    public void setCursorToStringConverter(CursorToStringConverter cursorToStringConverter) {
        this.f5167p = cursorToStringConverter;
    }

    public void setStringConversionColumn(int i2) {
        this.f5166o = i2;
    }

    public void setViewBinder(ViewBinder viewBinder) {
        this.f5168q = viewBinder;
    }

    public void setViewImage(ImageView imageView, String str) {
        try {
            imageView.setImageResource(Integer.parseInt(str));
        } catch (NumberFormatException unused) {
            imageView.setImageURI(Uri.parse(str));
        }
    }

    public void setViewText(TextView textView, String str) {
        textView.setText(str);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public Cursor swapCursor(Cursor cursor) {
        d(cursor, this.f5169r);
        return super.swapCursor(cursor);
    }

    public SimpleCursorAdapter(Context context, int i2, Cursor cursor, String[] strArr, int[] iArr, int i4) {
        super(context, i2, cursor, i4);
        this.f5166o = -1;
        this.f5165n = iArr;
        this.f5169r = strArr;
        d(cursor, strArr);
    }
}
