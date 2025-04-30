package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.LayoutRes;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ActionProvider;
import androidx.core.view.MenuItemCompat;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class SupportMenuInflater extends MenuInflater {

    /* renamed from: e  reason: collision with root package name */
    static final String f465e = "SupportMenuInflater";

    /* renamed from: f  reason: collision with root package name */
    private static final String f466f = "menu";

    /* renamed from: g  reason: collision with root package name */
    private static final String f467g = "group";

    /* renamed from: h  reason: collision with root package name */
    private static final String f468h = "item";

    /* renamed from: i  reason: collision with root package name */
    static final int f469i = 0;

    /* renamed from: j  reason: collision with root package name */
    static final Class<?>[] f470j;

    /* renamed from: k  reason: collision with root package name */
    static final Class<?>[] f471k;

    /* renamed from: a  reason: collision with root package name */
    final Object[] f472a;

    /* renamed from: b  reason: collision with root package name */
    final Object[] f473b;

    /* renamed from: c  reason: collision with root package name */
    Context f474c;

    /* renamed from: d  reason: collision with root package name */
    private Object f475d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class InflatedOnMenuItemClickListener implements MenuItem.OnMenuItemClickListener {

        /* renamed from: c  reason: collision with root package name */
        private static final Class<?>[] f476c = {MenuItem.class};

        /* renamed from: a  reason: collision with root package name */
        private Object f477a;

        /* renamed from: b  reason: collision with root package name */
        private Method f478b;

        public InflatedOnMenuItemClickListener(Object obj, String str) {
            this.f477a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f478b = cls.getMethod(str, f476c);
            } catch (Exception e4) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e4);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f478b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f478b.invoke(this.f477a, menuItem)).booleanValue();
                }
                this.f478b.invoke(this.f477a, menuItem);
                return true;
            } catch (Exception e4) {
                throw new RuntimeException(e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class MenuState {
        private static final int G = 0;
        private static final int H = 0;
        private static final int I = 0;
        private static final int J = 0;
        private static final int K = 0;
        private static final boolean L = false;
        private static final boolean M = true;
        private static final boolean N = true;
        ActionProvider A;
        private CharSequence B;
        private CharSequence C;
        private ColorStateList D = null;
        private PorterDuff.Mode E = null;

        /* renamed from: a  reason: collision with root package name */
        private Menu f479a;

        /* renamed from: b  reason: collision with root package name */
        private int f480b;

        /* renamed from: c  reason: collision with root package name */
        private int f481c;

        /* renamed from: d  reason: collision with root package name */
        private int f482d;

        /* renamed from: e  reason: collision with root package name */
        private int f483e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f484f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f485g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f486h;

        /* renamed from: i  reason: collision with root package name */
        private int f487i;

        /* renamed from: j  reason: collision with root package name */
        private int f488j;

        /* renamed from: k  reason: collision with root package name */
        private CharSequence f489k;

        /* renamed from: l  reason: collision with root package name */
        private CharSequence f490l;

        /* renamed from: m  reason: collision with root package name */
        private int f491m;

        /* renamed from: n  reason: collision with root package name */
        private char f492n;

        /* renamed from: o  reason: collision with root package name */
        private int f493o;

        /* renamed from: p  reason: collision with root package name */
        private char f494p;

        /* renamed from: q  reason: collision with root package name */
        private int f495q;

        /* renamed from: r  reason: collision with root package name */
        private int f496r;

        /* renamed from: s  reason: collision with root package name */
        private boolean f497s;

        /* renamed from: t  reason: collision with root package name */
        private boolean f498t;

        /* renamed from: u  reason: collision with root package name */
        private boolean f499u;

        /* renamed from: v  reason: collision with root package name */
        private int f500v;

        /* renamed from: w  reason: collision with root package name */
        private int f501w;

        /* renamed from: x  reason: collision with root package name */
        private String f502x;

        /* renamed from: y  reason: collision with root package name */
        private String f503y;

        /* renamed from: z  reason: collision with root package name */
        private String f504z;

        public MenuState(Menu menu) {
            this.f479a = menu;
            resetGroup();
        }

        private char a(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        private <T> T b(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, SupportMenuInflater.this.f474c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("Cannot instantiate class: ");
                sb.append(str);
                return null;
            }
        }

        private void c(MenuItem menuItem) {
            boolean z3 = false;
            menuItem.setChecked(this.f497s).setVisible(this.f498t).setEnabled(this.f499u).setCheckable(this.f496r >= 1).setTitleCondensed(this.f490l).setIcon(this.f491m);
            int i2 = this.f500v;
            if (i2 >= 0) {
                menuItem.setShowAsAction(i2);
            }
            if (this.f504z != null) {
                if (!SupportMenuInflater.this.f474c.isRestricted()) {
                    menuItem.setOnMenuItemClickListener(new InflatedOnMenuItemClickListener(SupportMenuInflater.this.b(), this.f504z));
                } else {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
            }
            if (this.f496r >= 2) {
                if (menuItem instanceof MenuItemImpl) {
                    ((MenuItemImpl) menuItem).setExclusiveCheckable(true);
                } else if (menuItem instanceof MenuItemWrapperICS) {
                    ((MenuItemWrapperICS) menuItem).setExclusiveCheckable(true);
                }
            }
            String str = this.f502x;
            if (str != null) {
                menuItem.setActionView((View) b(str, SupportMenuInflater.f470j, SupportMenuInflater.this.f472a));
                z3 = true;
            }
            int i4 = this.f501w;
            if (i4 > 0 && !z3) {
                menuItem.setActionView(i4);
            }
            ActionProvider actionProvider = this.A;
            if (actionProvider != null) {
                MenuItemCompat.setActionProvider(menuItem, actionProvider);
            }
            MenuItemCompat.setContentDescription(menuItem, this.B);
            MenuItemCompat.setTooltipText(menuItem, this.C);
            MenuItemCompat.setAlphabeticShortcut(menuItem, this.f492n, this.f493o);
            MenuItemCompat.setNumericShortcut(menuItem, this.f494p, this.f495q);
            PorterDuff.Mode mode = this.E;
            if (mode != null) {
                MenuItemCompat.setIconTintMode(menuItem, mode);
            }
            ColorStateList colorStateList = this.D;
            if (colorStateList != null) {
                MenuItemCompat.setIconTintList(menuItem, colorStateList);
            }
        }

        public void addItem() {
            this.f486h = true;
            c(this.f479a.add(this.f480b, this.f487i, this.f488j, this.f489k));
        }

        public SubMenu addSubMenuItem() {
            this.f486h = true;
            SubMenu addSubMenu = this.f479a.addSubMenu(this.f480b, this.f487i, this.f488j, this.f489k);
            c(addSubMenu.getItem());
            return addSubMenu;
        }

        public boolean hasAddedItem() {
            return this.f486h;
        }

        public void readGroup(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = SupportMenuInflater.this.f474c.obtainStyledAttributes(attributeSet, R.styleable.MenuGroup);
            this.f480b = obtainStyledAttributes.getResourceId(R.styleable.MenuGroup_android_id, 0);
            this.f481c = obtainStyledAttributes.getInt(R.styleable.MenuGroup_android_menuCategory, 0);
            this.f482d = obtainStyledAttributes.getInt(R.styleable.MenuGroup_android_orderInCategory, 0);
            this.f483e = obtainStyledAttributes.getInt(R.styleable.MenuGroup_android_checkableBehavior, 0);
            this.f484f = obtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_visible, true);
            this.f485g = obtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_enabled, true);
            obtainStyledAttributes.recycle();
        }

        public void readItem(AttributeSet attributeSet) {
            TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(SupportMenuInflater.this.f474c, attributeSet, R.styleable.MenuItem);
            this.f487i = obtainStyledAttributes.getResourceId(R.styleable.MenuItem_android_id, 0);
            this.f488j = (obtainStyledAttributes.getInt(R.styleable.MenuItem_android_menuCategory, this.f481c) & SupportMenu.CATEGORY_MASK) | (obtainStyledAttributes.getInt(R.styleable.MenuItem_android_orderInCategory, this.f482d) & 65535);
            this.f489k = obtainStyledAttributes.getText(R.styleable.MenuItem_android_title);
            this.f490l = obtainStyledAttributes.getText(R.styleable.MenuItem_android_titleCondensed);
            this.f491m = obtainStyledAttributes.getResourceId(R.styleable.MenuItem_android_icon, 0);
            this.f492n = a(obtainStyledAttributes.getString(R.styleable.MenuItem_android_alphabeticShortcut));
            this.f493o = obtainStyledAttributes.getInt(R.styleable.MenuItem_alphabeticModifiers, 4096);
            this.f494p = a(obtainStyledAttributes.getString(R.styleable.MenuItem_android_numericShortcut));
            this.f495q = obtainStyledAttributes.getInt(R.styleable.MenuItem_numericModifiers, 4096);
            int i2 = R.styleable.MenuItem_android_checkable;
            if (obtainStyledAttributes.hasValue(i2)) {
                this.f496r = obtainStyledAttributes.getBoolean(i2, false) ? 1 : 0;
            } else {
                this.f496r = this.f483e;
            }
            this.f497s = obtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_checked, false);
            this.f498t = obtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_visible, this.f484f);
            this.f499u = obtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_enabled, this.f485g);
            this.f500v = obtainStyledAttributes.getInt(R.styleable.MenuItem_showAsAction, -1);
            this.f504z = obtainStyledAttributes.getString(R.styleable.MenuItem_android_onClick);
            this.f501w = obtainStyledAttributes.getResourceId(R.styleable.MenuItem_actionLayout, 0);
            this.f502x = obtainStyledAttributes.getString(R.styleable.MenuItem_actionViewClass);
            String string = obtainStyledAttributes.getString(R.styleable.MenuItem_actionProviderClass);
            this.f503y = string;
            if ((string != null) && this.f501w == 0 && this.f502x == null) {
                this.A = (ActionProvider) b(string, SupportMenuInflater.f471k, SupportMenuInflater.this.f473b);
            } else {
                this.A = null;
            }
            this.B = obtainStyledAttributes.getText(R.styleable.MenuItem_contentDescription);
            this.C = obtainStyledAttributes.getText(R.styleable.MenuItem_tooltipText);
            int i4 = R.styleable.MenuItem_iconTintMode;
            if (obtainStyledAttributes.hasValue(i4)) {
                this.E = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(i4, -1), this.E);
            } else {
                this.E = null;
            }
            int i5 = R.styleable.MenuItem_iconTint;
            if (obtainStyledAttributes.hasValue(i5)) {
                this.D = obtainStyledAttributes.getColorStateList(i5);
            } else {
                this.D = null;
            }
            obtainStyledAttributes.recycle();
            this.f486h = false;
        }

        public void resetGroup() {
            this.f480b = 0;
            this.f481c = 0;
            this.f482d = 0;
            this.f483e = 0;
            this.f484f = true;
            this.f485g = true;
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f470j = clsArr;
        f471k = clsArr;
    }

    public SupportMenuInflater(Context context) {
        super(context);
        this.f474c = context;
        Object[] objArr = {context};
        this.f472a = objArr;
        this.f473b = objArr;
    }

    private Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003b, code lost:
        r8 = null;
        r6 = false;
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        if (r6 != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
        if (r15 == 1) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0048, code lost:
        if (r15 == 2) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004b, code lost:
        if (r15 == 3) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004f, code lost:
        r15 = r13.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0053, code lost:
        if (r7 == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0059, code lost:
        if (r15.equals(r8) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005b, code lost:
        r8 = null;
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0062, code lost:
        if (r15.equals(androidx.appcompat.view.SupportMenuInflater.f467g) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0064, code lost:
        r0.resetGroup();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006c, code lost:
        if (r15.equals(androidx.appcompat.view.SupportMenuInflater.f468h) == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0072, code lost:
        if (r0.hasAddedItem() != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0074, code lost:
        r15 = r0.A;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0076, code lost:
        if (r15 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007c, code lost:
        if (r15.hasSubMenu() == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007e, code lost:
        r0.addSubMenuItem();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0082, code lost:
        r0.addItem();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008a, code lost:
        if (r15.equals(androidx.appcompat.view.SupportMenuInflater.f466f) == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008c, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008e, code lost:
        if (r7 == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0091, code lost:
        r15 = r13.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0099, code lost:
        if (r15.equals(androidx.appcompat.view.SupportMenuInflater.f467g) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x009b, code lost:
        r0.readGroup(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a3, code lost:
        if (r15.equals(androidx.appcompat.view.SupportMenuInflater.f468h) == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a5, code lost:
        r0.readItem(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ad, code lost:
        if (r15.equals(androidx.appcompat.view.SupportMenuInflater.f466f) == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00af, code lost:
        c(r13, r14, r0.addSubMenuItem());
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b7, code lost:
        r8 = r15;
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b9, code lost:
        r15 = r13.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00c5, code lost:
        throw new java.lang.RuntimeException("Unexpected end of document");
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00c6, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c(org.xmlpull.v1.XmlPullParser r13, android.util.AttributeSet r14, android.view.Menu r15) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r12 = this;
            androidx.appcompat.view.SupportMenuInflater$MenuState r0 = new androidx.appcompat.view.SupportMenuInflater$MenuState
            r0.<init>(r15)
            int r15 = r13.getEventType()
        L9:
            r1 = 2
            java.lang.String r2 = "menu"
            r3 = 1
            if (r15 != r1) goto L35
            java.lang.String r15 = r13.getName()
            boolean r4 = r15.equals(r2)
            if (r4 == 0) goto L1e
            int r15 = r13.next()
            goto L3b
        L1e:
            java.lang.RuntimeException r13 = new java.lang.RuntimeException
            java.lang.StringBuilder r14 = new java.lang.StringBuilder
            r14.<init>()
            java.lang.String r0 = "Expecting menu, got "
            r14.append(r0)
            r14.append(r15)
            java.lang.String r14 = r14.toString()
            r13.<init>(r14)
            throw r13
        L35:
            int r15 = r13.next()
            if (r15 != r3) goto L9
        L3b:
            r4 = 0
            r5 = 0
            r8 = r4
            r6 = 0
            r7 = 0
        L40:
            if (r6 != 0) goto Lc6
            if (r15 == r3) goto Lbe
            java.lang.String r9 = "item"
            java.lang.String r10 = "group"
            if (r15 == r1) goto L8e
            r11 = 3
            if (r15 == r11) goto L4f
            goto Lb9
        L4f:
            java.lang.String r15 = r13.getName()
            if (r7 == 0) goto L5e
            boolean r11 = r15.equals(r8)
            if (r11 == 0) goto L5e
            r8 = r4
            r7 = 0
            goto Lb9
        L5e:
            boolean r10 = r15.equals(r10)
            if (r10 == 0) goto L68
            r0.resetGroup()
            goto Lb9
        L68:
            boolean r9 = r15.equals(r9)
            if (r9 == 0) goto L86
            boolean r15 = r0.hasAddedItem()
            if (r15 != 0) goto Lb9
            androidx.core.view.ActionProvider r15 = r0.A
            if (r15 == 0) goto L82
            boolean r15 = r15.hasSubMenu()
            if (r15 == 0) goto L82
            r0.addSubMenuItem()
            goto Lb9
        L82:
            r0.addItem()
            goto Lb9
        L86:
            boolean r15 = r15.equals(r2)
            if (r15 == 0) goto Lb9
            r6 = 1
            goto Lb9
        L8e:
            if (r7 == 0) goto L91
            goto Lb9
        L91:
            java.lang.String r15 = r13.getName()
            boolean r10 = r15.equals(r10)
            if (r10 == 0) goto L9f
            r0.readGroup(r14)
            goto Lb9
        L9f:
            boolean r9 = r15.equals(r9)
            if (r9 == 0) goto La9
            r0.readItem(r14)
            goto Lb9
        La9:
            boolean r9 = r15.equals(r2)
            if (r9 == 0) goto Lb7
            android.view.SubMenu r15 = r0.addSubMenuItem()
            r12.c(r13, r14, r15)
            goto Lb9
        Lb7:
            r8 = r15
            r7 = 1
        Lb9:
            int r15 = r13.next()
            goto L40
        Lbe:
            java.lang.RuntimeException r13 = new java.lang.RuntimeException
            java.lang.String r14 = "Unexpected end of document"
            r13.<init>(r14)
            throw r13
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.SupportMenuInflater.c(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.view.Menu):void");
    }

    Object b() {
        if (this.f475d == null) {
            this.f475d = a(this.f474c);
        }
        return this.f475d;
    }

    @Override // android.view.MenuInflater
    public void inflate(@LayoutRes int i2, Menu menu) {
        if (!(menu instanceof SupportMenu)) {
            super.inflate(i2, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    xmlResourceParser = this.f474c.getResources().getLayout(i2);
                    c(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
                } catch (XmlPullParserException e4) {
                    throw new InflateException("Error inflating menu XML", e4);
                }
            } catch (IOException e5) {
                throw new InflateException("Error inflating menu XML", e5);
            }
        } finally {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        }
    }
}
