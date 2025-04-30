package androidx.appcompat.widget;

import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import androidx.annotation.RequiresApi;
import androidx.appcompat.resources.Compatibility;
import androidx.core.content.res.ResourcesCompat;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParserException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ResourcesWrapper extends Resources {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f1288a;

    public ResourcesWrapper(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f1288a = resources;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Drawable a(int i2) throws Resources.NotFoundException {
        return super.getDrawable(i2);
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getAnimation(int i2) throws Resources.NotFoundException {
        return this.f1288a.getAnimation(i2);
    }

    @Override // android.content.res.Resources
    public boolean getBoolean(int i2) throws Resources.NotFoundException {
        return this.f1288a.getBoolean(i2);
    }

    @Override // android.content.res.Resources
    public int getColor(int i2) throws Resources.NotFoundException {
        return this.f1288a.getColor(i2);
    }

    @Override // android.content.res.Resources
    public ColorStateList getColorStateList(int i2) throws Resources.NotFoundException {
        return this.f1288a.getColorStateList(i2);
    }

    @Override // android.content.res.Resources
    public Configuration getConfiguration() {
        return this.f1288a.getConfiguration();
    }

    @Override // android.content.res.Resources
    public float getDimension(int i2) throws Resources.NotFoundException {
        return this.f1288a.getDimension(i2);
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelOffset(int i2) throws Resources.NotFoundException {
        return this.f1288a.getDimensionPixelOffset(i2);
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelSize(int i2) throws Resources.NotFoundException {
        return this.f1288a.getDimensionPixelSize(i2);
    }

    @Override // android.content.res.Resources
    public DisplayMetrics getDisplayMetrics() {
        return this.f1288a.getDisplayMetrics();
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i2) throws Resources.NotFoundException {
        return this.f1288a.getDrawable(i2);
    }

    @Override // android.content.res.Resources
    @RequiresApi(15)
    public Drawable getDrawableForDensity(int i2, int i4) throws Resources.NotFoundException {
        return ResourcesCompat.getDrawableForDensity(this.f1288a, i2, i4, null);
    }

    @Override // android.content.res.Resources
    public float getFraction(int i2, int i4, int i5) {
        return this.f1288a.getFraction(i2, i4, i5);
    }

    @Override // android.content.res.Resources
    public int getIdentifier(String str, String str2, String str3) {
        return this.f1288a.getIdentifier(str, str2, str3);
    }

    @Override // android.content.res.Resources
    public int[] getIntArray(int i2) throws Resources.NotFoundException {
        return this.f1288a.getIntArray(i2);
    }

    @Override // android.content.res.Resources
    public int getInteger(int i2) throws Resources.NotFoundException {
        return this.f1288a.getInteger(i2);
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getLayout(int i2) throws Resources.NotFoundException {
        return this.f1288a.getLayout(i2);
    }

    @Override // android.content.res.Resources
    public Movie getMovie(int i2) throws Resources.NotFoundException {
        return this.f1288a.getMovie(i2);
    }

    @Override // android.content.res.Resources
    public String getQuantityString(int i2, int i4, Object... objArr) throws Resources.NotFoundException {
        return this.f1288a.getQuantityString(i2, i4, objArr);
    }

    @Override // android.content.res.Resources
    public CharSequence getQuantityText(int i2, int i4) throws Resources.NotFoundException {
        return this.f1288a.getQuantityText(i2, i4);
    }

    @Override // android.content.res.Resources
    public String getResourceEntryName(int i2) throws Resources.NotFoundException {
        return this.f1288a.getResourceEntryName(i2);
    }

    @Override // android.content.res.Resources
    public String getResourceName(int i2) throws Resources.NotFoundException {
        return this.f1288a.getResourceName(i2);
    }

    @Override // android.content.res.Resources
    public String getResourcePackageName(int i2) throws Resources.NotFoundException {
        return this.f1288a.getResourcePackageName(i2);
    }

    @Override // android.content.res.Resources
    public String getResourceTypeName(int i2) throws Resources.NotFoundException {
        return this.f1288a.getResourceTypeName(i2);
    }

    @Override // android.content.res.Resources
    public String getString(int i2) throws Resources.NotFoundException {
        return this.f1288a.getString(i2);
    }

    @Override // android.content.res.Resources
    public String[] getStringArray(int i2) throws Resources.NotFoundException {
        return this.f1288a.getStringArray(i2);
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int i2) throws Resources.NotFoundException {
        return this.f1288a.getText(i2);
    }

    @Override // android.content.res.Resources
    public CharSequence[] getTextArray(int i2) throws Resources.NotFoundException {
        return this.f1288a.getTextArray(i2);
    }

    @Override // android.content.res.Resources
    public void getValue(int i2, TypedValue typedValue, boolean z3) throws Resources.NotFoundException {
        this.f1288a.getValue(i2, typedValue, z3);
    }

    @Override // android.content.res.Resources
    @RequiresApi(15)
    public void getValueForDensity(int i2, int i4, TypedValue typedValue, boolean z3) throws Resources.NotFoundException {
        Compatibility.Api15Impl.getValueForDensity(this.f1288a, i2, i4, typedValue, z3);
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getXml(int i2) throws Resources.NotFoundException {
        return this.f1288a.getXml(i2);
    }

    @Override // android.content.res.Resources
    public TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        return this.f1288a.obtainAttributes(attributeSet, iArr);
    }

    @Override // android.content.res.Resources
    public TypedArray obtainTypedArray(int i2) throws Resources.NotFoundException {
        return this.f1288a.obtainTypedArray(i2);
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int i2) throws Resources.NotFoundException {
        return this.f1288a.openRawResource(i2);
    }

    @Override // android.content.res.Resources
    public AssetFileDescriptor openRawResourceFd(int i2) throws Resources.NotFoundException {
        return this.f1288a.openRawResourceFd(i2);
    }

    @Override // android.content.res.Resources
    public void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        this.f1288a.parseBundleExtra(str, attributeSet, bundle);
    }

    @Override // android.content.res.Resources
    public void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) throws XmlPullParserException, IOException {
        this.f1288a.parseBundleExtras(xmlResourceParser, bundle);
    }

    @Override // android.content.res.Resources
    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
        Resources resources = this.f1288a;
        if (resources != null) {
            resources.updateConfiguration(configuration, displayMetrics);
        }
    }

    @Override // android.content.res.Resources
    @RequiresApi(21)
    public Drawable getDrawable(int i2, Resources.Theme theme) throws Resources.NotFoundException {
        return ResourcesCompat.getDrawable(this.f1288a, i2, theme);
    }

    @Override // android.content.res.Resources
    @RequiresApi(21)
    public Drawable getDrawableForDensity(int i2, int i4, Resources.Theme theme) {
        return ResourcesCompat.getDrawableForDensity(this.f1288a, i2, i4, theme);
    }

    @Override // android.content.res.Resources
    public String getQuantityString(int i2, int i4) throws Resources.NotFoundException {
        return this.f1288a.getQuantityString(i2, i4);
    }

    @Override // android.content.res.Resources
    public String getString(int i2, Object... objArr) throws Resources.NotFoundException {
        return this.f1288a.getString(i2, objArr);
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int i2, CharSequence charSequence) {
        return this.f1288a.getText(i2, charSequence);
    }

    @Override // android.content.res.Resources
    public void getValue(String str, TypedValue typedValue, boolean z3) throws Resources.NotFoundException {
        this.f1288a.getValue(str, typedValue, z3);
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int i2, TypedValue typedValue) throws Resources.NotFoundException {
        return this.f1288a.openRawResource(i2, typedValue);
    }
}
