package androidx.core.view.accessibility;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.R;
import androidx.core.os.BuildCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class AccessibilityNodeInfoCompat {
    public static final int ACTION_ACCESSIBILITY_FOCUS = 64;
    public static final String ACTION_ARGUMENT_COLUMN_INT = "android.view.accessibility.action.ARGUMENT_COLUMN_INT";
    public static final String ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN";
    public static final String ACTION_ARGUMENT_HTML_ELEMENT_STRING = "ACTION_ARGUMENT_HTML_ELEMENT_STRING";
    public static final String ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT";
    public static final String ACTION_ARGUMENT_MOVE_WINDOW_X = "ACTION_ARGUMENT_MOVE_WINDOW_X";
    public static final String ACTION_ARGUMENT_MOVE_WINDOW_Y = "ACTION_ARGUMENT_MOVE_WINDOW_Y";
    @SuppressLint({"ActionValue"})
    public static final String ACTION_ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT = "android.view.accessibility.action.ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT";
    public static final String ACTION_ARGUMENT_PROGRESS_VALUE = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE";
    public static final String ACTION_ARGUMENT_ROW_INT = "android.view.accessibility.action.ARGUMENT_ROW_INT";
    public static final String ACTION_ARGUMENT_SELECTION_END_INT = "ACTION_ARGUMENT_SELECTION_END_INT";
    public static final String ACTION_ARGUMENT_SELECTION_START_INT = "ACTION_ARGUMENT_SELECTION_START_INT";
    public static final String ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE";
    public static final int ACTION_CLEAR_ACCESSIBILITY_FOCUS = 128;
    public static final int ACTION_CLEAR_FOCUS = 2;
    public static final int ACTION_CLEAR_SELECTION = 8;
    public static final int ACTION_CLICK = 16;
    public static final int ACTION_COLLAPSE = 524288;
    public static final int ACTION_COPY = 16384;
    public static final int ACTION_CUT = 65536;
    public static final int ACTION_DISMISS = 1048576;
    public static final int ACTION_EXPAND = 262144;
    public static final int ACTION_FOCUS = 1;
    public static final int ACTION_LONG_CLICK = 32;
    public static final int ACTION_NEXT_AT_MOVEMENT_GRANULARITY = 256;
    public static final int ACTION_NEXT_HTML_ELEMENT = 1024;
    public static final int ACTION_PASTE = 32768;
    public static final int ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = 512;
    public static final int ACTION_PREVIOUS_HTML_ELEMENT = 2048;
    public static final int ACTION_SCROLL_BACKWARD = 8192;
    public static final int ACTION_SCROLL_FORWARD = 4096;
    public static final int ACTION_SELECT = 4;
    public static final int ACTION_SET_SELECTION = 131072;
    public static final int ACTION_SET_TEXT = 2097152;
    public static final int FOCUS_ACCESSIBILITY = 2;
    public static final int FOCUS_INPUT = 1;
    public static final int MOVEMENT_GRANULARITY_CHARACTER = 1;
    public static final int MOVEMENT_GRANULARITY_LINE = 4;
    public static final int MOVEMENT_GRANULARITY_PAGE = 16;
    public static final int MOVEMENT_GRANULARITY_PARAGRAPH = 8;
    public static final int MOVEMENT_GRANULARITY_WORD = 2;

    /* renamed from: c  reason: collision with root package name */
    private static final String f4965c = "AccessibilityNodeInfo.roleDescription";

    /* renamed from: d  reason: collision with root package name */
    private static final String f4966d = "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY";

    /* renamed from: e  reason: collision with root package name */
    private static final String f4967e = "androidx.view.accessibility.AccessibilityNodeInfoCompat.TOOLTIP_TEXT_KEY";

    /* renamed from: f  reason: collision with root package name */
    private static final String f4968f = "androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY";

    /* renamed from: g  reason: collision with root package name */
    private static final String f4969g = "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY";

    /* renamed from: h  reason: collision with root package name */
    private static final String f4970h = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY";

    /* renamed from: i  reason: collision with root package name */
    private static final String f4971i = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY";

    /* renamed from: j  reason: collision with root package name */
    private static final String f4972j = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY";

    /* renamed from: k  reason: collision with root package name */
    private static final String f4973k = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY";

    /* renamed from: l  reason: collision with root package name */
    private static final String f4974l = "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY";

    /* renamed from: m  reason: collision with root package name */
    private static final String f4975m = "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY";

    /* renamed from: n  reason: collision with root package name */
    private static final int f4976n = 1;

    /* renamed from: o  reason: collision with root package name */
    private static final int f4977o = 2;

    /* renamed from: p  reason: collision with root package name */
    private static final int f4978p = 4;

    /* renamed from: q  reason: collision with root package name */
    private static final int f4979q = 8;

    /* renamed from: r  reason: collision with root package name */
    private static int f4980r;

    /* renamed from: a  reason: collision with root package name */
    private final AccessibilityNodeInfo f4981a;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int mParentVirtualDescendantId = -1;

    /* renamed from: b  reason: collision with root package name */
    private int f4982b = -1;

    /* loaded from: classes.dex */
    public static class AccessibilityActionCompat {
        public static final AccessibilityActionCompat ACTION_CONTEXT_CLICK;
        public static final AccessibilityActionCompat ACTION_HIDE_TOOLTIP;
        @NonNull
        public static final AccessibilityActionCompat ACTION_IME_ENTER;
        public static final AccessibilityActionCompat ACTION_MOVE_WINDOW;
        @NonNull
        public static final AccessibilityActionCompat ACTION_PAGE_DOWN;
        @NonNull
        public static final AccessibilityActionCompat ACTION_PAGE_LEFT;
        @NonNull
        public static final AccessibilityActionCompat ACTION_PAGE_RIGHT;
        @NonNull
        public static final AccessibilityActionCompat ACTION_PAGE_UP;
        @NonNull
        public static final AccessibilityActionCompat ACTION_PRESS_AND_HOLD;
        public static final AccessibilityActionCompat ACTION_SCROLL_DOWN;
        public static final AccessibilityActionCompat ACTION_SCROLL_LEFT;
        public static final AccessibilityActionCompat ACTION_SCROLL_RIGHT;
        public static final AccessibilityActionCompat ACTION_SCROLL_TO_POSITION;
        public static final AccessibilityActionCompat ACTION_SCROLL_UP;
        public static final AccessibilityActionCompat ACTION_SET_PROGRESS;
        public static final AccessibilityActionCompat ACTION_SHOW_ON_SCREEN;
        public static final AccessibilityActionCompat ACTION_SHOW_TOOLTIP;

        /* renamed from: e  reason: collision with root package name */
        private static final String f4983e = "A11yActionCompat";

        /* renamed from: a  reason: collision with root package name */
        final Object f4984a;

        /* renamed from: b  reason: collision with root package name */
        private final int f4985b;

        /* renamed from: c  reason: collision with root package name */
        private final Class<? extends AccessibilityViewCommand.CommandArguments> f4986c;
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})

        /* renamed from: d  reason: collision with root package name */
        protected final AccessibilityViewCommand f4987d;
        public static final AccessibilityActionCompat ACTION_FOCUS = new AccessibilityActionCompat(1, null);
        public static final AccessibilityActionCompat ACTION_CLEAR_FOCUS = new AccessibilityActionCompat(2, null);
        public static final AccessibilityActionCompat ACTION_SELECT = new AccessibilityActionCompat(4, null);
        public static final AccessibilityActionCompat ACTION_CLEAR_SELECTION = new AccessibilityActionCompat(8, null);
        public static final AccessibilityActionCompat ACTION_CLICK = new AccessibilityActionCompat(16, null);
        public static final AccessibilityActionCompat ACTION_LONG_CLICK = new AccessibilityActionCompat(32, null);
        public static final AccessibilityActionCompat ACTION_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(64, null);
        public static final AccessibilityActionCompat ACTION_CLEAR_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(128, null);
        public static final AccessibilityActionCompat ACTION_NEXT_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(256, (CharSequence) null, AccessibilityViewCommand.MoveAtGranularityArguments.class);
        public static final AccessibilityActionCompat ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(512, (CharSequence) null, AccessibilityViewCommand.MoveAtGranularityArguments.class);
        public static final AccessibilityActionCompat ACTION_NEXT_HTML_ELEMENT = new AccessibilityActionCompat(1024, (CharSequence) null, AccessibilityViewCommand.MoveHtmlArguments.class);
        public static final AccessibilityActionCompat ACTION_PREVIOUS_HTML_ELEMENT = new AccessibilityActionCompat(2048, (CharSequence) null, AccessibilityViewCommand.MoveHtmlArguments.class);
        public static final AccessibilityActionCompat ACTION_SCROLL_FORWARD = new AccessibilityActionCompat(4096, null);
        public static final AccessibilityActionCompat ACTION_SCROLL_BACKWARD = new AccessibilityActionCompat(8192, null);
        public static final AccessibilityActionCompat ACTION_COPY = new AccessibilityActionCompat(16384, null);
        public static final AccessibilityActionCompat ACTION_PASTE = new AccessibilityActionCompat(32768, null);
        public static final AccessibilityActionCompat ACTION_CUT = new AccessibilityActionCompat(65536, null);
        public static final AccessibilityActionCompat ACTION_SET_SELECTION = new AccessibilityActionCompat(131072, (CharSequence) null, AccessibilityViewCommand.SetSelectionArguments.class);
        public static final AccessibilityActionCompat ACTION_EXPAND = new AccessibilityActionCompat(262144, null);
        public static final AccessibilityActionCompat ACTION_COLLAPSE = new AccessibilityActionCompat(524288, null);
        public static final AccessibilityActionCompat ACTION_DISMISS = new AccessibilityActionCompat(1048576, null);
        public static final AccessibilityActionCompat ACTION_SET_TEXT = new AccessibilityActionCompat(2097152, (CharSequence) null, AccessibilityViewCommand.SetTextArguments.class);

        static {
            int i2 = Build.VERSION.SDK_INT;
            ACTION_SHOW_ON_SCREEN = new AccessibilityActionCompat(i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, 16908342, null, null, null);
            ACTION_SCROLL_TO_POSITION = new AccessibilityActionCompat(i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, 16908343, null, null, AccessibilityViewCommand.ScrollToPositionArguments.class);
            ACTION_SCROLL_UP = new AccessibilityActionCompat(i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, 16908344, null, null, null);
            ACTION_SCROLL_LEFT = new AccessibilityActionCompat(i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, 16908345, null, null, null);
            ACTION_SCROLL_DOWN = new AccessibilityActionCompat(i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, 16908346, null, null, null);
            ACTION_SCROLL_RIGHT = new AccessibilityActionCompat(i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, 16908347, null, null, null);
            ACTION_PAGE_UP = new AccessibilityActionCompat(i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, 16908358, null, null, null);
            ACTION_PAGE_DOWN = new AccessibilityActionCompat(i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, 16908359, null, null, null);
            ACTION_PAGE_LEFT = new AccessibilityActionCompat(i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, 16908360, null, null, null);
            ACTION_PAGE_RIGHT = new AccessibilityActionCompat(i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, 16908361, null, null, null);
            ACTION_CONTEXT_CLICK = new AccessibilityActionCompat(i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, 16908348, null, null, null);
            ACTION_SET_PROGRESS = new AccessibilityActionCompat(i2 >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, 16908349, null, null, AccessibilityViewCommand.SetProgressArguments.class);
            ACTION_MOVE_WINDOW = new AccessibilityActionCompat(i2 >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, 16908354, null, null, AccessibilityViewCommand.MoveWindowArguments.class);
            ACTION_SHOW_TOOLTIP = new AccessibilityActionCompat(i2 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, 16908356, null, null, null);
            ACTION_HIDE_TOOLTIP = new AccessibilityActionCompat(i2 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, 16908357, null, null, null);
            ACTION_PRESS_AND_HOLD = new AccessibilityActionCompat(i2 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, 16908362, null, null, null);
            ACTION_IME_ENTER = new AccessibilityActionCompat(i2 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null, 16908372, null, null, null);
        }

        public AccessibilityActionCompat(int i2, CharSequence charSequence) {
            this(null, i2, charSequence, null, null);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public AccessibilityActionCompat createReplacementAction(CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
            return new AccessibilityActionCompat(null, this.f4985b, charSequence, accessibilityViewCommand, this.f4986c);
        }

        public boolean equals(@Nullable Object obj) {
            if (obj != null && (obj instanceof AccessibilityActionCompat)) {
                AccessibilityActionCompat accessibilityActionCompat = (AccessibilityActionCompat) obj;
                Object obj2 = this.f4984a;
                return obj2 == null ? accessibilityActionCompat.f4984a == null : obj2.equals(accessibilityActionCompat.f4984a);
            }
            return false;
        }

        public int getId() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f4984a).getId();
            }
            return 0;
        }

        public CharSequence getLabel() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f4984a).getLabel();
            }
            return null;
        }

        public int hashCode() {
            Object obj = this.f4984a;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public boolean perform(View view, Bundle bundle) {
            AccessibilityViewCommand.CommandArguments newInstance;
            if (this.f4987d != null) {
                AccessibilityViewCommand.CommandArguments commandArguments = null;
                Class<? extends AccessibilityViewCommand.CommandArguments> cls = this.f4986c;
                if (cls != null) {
                    try {
                        newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    } catch (Exception unused) {
                    }
                    try {
                        newInstance.setBundle(bundle);
                        commandArguments = newInstance;
                    } catch (Exception unused2) {
                        commandArguments = newInstance;
                        Class<? extends AccessibilityViewCommand.CommandArguments> cls2 = this.f4986c;
                        String name = cls2 == null ? "null" : cls2.getName();
                        StringBuilder sb = new StringBuilder();
                        sb.append("Failed to execute command with argument class ViewCommandArgument: ");
                        sb.append(name);
                        return this.f4987d.perform(view, commandArguments);
                    }
                }
                return this.f4987d.perform(view, commandArguments);
            }
            return false;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public AccessibilityActionCompat(int i2, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
            this(null, i2, charSequence, accessibilityViewCommand, null);
        }

        AccessibilityActionCompat(Object obj) {
            this(obj, 0, null, null, null);
        }

        private AccessibilityActionCompat(int i2, CharSequence charSequence, Class<? extends AccessibilityViewCommand.CommandArguments> cls) {
            this(null, i2, charSequence, null, cls);
        }

        AccessibilityActionCompat(Object obj, int i2, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand, Class<? extends AccessibilityViewCommand.CommandArguments> cls) {
            this.f4985b = i2;
            this.f4987d = accessibilityViewCommand;
            if (Build.VERSION.SDK_INT >= 21 && obj == null) {
                this.f4984a = new AccessibilityNodeInfo.AccessibilityAction(i2, charSequence);
            } else {
                this.f4984a = obj;
            }
            this.f4986c = cls;
        }
    }

    /* loaded from: classes.dex */
    public static class RangeInfoCompat {
        public static final int RANGE_TYPE_FLOAT = 1;
        public static final int RANGE_TYPE_INT = 0;
        public static final int RANGE_TYPE_PERCENT = 2;

        /* renamed from: a  reason: collision with root package name */
        final Object f4990a;

        RangeInfoCompat(Object obj) {
            this.f4990a = obj;
        }

        public static RangeInfoCompat obtain(int i2, float f4, float f5, float f6) {
            if (Build.VERSION.SDK_INT >= 19) {
                return new RangeInfoCompat(AccessibilityNodeInfo.RangeInfo.obtain(i2, f4, f5, f6));
            }
            return new RangeInfoCompat(null);
        }

        public float getCurrent() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.RangeInfo) this.f4990a).getCurrent();
            }
            return 0.0f;
        }

        public float getMax() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.RangeInfo) this.f4990a).getMax();
            }
            return 0.0f;
        }

        public float getMin() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.RangeInfo) this.f4990a).getMin();
            }
            return 0.0f;
        }

        public int getType() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.RangeInfo) this.f4990a).getType();
            }
            return 0;
        }
    }

    @Deprecated
    public AccessibilityNodeInfoCompat(Object obj) {
        this.f4981a = (AccessibilityNodeInfo) obj;
    }

    private void a(ClickableSpan clickableSpan, Spanned spanned, int i2) {
        c(f4971i).add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        c(f4972j).add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        c(f4973k).add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        c(f4970h).add(Integer.valueOf(i2));
    }

    private void b() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f4981a.getExtras().remove(f4971i);
            this.f4981a.getExtras().remove(f4972j);
            this.f4981a.getExtras().remove(f4973k);
            this.f4981a.getExtras().remove(f4970h);
        }
    }

    private List<Integer> c(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.f4981a.getExtras().getIntegerArrayList(str);
        if (integerArrayList == null) {
            ArrayList<Integer> arrayList = new ArrayList<>();
            this.f4981a.getExtras().putIntegerArrayList(str, arrayList);
            return arrayList;
        }
        return integerArrayList;
    }

    private static String d(int i2) {
        if (i2 != 1) {
            if (i2 != 2) {
                switch (i2) {
                    case 4:
                        return "ACTION_SELECT";
                    case 8:
                        return "ACTION_CLEAR_SELECTION";
                    case 16:
                        return "ACTION_CLICK";
                    case 32:
                        return "ACTION_LONG_CLICK";
                    case 64:
                        return "ACTION_ACCESSIBILITY_FOCUS";
                    case 128:
                        return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
                    case 256:
                        return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
                    case 512:
                        return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
                    case 1024:
                        return "ACTION_NEXT_HTML_ELEMENT";
                    case 2048:
                        return "ACTION_PREVIOUS_HTML_ELEMENT";
                    case 4096:
                        return "ACTION_SCROLL_FORWARD";
                    case 8192:
                        return "ACTION_SCROLL_BACKWARD";
                    case 16384:
                        return "ACTION_COPY";
                    case 32768:
                        return "ACTION_PASTE";
                    case 65536:
                        return "ACTION_CUT";
                    case 131072:
                        return "ACTION_SET_SELECTION";
                    case 262144:
                        return "ACTION_EXPAND";
                    case 524288:
                        return "ACTION_COLLAPSE";
                    case 2097152:
                        return "ACTION_SET_TEXT";
                    case 16908354:
                        return "ACTION_MOVE_WINDOW";
                    case 16908372:
                        return "ACTION_IME_ENTER";
                    default:
                        switch (i2) {
                            case 16908342:
                                return "ACTION_SHOW_ON_SCREEN";
                            case 16908343:
                                return "ACTION_SCROLL_TO_POSITION";
                            case 16908344:
                                return "ACTION_SCROLL_UP";
                            case 16908345:
                                return "ACTION_SCROLL_LEFT";
                            case 16908346:
                                return "ACTION_SCROLL_DOWN";
                            case 16908347:
                                return "ACTION_SCROLL_RIGHT";
                            case 16908348:
                                return "ACTION_CONTEXT_CLICK";
                            case 16908349:
                                return "ACTION_SET_PROGRESS";
                            default:
                                switch (i2) {
                                    case 16908356:
                                        return "ACTION_SHOW_TOOLTIP";
                                    case 16908357:
                                        return "ACTION_HIDE_TOOLTIP";
                                    case 16908358:
                                        return "ACTION_PAGE_UP";
                                    case 16908359:
                                        return "ACTION_PAGE_DOWN";
                                    case 16908360:
                                        return "ACTION_PAGE_LEFT";
                                    case 16908361:
                                        return "ACTION_PAGE_RIGHT";
                                    case 16908362:
                                        return "ACTION_PRESS_AND_HOLD";
                                    default:
                                        return "ACTION_UNKNOWN";
                                }
                        }
                }
            }
            return "ACTION_CLEAR_FOCUS";
        }
        return "ACTION_FOCUS";
    }

    private boolean e(int i2) {
        Bundle extras = getExtras();
        return extras != null && (extras.getInt(f4969g, 0) & i2) == i2;
    }

    private SparseArray<WeakReference<ClickableSpan>> f(View view) {
        SparseArray<WeakReference<ClickableSpan>> g4 = g(view);
        if (g4 == null) {
            SparseArray<WeakReference<ClickableSpan>> sparseArray = new SparseArray<>();
            view.setTag(R.id.tag_accessibility_clickable_spans, sparseArray);
            return sparseArray;
        }
        return g4;
    }

    private SparseArray<WeakReference<ClickableSpan>> g(View view) {
        return (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static ClickableSpan[] getClickableSpans(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    private boolean h() {
        return !c(f4971i).isEmpty();
    }

    private int i(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                if (clickableSpan.equals(sparseArray.valueAt(i2).get())) {
                    return sparseArray.keyAt(i2);
                }
            }
        }
        int i4 = f4980r;
        f4980r = i4 + 1;
        return i4;
    }

    private void j(View view) {
        SparseArray<WeakReference<ClickableSpan>> g4 = g(view);
        if (g4 != null) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < g4.size(); i2++) {
                if (g4.valueAt(i2).get() == null) {
                    arrayList.add(Integer.valueOf(i2));
                }
            }
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                g4.remove(((Integer) arrayList.get(i4)).intValue());
            }
        }
    }

    private void k(int i2, boolean z3) {
        Bundle extras = getExtras();
        if (extras != null) {
            int i4 = extras.getInt(f4969g, 0) & (i2 ^ (-1));
            if (!z3) {
                i2 = 0;
            }
            extras.putInt(f4969g, i2 | i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AccessibilityNodeInfoCompat l(Object obj) {
        if (obj != null) {
            return new AccessibilityNodeInfoCompat(obj);
        }
        return null;
    }

    public static AccessibilityNodeInfoCompat obtain(View view) {
        return wrap(AccessibilityNodeInfo.obtain(view));
    }

    public static AccessibilityNodeInfoCompat wrap(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        return new AccessibilityNodeInfoCompat(accessibilityNodeInfo);
    }

    public void addAction(int i2) {
        this.f4981a.addAction(i2);
    }

    public void addChild(View view) {
        this.f4981a.addChild(view);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void addSpansToExtras(CharSequence charSequence, View view) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 19 || i2 >= 26) {
            return;
        }
        b();
        j(view);
        ClickableSpan[] clickableSpans = getClickableSpans(charSequence);
        if (clickableSpans == null || clickableSpans.length <= 0) {
            return;
        }
        getExtras().putInt(f4974l, R.id.accessibility_action_clickable_span);
        SparseArray<WeakReference<ClickableSpan>> f4 = f(view);
        for (int i4 = 0; i4 < clickableSpans.length; i4++) {
            int i5 = i(clickableSpans[i4], f4);
            f4.put(i5, new WeakReference<>(clickableSpans[i4]));
            a(clickableSpans[i4], (Spanned) charSequence, i5);
        }
    }

    public boolean canOpenPopup() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.f4981a.canOpenPopup();
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof AccessibilityNodeInfoCompat)) {
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) obj;
            AccessibilityNodeInfo accessibilityNodeInfo = this.f4981a;
            if (accessibilityNodeInfo == null) {
                if (accessibilityNodeInfoCompat.f4981a != null) {
                    return false;
                }
            } else if (!accessibilityNodeInfo.equals(accessibilityNodeInfoCompat.f4981a)) {
                return false;
            }
            return this.f4982b == accessibilityNodeInfoCompat.f4982b && this.mParentVirtualDescendantId == accessibilityNodeInfoCompat.mParentVirtualDescendantId;
        }
        return false;
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String str) {
        ArrayList arrayList = new ArrayList();
        List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText = this.f4981a.findAccessibilityNodeInfosByText(str);
        int size = findAccessibilityNodeInfosByText.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(wrap(findAccessibilityNodeInfosByText.get(i2)));
        }
        return arrayList;
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByViewId(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            List<AccessibilityNodeInfo> findAccessibilityNodeInfosByViewId = this.f4981a.findAccessibilityNodeInfosByViewId(str);
            ArrayList arrayList = new ArrayList();
            for (AccessibilityNodeInfo accessibilityNodeInfo : findAccessibilityNodeInfosByViewId) {
                arrayList.add(wrap(accessibilityNodeInfo));
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    public AccessibilityNodeInfoCompat findFocus(int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            return l(this.f4981a.findFocus(i2));
        }
        return null;
    }

    public AccessibilityNodeInfoCompat focusSearch(int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            return l(this.f4981a.focusSearch(i2));
        }
        return null;
    }

    public List<AccessibilityActionCompat> getActionList() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = Build.VERSION.SDK_INT >= 21 ? this.f4981a.getActionList() : null;
        if (actionList != null) {
            ArrayList arrayList = new ArrayList();
            int size = actionList.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(new AccessibilityActionCompat(actionList.get(i2)));
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    public int getActions() {
        return this.f4981a.getActions();
    }

    @Deprecated
    public void getBoundsInParent(Rect rect) {
        this.f4981a.getBoundsInParent(rect);
    }

    public void getBoundsInScreen(Rect rect) {
        this.f4981a.getBoundsInScreen(rect);
    }

    public AccessibilityNodeInfoCompat getChild(int i2) {
        return l(this.f4981a.getChild(i2));
    }

    public int getChildCount() {
        return this.f4981a.getChildCount();
    }

    public CharSequence getClassName() {
        return this.f4981a.getClassName();
    }

    public CollectionInfoCompat getCollectionInfo() {
        AccessibilityNodeInfo.CollectionInfo collectionInfo;
        if (Build.VERSION.SDK_INT < 19 || (collectionInfo = this.f4981a.getCollectionInfo()) == null) {
            return null;
        }
        return new CollectionInfoCompat(collectionInfo);
    }

    public CollectionItemInfoCompat getCollectionItemInfo() {
        AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo;
        if (Build.VERSION.SDK_INT < 19 || (collectionItemInfo = this.f4981a.getCollectionItemInfo()) == null) {
            return null;
        }
        return new CollectionItemInfoCompat(collectionItemInfo);
    }

    public CharSequence getContentDescription() {
        return this.f4981a.getContentDescription();
    }

    public int getDrawingOrder() {
        if (Build.VERSION.SDK_INT >= 24) {
            return this.f4981a.getDrawingOrder();
        }
        return 0;
    }

    public CharSequence getError() {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.f4981a.getError();
        }
        return null;
    }

    public Bundle getExtras() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.f4981a.getExtras();
        }
        return new Bundle();
    }

    @Nullable
    public CharSequence getHintText() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            return this.f4981a.getHintText();
        }
        if (i2 >= 19) {
            return this.f4981a.getExtras().getCharSequence(f4968f);
        }
        return null;
    }

    @Deprecated
    public Object getInfo() {
        return this.f4981a;
    }

    public int getInputType() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.f4981a.getInputType();
        }
        return 0;
    }

    public AccessibilityNodeInfoCompat getLabelFor() {
        if (Build.VERSION.SDK_INT >= 17) {
            return l(this.f4981a.getLabelFor());
        }
        return null;
    }

    public AccessibilityNodeInfoCompat getLabeledBy() {
        if (Build.VERSION.SDK_INT >= 17) {
            return l(this.f4981a.getLabeledBy());
        }
        return null;
    }

    public int getLiveRegion() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.f4981a.getLiveRegion();
        }
        return 0;
    }

    public int getMaxTextLength() {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.f4981a.getMaxTextLength();
        }
        return -1;
    }

    public int getMovementGranularities() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f4981a.getMovementGranularities();
        }
        return 0;
    }

    public CharSequence getPackageName() {
        return this.f4981a.getPackageName();
    }

    @Nullable
    public CharSequence getPaneTitle() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            return this.f4981a.getPaneTitle();
        }
        if (i2 >= 19) {
            return this.f4981a.getExtras().getCharSequence(f4966d);
        }
        return null;
    }

    public AccessibilityNodeInfoCompat getParent() {
        return l(this.f4981a.getParent());
    }

    public RangeInfoCompat getRangeInfo() {
        AccessibilityNodeInfo.RangeInfo rangeInfo;
        if (Build.VERSION.SDK_INT < 19 || (rangeInfo = this.f4981a.getRangeInfo()) == null) {
            return null;
        }
        return new RangeInfoCompat(rangeInfo);
    }

    @Nullable
    public CharSequence getRoleDescription() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.f4981a.getExtras().getCharSequence(f4965c);
        }
        return null;
    }

    @Nullable
    public CharSequence getStateDescription() {
        if (BuildCompat.isAtLeastR()) {
            return this.f4981a.getStateDescription();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return this.f4981a.getExtras().getCharSequence(f4975m);
        }
        return null;
    }

    public CharSequence getText() {
        if (h()) {
            List<Integer> c4 = c(f4971i);
            List<Integer> c5 = c(f4972j);
            List<Integer> c6 = c(f4973k);
            List<Integer> c7 = c(f4970h);
            SpannableString spannableString = new SpannableString(TextUtils.substring(this.f4981a.getText(), 0, this.f4981a.getText().length()));
            for (int i2 = 0; i2 < c4.size(); i2++) {
                spannableString.setSpan(new AccessibilityClickableSpanCompat(c7.get(i2).intValue(), this, getExtras().getInt(f4974l)), c4.get(i2).intValue(), c5.get(i2).intValue(), c6.get(i2).intValue());
            }
            return spannableString;
        }
        return this.f4981a.getText();
    }

    public int getTextSelectionEnd() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f4981a.getTextSelectionEnd();
        }
        return -1;
    }

    public int getTextSelectionStart() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f4981a.getTextSelectionStart();
        }
        return -1;
    }

    @Nullable
    public CharSequence getTooltipText() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            return this.f4981a.getTooltipText();
        }
        if (i2 >= 19) {
            return this.f4981a.getExtras().getCharSequence(f4967e);
        }
        return null;
    }

    @Nullable
    public TouchDelegateInfoCompat getTouchDelegateInfo() {
        AccessibilityNodeInfo.TouchDelegateInfo touchDelegateInfo;
        if (Build.VERSION.SDK_INT < 29 || (touchDelegateInfo = this.f4981a.getTouchDelegateInfo()) == null) {
            return null;
        }
        return new TouchDelegateInfoCompat(touchDelegateInfo);
    }

    public AccessibilityNodeInfoCompat getTraversalAfter() {
        if (Build.VERSION.SDK_INT >= 22) {
            return l(this.f4981a.getTraversalAfter());
        }
        return null;
    }

    public AccessibilityNodeInfoCompat getTraversalBefore() {
        if (Build.VERSION.SDK_INT >= 22) {
            return l(this.f4981a.getTraversalBefore());
        }
        return null;
    }

    public String getViewIdResourceName() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f4981a.getViewIdResourceName();
        }
        return null;
    }

    public AccessibilityWindowInfoCompat getWindow() {
        if (Build.VERSION.SDK_INT >= 21) {
            return AccessibilityWindowInfoCompat.b(this.f4981a.getWindow());
        }
        return null;
    }

    public int getWindowId() {
        return this.f4981a.getWindowId();
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f4981a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public boolean isAccessibilityFocused() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f4981a.isAccessibilityFocused();
        }
        return false;
    }

    public boolean isCheckable() {
        return this.f4981a.isCheckable();
    }

    public boolean isChecked() {
        return this.f4981a.isChecked();
    }

    public boolean isClickable() {
        return this.f4981a.isClickable();
    }

    public boolean isContentInvalid() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.f4981a.isContentInvalid();
        }
        return false;
    }

    public boolean isContextClickable() {
        if (Build.VERSION.SDK_INT >= 23) {
            return this.f4981a.isContextClickable();
        }
        return false;
    }

    public boolean isDismissable() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.f4981a.isDismissable();
        }
        return false;
    }

    public boolean isEditable() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f4981a.isEditable();
        }
        return false;
    }

    public boolean isEnabled() {
        return this.f4981a.isEnabled();
    }

    public boolean isFocusable() {
        return this.f4981a.isFocusable();
    }

    public boolean isFocused() {
        return this.f4981a.isFocused();
    }

    public boolean isHeading() {
        if (Build.VERSION.SDK_INT >= 28) {
            return this.f4981a.isHeading();
        }
        if (e(2)) {
            return true;
        }
        CollectionItemInfoCompat collectionItemInfo = getCollectionItemInfo();
        return collectionItemInfo != null && collectionItemInfo.isHeading();
    }

    public boolean isImportantForAccessibility() {
        if (Build.VERSION.SDK_INT >= 24) {
            return this.f4981a.isImportantForAccessibility();
        }
        return true;
    }

    public boolean isLongClickable() {
        return this.f4981a.isLongClickable();
    }

    public boolean isMultiLine() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.f4981a.isMultiLine();
        }
        return false;
    }

    public boolean isPassword() {
        return this.f4981a.isPassword();
    }

    public boolean isScreenReaderFocusable() {
        if (Build.VERSION.SDK_INT >= 28) {
            return this.f4981a.isScreenReaderFocusable();
        }
        return e(1);
    }

    public boolean isScrollable() {
        return this.f4981a.isScrollable();
    }

    public boolean isSelected() {
        return this.f4981a.isSelected();
    }

    public boolean isShowingHintText() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f4981a.isShowingHintText();
        }
        return e(4);
    }

    public boolean isTextEntryKey() {
        if (Build.VERSION.SDK_INT >= 29) {
            return this.f4981a.isTextEntryKey();
        }
        return e(8);
    }

    public boolean isVisibleToUser() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f4981a.isVisibleToUser();
        }
        return false;
    }

    public boolean performAction(int i2) {
        return this.f4981a.performAction(i2);
    }

    public void recycle() {
        this.f4981a.recycle();
    }

    public boolean refresh() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f4981a.refresh();
        }
        return false;
    }

    public boolean removeAction(AccessibilityActionCompat accessibilityActionCompat) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.f4981a.removeAction((AccessibilityNodeInfo.AccessibilityAction) accessibilityActionCompat.f4984a);
        }
        return false;
    }

    public boolean removeChild(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.f4981a.removeChild(view);
        }
        return false;
    }

    public void setAccessibilityFocused(boolean z3) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f4981a.setAccessibilityFocused(z3);
        }
    }

    @Deprecated
    public void setBoundsInParent(Rect rect) {
        this.f4981a.setBoundsInParent(rect);
    }

    public void setBoundsInScreen(Rect rect) {
        this.f4981a.setBoundsInScreen(rect);
    }

    public void setCanOpenPopup(boolean z3) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f4981a.setCanOpenPopup(z3);
        }
    }

    public void setCheckable(boolean z3) {
        this.f4981a.setCheckable(z3);
    }

    public void setChecked(boolean z3) {
        this.f4981a.setChecked(z3);
    }

    public void setClassName(CharSequence charSequence) {
        this.f4981a.setClassName(charSequence);
    }

    public void setClickable(boolean z3) {
        this.f4981a.setClickable(z3);
    }

    public void setCollectionInfo(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f4981a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((CollectionInfoCompat) obj).f4988a);
        }
    }

    public void setCollectionItemInfo(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f4981a.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((CollectionItemInfoCompat) obj).f4989a);
        }
    }

    public void setContentDescription(CharSequence charSequence) {
        this.f4981a.setContentDescription(charSequence);
    }

    public void setContentInvalid(boolean z3) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f4981a.setContentInvalid(z3);
        }
    }

    public void setContextClickable(boolean z3) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f4981a.setContextClickable(z3);
        }
    }

    public void setDismissable(boolean z3) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f4981a.setDismissable(z3);
        }
    }

    public void setDrawingOrder(int i2) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f4981a.setDrawingOrder(i2);
        }
    }

    public void setEditable(boolean z3) {
        if (Build.VERSION.SDK_INT >= 18) {
            this.f4981a.setEditable(z3);
        }
    }

    public void setEnabled(boolean z3) {
        this.f4981a.setEnabled(z3);
    }

    public void setError(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f4981a.setError(charSequence);
        }
    }

    public void setFocusable(boolean z3) {
        this.f4981a.setFocusable(z3);
    }

    public void setFocused(boolean z3) {
        this.f4981a.setFocused(z3);
    }

    public void setHeading(boolean z3) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f4981a.setHeading(z3);
        } else {
            k(2, z3);
        }
    }

    public void setHintText(@Nullable CharSequence charSequence) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            this.f4981a.setHintText(charSequence);
        } else if (i2 >= 19) {
            this.f4981a.getExtras().putCharSequence(f4968f, charSequence);
        }
    }

    public void setImportantForAccessibility(boolean z3) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f4981a.setImportantForAccessibility(z3);
        }
    }

    public void setInputType(int i2) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f4981a.setInputType(i2);
        }
    }

    public void setLabelFor(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f4981a.setLabelFor(view);
        }
    }

    public void setLabeledBy(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f4981a.setLabeledBy(view);
        }
    }

    public void setLiveRegion(int i2) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f4981a.setLiveRegion(i2);
        }
    }

    public void setLongClickable(boolean z3) {
        this.f4981a.setLongClickable(z3);
    }

    public void setMaxTextLength(int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f4981a.setMaxTextLength(i2);
        }
    }

    public void setMovementGranularities(int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f4981a.setMovementGranularities(i2);
        }
    }

    public void setMultiLine(boolean z3) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f4981a.setMultiLine(z3);
        }
    }

    public void setPackageName(CharSequence charSequence) {
        this.f4981a.setPackageName(charSequence);
    }

    public void setPaneTitle(@Nullable CharSequence charSequence) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            this.f4981a.setPaneTitle(charSequence);
        } else if (i2 >= 19) {
            this.f4981a.getExtras().putCharSequence(f4966d, charSequence);
        }
    }

    public void setParent(View view) {
        this.mParentVirtualDescendantId = -1;
        this.f4981a.setParent(view);
    }

    public void setPassword(boolean z3) {
        this.f4981a.setPassword(z3);
    }

    public void setRangeInfo(RangeInfoCompat rangeInfoCompat) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f4981a.setRangeInfo((AccessibilityNodeInfo.RangeInfo) rangeInfoCompat.f4990a);
        }
    }

    public void setRoleDescription(@Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f4981a.getExtras().putCharSequence(f4965c, charSequence);
        }
    }

    public void setScreenReaderFocusable(boolean z3) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f4981a.setScreenReaderFocusable(z3);
        } else {
            k(1, z3);
        }
    }

    public void setScrollable(boolean z3) {
        this.f4981a.setScrollable(z3);
    }

    public void setSelected(boolean z3) {
        this.f4981a.setSelected(z3);
    }

    public void setShowingHintText(boolean z3) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f4981a.setShowingHintText(z3);
        } else {
            k(4, z3);
        }
    }

    public void setSource(View view) {
        this.f4982b = -1;
        this.f4981a.setSource(view);
    }

    public void setStateDescription(@Nullable CharSequence charSequence) {
        if (BuildCompat.isAtLeastR()) {
            this.f4981a.setStateDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 19) {
            this.f4981a.getExtras().putCharSequence(f4975m, charSequence);
        }
    }

    public void setText(CharSequence charSequence) {
        this.f4981a.setText(charSequence);
    }

    public void setTextEntryKey(boolean z3) {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f4981a.setTextEntryKey(z3);
        } else {
            k(8, z3);
        }
    }

    public void setTextSelection(int i2, int i4) {
        if (Build.VERSION.SDK_INT >= 18) {
            this.f4981a.setTextSelection(i2, i4);
        }
    }

    public void setTooltipText(@Nullable CharSequence charSequence) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            this.f4981a.setTooltipText(charSequence);
        } else if (i2 >= 19) {
            this.f4981a.getExtras().putCharSequence(f4967e, charSequence);
        }
    }

    public void setTouchDelegateInfo(@NonNull TouchDelegateInfoCompat touchDelegateInfoCompat) {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f4981a.setTouchDelegateInfo(touchDelegateInfoCompat.f4991a);
        }
    }

    public void setTraversalAfter(View view) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.f4981a.setTraversalAfter(view);
        }
    }

    public void setTraversalBefore(View view) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.f4981a.setTraversalBefore(view);
        }
    }

    public void setViewIdResourceName(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            this.f4981a.setViewIdResourceName(str);
        }
    }

    public void setVisibleToUser(boolean z3) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f4981a.setVisibleToUser(z3);
        }
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        getBoundsInParent(rect);
        sb.append("; boundsInParent: " + rect);
        getBoundsInScreen(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(getPackageName());
        sb.append("; className: ");
        sb.append(getClassName());
        sb.append("; text: ");
        sb.append(getText());
        sb.append("; contentDescription: ");
        sb.append(getContentDescription());
        sb.append("; viewId: ");
        sb.append(getViewIdResourceName());
        sb.append("; checkable: ");
        sb.append(isCheckable());
        sb.append("; checked: ");
        sb.append(isChecked());
        sb.append("; focusable: ");
        sb.append(isFocusable());
        sb.append("; focused: ");
        sb.append(isFocused());
        sb.append("; selected: ");
        sb.append(isSelected());
        sb.append("; clickable: ");
        sb.append(isClickable());
        sb.append("; longClickable: ");
        sb.append(isLongClickable());
        sb.append("; enabled: ");
        sb.append(isEnabled());
        sb.append("; password: ");
        sb.append(isPassword());
        sb.append("; scrollable: " + isScrollable());
        sb.append("; [");
        if (Build.VERSION.SDK_INT >= 21) {
            List<AccessibilityActionCompat> actionList = getActionList();
            for (int i2 = 0; i2 < actionList.size(); i2++) {
                AccessibilityActionCompat accessibilityActionCompat = actionList.get(i2);
                String d4 = d(accessibilityActionCompat.getId());
                if (d4.equals("ACTION_UNKNOWN") && accessibilityActionCompat.getLabel() != null) {
                    d4 = accessibilityActionCompat.getLabel().toString();
                }
                sb.append(d4);
                if (i2 != actionList.size() - 1) {
                    sb.append(", ");
                }
            }
        } else {
            int actions = getActions();
            while (actions != 0) {
                int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(actions);
                actions &= numberOfTrailingZeros ^ (-1);
                sb.append(d(numberOfTrailingZeros));
                if (actions != 0) {
                    sb.append(", ");
                }
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public AccessibilityNodeInfo unwrap() {
        return this.f4981a;
    }

    public static AccessibilityNodeInfoCompat obtain(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            return l(AccessibilityNodeInfo.obtain(view, i2));
        }
        return null;
    }

    public void addAction(AccessibilityActionCompat accessibilityActionCompat) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f4981a.addAction((AccessibilityNodeInfo.AccessibilityAction) accessibilityActionCompat.f4984a);
        }
    }

    public void addChild(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f4981a.addChild(view, i2);
        }
    }

    public boolean performAction(int i2, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f4981a.performAction(i2, bundle);
        }
        return false;
    }

    public boolean removeChild(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.f4981a.removeChild(view, i2);
        }
        return false;
    }

    public void setLabelFor(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f4981a.setLabelFor(view, i2);
        }
    }

    public void setLabeledBy(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f4981a.setLabeledBy(view, i2);
        }
    }

    public void setParent(View view, int i2) {
        this.mParentVirtualDescendantId = i2;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f4981a.setParent(view, i2);
        }
    }

    public void setSource(View view, int i2) {
        this.f4982b = i2;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f4981a.setSource(view, i2);
        }
    }

    public void setTraversalAfter(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.f4981a.setTraversalAfter(view, i2);
        }
    }

    public void setTraversalBefore(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.f4981a.setTraversalBefore(view, i2);
        }
    }

    /* loaded from: classes.dex */
    public static class CollectionInfoCompat {
        public static final int SELECTION_MODE_MULTIPLE = 2;
        public static final int SELECTION_MODE_NONE = 0;
        public static final int SELECTION_MODE_SINGLE = 1;

        /* renamed from: a  reason: collision with root package name */
        final Object f4988a;

        CollectionInfoCompat(Object obj) {
            this.f4988a = obj;
        }

        public static CollectionInfoCompat obtain(int i2, int i4, boolean z3, int i5) {
            int i6 = Build.VERSION.SDK_INT;
            if (i6 >= 21) {
                return new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i2, i4, z3, i5));
            }
            if (i6 >= 19) {
                return new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i2, i4, z3));
            }
            return new CollectionInfoCompat(null);
        }

        public int getColumnCount() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionInfo) this.f4988a).getColumnCount();
            }
            return -1;
        }

        public int getRowCount() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionInfo) this.f4988a).getRowCount();
            }
            return -1;
        }

        public int getSelectionMode() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.CollectionInfo) this.f4988a).getSelectionMode();
            }
            return 0;
        }

        public boolean isHierarchical() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionInfo) this.f4988a).isHierarchical();
            }
            return false;
        }

        public static CollectionInfoCompat obtain(int i2, int i4, boolean z3) {
            if (Build.VERSION.SDK_INT >= 19) {
                return new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i2, i4, z3));
            }
            return new CollectionInfoCompat(null);
        }
    }

    /* loaded from: classes.dex */
    public static class CollectionItemInfoCompat {

        /* renamed from: a  reason: collision with root package name */
        final Object f4989a;

        CollectionItemInfoCompat(Object obj) {
            this.f4989a = obj;
        }

        public static CollectionItemInfoCompat obtain(int i2, int i4, int i5, int i6, boolean z3, boolean z4) {
            int i7 = Build.VERSION.SDK_INT;
            if (i7 >= 21) {
                return new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i2, i4, i5, i6, z3, z4));
            }
            if (i7 >= 19) {
                return new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i2, i4, i5, i6, z3));
            }
            return new CollectionItemInfoCompat(null);
        }

        public int getColumnIndex() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f4989a).getColumnIndex();
            }
            return 0;
        }

        public int getColumnSpan() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f4989a).getColumnSpan();
            }
            return 0;
        }

        public int getRowIndex() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f4989a).getRowIndex();
            }
            return 0;
        }

        public int getRowSpan() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f4989a).getRowSpan();
            }
            return 0;
        }

        @Deprecated
        public boolean isHeading() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f4989a).isHeading();
            }
            return false;
        }

        public boolean isSelected() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f4989a).isSelected();
            }
            return false;
        }

        public static CollectionItemInfoCompat obtain(int i2, int i4, int i5, int i6, boolean z3) {
            if (Build.VERSION.SDK_INT >= 19) {
                return new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i2, i4, i5, i6, z3));
            }
            return new CollectionItemInfoCompat(null);
        }
    }

    /* loaded from: classes.dex */
    public static final class TouchDelegateInfoCompat {

        /* renamed from: a  reason: collision with root package name */
        final AccessibilityNodeInfo.TouchDelegateInfo f4991a;

        public TouchDelegateInfoCompat(@NonNull Map<Region, View> map) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f4991a = new AccessibilityNodeInfo.TouchDelegateInfo(map);
            } else {
                this.f4991a = null;
            }
        }

        @Nullable
        public Region getRegionAt(@IntRange(from = 0) int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                return this.f4991a.getRegionAt(i2);
            }
            return null;
        }

        @IntRange(from = 0)
        public int getRegionCount() {
            if (Build.VERSION.SDK_INT >= 29) {
                return this.f4991a.getRegionCount();
            }
            return 0;
        }

        @Nullable
        public AccessibilityNodeInfoCompat getTargetForRegion(@NonNull Region region) {
            AccessibilityNodeInfo targetForRegion;
            if (Build.VERSION.SDK_INT < 29 || (targetForRegion = this.f4991a.getTargetForRegion(region)) == null) {
                return null;
            }
            return AccessibilityNodeInfoCompat.wrap(targetForRegion);
        }

        TouchDelegateInfoCompat(@NonNull AccessibilityNodeInfo.TouchDelegateInfo touchDelegateInfo) {
            this.f4991a = touchDelegateInfo;
        }
    }

    private AccessibilityNodeInfoCompat(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f4981a = accessibilityNodeInfo;
    }

    public static AccessibilityNodeInfoCompat obtain() {
        return wrap(AccessibilityNodeInfo.obtain());
    }

    public static AccessibilityNodeInfoCompat obtain(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        return wrap(AccessibilityNodeInfo.obtain(accessibilityNodeInfoCompat.f4981a));
    }
}
