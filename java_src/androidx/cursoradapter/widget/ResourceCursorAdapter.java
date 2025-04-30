package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public abstract class ResourceCursorAdapter extends CursorAdapter {

    /* renamed from: j  reason: collision with root package name */
    private int f5161j;

    /* renamed from: k  reason: collision with root package name */
    private int f5162k;

    /* renamed from: l  reason: collision with root package name */
    private LayoutInflater f5163l;

    @Deprecated
    public ResourceCursorAdapter(Context context, int i2, Cursor cursor) {
        super(context, cursor);
        this.f5162k = i2;
        this.f5161j = i2;
        this.f5163l = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public View newDropDownView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f5163l.inflate(this.f5162k, viewGroup, false);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f5163l.inflate(this.f5161j, viewGroup, false);
    }

    public void setDropDownViewResource(int i2) {
        this.f5162k = i2;
    }

    public void setViewResource(int i2) {
        this.f5161j = i2;
    }

    @Deprecated
    public ResourceCursorAdapter(Context context, int i2, Cursor cursor, boolean z3) {
        super(context, cursor, z3);
        this.f5162k = i2;
        this.f5161j = i2;
        this.f5163l = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public ResourceCursorAdapter(Context context, int i2, Cursor cursor, int i4) {
        super(context, cursor, i4);
        this.f5162k = i2;
        this.f5161j = i2;
        this.f5163l = (LayoutInflater) context.getSystemService("layout_inflater");
    }
}
