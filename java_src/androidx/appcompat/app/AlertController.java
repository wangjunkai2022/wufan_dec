package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AlertController {
    NestedScrollView A;
    private Drawable C;
    private ImageView D;
    private TextView E;
    private TextView F;
    private View G;
    ListAdapter H;
    private int J;
    private int K;
    int L;
    int M;
    int N;
    int O;
    private boolean P;
    Handler R;

    /* renamed from: a  reason: collision with root package name */
    private final Context f119a;

    /* renamed from: b  reason: collision with root package name */
    final AppCompatDialog f120b;

    /* renamed from: c  reason: collision with root package name */
    private final Window f121c;

    /* renamed from: d  reason: collision with root package name */
    private final int f122d;

    /* renamed from: e  reason: collision with root package name */
    private CharSequence f123e;

    /* renamed from: f  reason: collision with root package name */
    private CharSequence f124f;

    /* renamed from: g  reason: collision with root package name */
    ListView f125g;

    /* renamed from: h  reason: collision with root package name */
    private View f126h;

    /* renamed from: i  reason: collision with root package name */
    private int f127i;

    /* renamed from: j  reason: collision with root package name */
    private int f128j;

    /* renamed from: k  reason: collision with root package name */
    private int f129k;

    /* renamed from: l  reason: collision with root package name */
    private int f130l;

    /* renamed from: m  reason: collision with root package name */
    private int f131m;

    /* renamed from: o  reason: collision with root package name */
    Button f133o;

    /* renamed from: p  reason: collision with root package name */
    private CharSequence f134p;

    /* renamed from: q  reason: collision with root package name */
    Message f135q;

    /* renamed from: r  reason: collision with root package name */
    private Drawable f136r;

    /* renamed from: s  reason: collision with root package name */
    Button f137s;

    /* renamed from: t  reason: collision with root package name */
    private CharSequence f138t;

    /* renamed from: u  reason: collision with root package name */
    Message f139u;

    /* renamed from: v  reason: collision with root package name */
    private Drawable f140v;

    /* renamed from: w  reason: collision with root package name */
    Button f141w;

    /* renamed from: x  reason: collision with root package name */
    private CharSequence f142x;

    /* renamed from: y  reason: collision with root package name */
    Message f143y;

    /* renamed from: z  reason: collision with root package name */
    private Drawable f144z;

    /* renamed from: n  reason: collision with root package name */
    private boolean f132n = false;
    private int B = 0;
    int I = -1;
    private int Q = 0;
    private final View.OnClickListener S = new View.OnClickListener() { // from class: androidx.appcompat.app.AlertController.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message obtain;
            Message message;
            Message message2;
            Message message3;
            AlertController alertController = AlertController.this;
            if (view == alertController.f133o && (message3 = alertController.f135q) != null) {
                obtain = Message.obtain(message3);
            } else if (view == alertController.f137s && (message2 = alertController.f139u) != null) {
                obtain = Message.obtain(message2);
            } else {
                obtain = (view != alertController.f141w || (message = alertController.f143y) == null) ? null : Message.obtain(message);
            }
            if (obtain != null) {
                obtain.sendToTarget();
            }
            AlertController alertController2 = AlertController.this;
            alertController2.R.obtainMessage(1, alertController2.f120b).sendToTarget();
        }
    };

    /* loaded from: classes.dex */
    public static class AlertParams {
        public ListAdapter mAdapter;
        public boolean[] mCheckedItems;
        public final Context mContext;
        public Cursor mCursor;
        public View mCustomTitleView;
        public boolean mForceInverseBackground;
        public Drawable mIcon;
        public final LayoutInflater mInflater;
        public String mIsCheckedColumn;
        public boolean mIsMultiChoice;
        public boolean mIsSingleChoice;
        public CharSequence[] mItems;
        public String mLabelColumn;
        public CharSequence mMessage;
        public Drawable mNegativeButtonIcon;
        public DialogInterface.OnClickListener mNegativeButtonListener;
        public CharSequence mNegativeButtonText;
        public Drawable mNeutralButtonIcon;
        public DialogInterface.OnClickListener mNeutralButtonListener;
        public CharSequence mNeutralButtonText;
        public DialogInterface.OnCancelListener mOnCancelListener;
        public DialogInterface.OnMultiChoiceClickListener mOnCheckboxClickListener;
        public DialogInterface.OnClickListener mOnClickListener;
        public DialogInterface.OnDismissListener mOnDismissListener;
        public AdapterView.OnItemSelectedListener mOnItemSelectedListener;
        public DialogInterface.OnKeyListener mOnKeyListener;
        public OnPrepareListViewListener mOnPrepareListViewListener;
        public Drawable mPositiveButtonIcon;
        public DialogInterface.OnClickListener mPositiveButtonListener;
        public CharSequence mPositiveButtonText;
        public CharSequence mTitle;
        public View mView;
        public int mViewLayoutResId;
        public int mViewSpacingBottom;
        public int mViewSpacingLeft;
        public int mViewSpacingRight;
        public int mViewSpacingTop;
        public int mIconId = 0;
        public int mIconAttrId = 0;
        public boolean mViewSpacingSpecified = false;
        public int mCheckedItem = -1;
        public boolean mRecycleOnMeasure = true;
        public boolean mCancelable = true;

        /* loaded from: classes.dex */
        public interface OnPrepareListViewListener {
            void onPrepareListView(ListView listView);
        }

        public AlertParams(Context context) {
            this.mContext = context;
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        private void a(final AlertController alertController) {
            int i2;
            ListAdapter listAdapter;
            final RecycleListView recycleListView = (RecycleListView) this.mInflater.inflate(alertController.L, (ViewGroup) null);
            if (this.mIsMultiChoice) {
                if (this.mCursor == null) {
                    listAdapter = new ArrayAdapter<CharSequence>(this.mContext, alertController.M, 16908308, this.mItems) { // from class: androidx.appcompat.app.AlertController.AlertParams.1
                        @Override // android.widget.ArrayAdapter, android.widget.Adapter
                        public View getView(int i4, View view, ViewGroup viewGroup) {
                            View view2 = super.getView(i4, view, viewGroup);
                            boolean[] zArr = AlertParams.this.mCheckedItems;
                            if (zArr != null && zArr[i4]) {
                                recycleListView.setItemChecked(i4, true);
                            }
                            return view2;
                        }
                    };
                } else {
                    listAdapter = new CursorAdapter(this.mContext, this.mCursor, false) { // from class: androidx.appcompat.app.AlertController.AlertParams.2

                        /* renamed from: a  reason: collision with root package name */
                        private final int f160a;

                        /* renamed from: b  reason: collision with root package name */
                        private final int f161b;

                        {
                            Cursor cursor = getCursor();
                            this.f160a = cursor.getColumnIndexOrThrow(AlertParams.this.mLabelColumn);
                            this.f161b = cursor.getColumnIndexOrThrow(AlertParams.this.mIsCheckedColumn);
                        }

                        @Override // android.widget.CursorAdapter
                        public void bindView(View view, Context context, Cursor cursor) {
                            ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.f160a));
                            recycleListView.setItemChecked(cursor.getPosition(), cursor.getInt(this.f161b) == 1);
                        }

                        @Override // android.widget.CursorAdapter
                        public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                            return AlertParams.this.mInflater.inflate(alertController.M, viewGroup, false);
                        }
                    };
                }
            } else {
                if (this.mIsSingleChoice) {
                    i2 = alertController.N;
                } else {
                    i2 = alertController.O;
                }
                int i4 = i2;
                if (this.mCursor != null) {
                    listAdapter = new SimpleCursorAdapter(this.mContext, i4, this.mCursor, new String[]{this.mLabelColumn}, new int[]{16908308});
                } else {
                    listAdapter = this.mAdapter;
                    if (listAdapter == null) {
                        listAdapter = new CheckedItemAdapter(this.mContext, i4, 16908308, this.mItems);
                    }
                }
            }
            OnPrepareListViewListener onPrepareListViewListener = this.mOnPrepareListViewListener;
            if (onPrepareListViewListener != null) {
                onPrepareListViewListener.onPrepareListView(recycleListView);
            }
            alertController.H = listAdapter;
            alertController.I = this.mCheckedItem;
            if (this.mOnClickListener != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.AlertParams.3
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i5, long j4) {
                        AlertParams.this.mOnClickListener.onClick(alertController.f120b, i5);
                        if (AlertParams.this.mIsSingleChoice) {
                            return;
                        }
                        alertController.f120b.dismiss();
                    }
                });
            } else if (this.mOnCheckboxClickListener != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.AlertParams.4
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i5, long j4) {
                        boolean[] zArr = AlertParams.this.mCheckedItems;
                        if (zArr != null) {
                            zArr[i5] = recycleListView.isItemChecked(i5);
                        }
                        AlertParams.this.mOnCheckboxClickListener.onClick(alertController.f120b, i5, recycleListView.isItemChecked(i5));
                    }
                });
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.mOnItemSelectedListener;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.mIsSingleChoice) {
                recycleListView.setChoiceMode(1);
            } else if (this.mIsMultiChoice) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f125g = recycleListView;
        }

        public void apply(AlertController alertController) {
            View view = this.mCustomTitleView;
            if (view != null) {
                alertController.setCustomTitle(view);
            } else {
                CharSequence charSequence = this.mTitle;
                if (charSequence != null) {
                    alertController.setTitle(charSequence);
                }
                Drawable drawable = this.mIcon;
                if (drawable != null) {
                    alertController.setIcon(drawable);
                }
                int i2 = this.mIconId;
                if (i2 != 0) {
                    alertController.setIcon(i2);
                }
                int i4 = this.mIconAttrId;
                if (i4 != 0) {
                    alertController.setIcon(alertController.getIconAttributeResId(i4));
                }
            }
            CharSequence charSequence2 = this.mMessage;
            if (charSequence2 != null) {
                alertController.setMessage(charSequence2);
            }
            CharSequence charSequence3 = this.mPositiveButtonText;
            if (charSequence3 != null || this.mPositiveButtonIcon != null) {
                alertController.setButton(-1, charSequence3, this.mPositiveButtonListener, null, this.mPositiveButtonIcon);
            }
            CharSequence charSequence4 = this.mNegativeButtonText;
            if (charSequence4 != null || this.mNegativeButtonIcon != null) {
                alertController.setButton(-2, charSequence4, this.mNegativeButtonListener, null, this.mNegativeButtonIcon);
            }
            CharSequence charSequence5 = this.mNeutralButtonText;
            if (charSequence5 != null || this.mNeutralButtonIcon != null) {
                alertController.setButton(-3, charSequence5, this.mNeutralButtonListener, null, this.mNeutralButtonIcon);
            }
            if (this.mItems != null || this.mCursor != null || this.mAdapter != null) {
                a(alertController);
            }
            View view2 = this.mView;
            if (view2 != null) {
                if (this.mViewSpacingSpecified) {
                    alertController.setView(view2, this.mViewSpacingLeft, this.mViewSpacingTop, this.mViewSpacingRight, this.mViewSpacingBottom);
                    return;
                } else {
                    alertController.setView(view2);
                    return;
                }
            }
            int i5 = this.mViewLayoutResId;
            if (i5 != 0) {
                alertController.setView(i5);
            }
        }
    }

    /* loaded from: classes.dex */
    private static final class ButtonHandler extends Handler {

        /* renamed from: b  reason: collision with root package name */
        private static final int f170b = 1;

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<DialogInterface> f171a;

        public ButtonHandler(DialogInterface dialogInterface) {
            this.f171a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == -3 || i2 == -2 || i2 == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f171a.get(), message.what);
            } else if (i2 != 1) {
            } else {
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class CheckedItemAdapter extends ArrayAdapter<CharSequence> {
        public CheckedItemAdapter(Context context, int i2, int i4, CharSequence[] charSequenceArr) {
            super(context, i2, i4, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class RecycleListView extends ListView {

        /* renamed from: a  reason: collision with root package name */
        private final int f172a;

        /* renamed from: b  reason: collision with root package name */
        private final int f173b;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public void setHasDecor(boolean z3, boolean z4) {
            if (z4 && z3) {
                return;
            }
            setPadding(getPaddingLeft(), z3 ? getPaddingTop() : this.f172a, getPaddingRight(), z4 ? getPaddingBottom() : this.f173b);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RecycleListView);
            this.f173b = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.RecycleListView_paddingBottomNoButtons, -1);
            this.f172a = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.RecycleListView_paddingTopNoTitle, -1);
        }
    }

    public AlertController(Context context, AppCompatDialog appCompatDialog, Window window) {
        this.f119a = context;
        this.f120b = appCompatDialog;
        this.f121c = window;
        this.R = new ButtonHandler(appCompatDialog);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.AlertDialog, R.attr.alertDialogStyle, 0);
        this.J = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_android_layout, 0);
        this.K = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.L = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listLayout, 0);
        this.M = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.N = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.O = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listItemLayout, 0);
        this.P = obtainStyledAttributes.getBoolean(R.styleable.AlertDialog_showTitle, true);
        this.f122d = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        appCompatDialog.supportRequestWindowFeature(1);
    }

    static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            while (childCount > 0) {
                childCount--;
                if (a(viewGroup.getChildAt(childCount))) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private void b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    static void c(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    @Nullable
    private ViewGroup d(@Nullable View view, @Nullable View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    private int e() {
        int i2 = this.K;
        if (i2 == 0) {
            return this.J;
        }
        return this.Q == 1 ? i2 : this.J;
    }

    private void f(ViewGroup viewGroup, View view, int i2, int i4) {
        final View findViewById = this.f121c.findViewById(R.id.scrollIndicatorUp);
        final View findViewById2 = this.f121c.findViewById(R.id.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            ViewCompat.setScrollIndicators(view, i2, i4);
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (findViewById2 != null) {
                viewGroup.removeView(findViewById2);
                return;
            }
            return;
        }
        if (findViewById != null && (i2 & 1) == 0) {
            viewGroup.removeView(findViewById);
            findViewById = null;
        }
        if (findViewById2 != null && (i2 & 2) == 0) {
            viewGroup.removeView(findViewById2);
            findViewById2 = null;
        }
        if (findViewById == null && findViewById2 == null) {
            return;
        }
        if (this.f124f != null) {
            this.A.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener() { // from class: androidx.appcompat.app.AlertController.2
                @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
                public void onScrollChange(NestedScrollView nestedScrollView, int i5, int i6, int i7, int i8) {
                    AlertController.c(nestedScrollView, findViewById, findViewById2);
                }
            });
            this.A.post(new Runnable() { // from class: androidx.appcompat.app.AlertController.3
                @Override // java.lang.Runnable
                public void run() {
                    AlertController.c(AlertController.this.A, findViewById, findViewById2);
                }
            });
            return;
        }
        ListView listView = this.f125g;
        if (listView != null) {
            listView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: androidx.appcompat.app.AlertController.4
                @Override // android.widget.AbsListView.OnScrollListener
                public void onScroll(AbsListView absListView, int i5, int i6, int i7) {
                    AlertController.c(absListView, findViewById, findViewById2);
                }

                @Override // android.widget.AbsListView.OnScrollListener
                public void onScrollStateChanged(AbsListView absListView, int i5) {
                }
            });
            this.f125g.post(new Runnable() { // from class: androidx.appcompat.app.AlertController.5
                @Override // java.lang.Runnable
                public void run() {
                    AlertController.c(AlertController.this.f125g, findViewById, findViewById2);
                }
            });
            return;
        }
        if (findViewById != null) {
            viewGroup.removeView(findViewById);
        }
        if (findViewById2 != null) {
            viewGroup.removeView(findViewById2);
        }
    }

    private void g(ViewGroup viewGroup) {
        boolean z3;
        Button button = (Button) viewGroup.findViewById(16908313);
        this.f133o = button;
        button.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f134p) && this.f136r == null) {
            this.f133o.setVisibility(8);
            z3 = false;
        } else {
            this.f133o.setText(this.f134p);
            Drawable drawable = this.f136r;
            if (drawable != null) {
                int i2 = this.f122d;
                drawable.setBounds(0, 0, i2, i2);
                this.f133o.setCompoundDrawables(this.f136r, null, null, null);
            }
            this.f133o.setVisibility(0);
            z3 = true;
        }
        Button button2 = (Button) viewGroup.findViewById(16908314);
        this.f137s = button2;
        button2.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f138t) && this.f140v == null) {
            this.f137s.setVisibility(8);
        } else {
            this.f137s.setText(this.f138t);
            Drawable drawable2 = this.f140v;
            if (drawable2 != null) {
                int i4 = this.f122d;
                drawable2.setBounds(0, 0, i4, i4);
                this.f137s.setCompoundDrawables(this.f140v, null, null, null);
            }
            this.f137s.setVisibility(0);
            z3 |= true;
        }
        Button button3 = (Button) viewGroup.findViewById(16908315);
        this.f141w = button3;
        button3.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f142x) && this.f144z == null) {
            this.f141w.setVisibility(8);
        } else {
            this.f141w.setText(this.f142x);
            Drawable drawable3 = this.f144z;
            if (drawable3 != null) {
                int i5 = this.f122d;
                drawable3.setBounds(0, 0, i5, i5);
                this.f141w.setCompoundDrawables(this.f144z, null, null, null);
            }
            this.f141w.setVisibility(0);
            z3 |= true;
        }
        if (l(this.f119a)) {
            if (z3) {
                b(this.f133o);
            } else if (z3) {
                b(this.f137s);
            } else if (z3) {
                b(this.f141w);
            }
        }
        if (z3) {
            return;
        }
        viewGroup.setVisibility(8);
    }

    private void h(ViewGroup viewGroup) {
        NestedScrollView nestedScrollView = (NestedScrollView) this.f121c.findViewById(R.id.scrollView);
        this.A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(16908299);
        this.F = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f124f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.A.removeView(this.F);
        if (this.f125g != null) {
            ViewGroup viewGroup2 = (ViewGroup) this.A.getParent();
            int indexOfChild = viewGroup2.indexOfChild(this.A);
            viewGroup2.removeViewAt(indexOfChild);
            viewGroup2.addView(this.f125g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
            return;
        }
        viewGroup.setVisibility(8);
    }

    private void i(ViewGroup viewGroup) {
        View view = this.f126h;
        if (view == null) {
            view = this.f127i != 0 ? LayoutInflater.from(this.f119a).inflate(this.f127i, viewGroup, false) : null;
        }
        boolean z3 = view != null;
        if (!z3 || !a(view)) {
            this.f121c.setFlags(131072, 131072);
        }
        if (z3) {
            FrameLayout frameLayout = (FrameLayout) this.f121c.findViewById(R.id.custom);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (this.f132n) {
                frameLayout.setPadding(this.f128j, this.f129k, this.f130l, this.f131m);
            }
            if (this.f125g != null) {
                ((LinearLayout.LayoutParams) ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams())).weight = 0.0f;
                return;
            }
            return;
        }
        viewGroup.setVisibility(8);
    }

    private void j(ViewGroup viewGroup) {
        if (this.G != null) {
            viewGroup.addView(this.G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f121c.findViewById(R.id.title_template).setVisibility(8);
            return;
        }
        this.D = (ImageView) this.f121c.findViewById(16908294);
        if ((!TextUtils.isEmpty(this.f123e)) && this.P) {
            TextView textView = (TextView) this.f121c.findViewById(R.id.alertTitle);
            this.E = textView;
            textView.setText(this.f123e);
            int i2 = this.B;
            if (i2 != 0) {
                this.D.setImageResource(i2);
                return;
            }
            Drawable drawable = this.C;
            if (drawable != null) {
                this.D.setImageDrawable(drawable);
                return;
            }
            this.E.setPadding(this.D.getPaddingLeft(), this.D.getPaddingTop(), this.D.getPaddingRight(), this.D.getPaddingBottom());
            this.D.setVisibility(8);
            return;
        }
        this.f121c.findViewById(R.id.title_template).setVisibility(8);
        this.D.setVisibility(8);
        viewGroup.setVisibility(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void k() {
        View findViewById;
        ListAdapter listAdapter;
        View findViewById2;
        View findViewById3 = this.f121c.findViewById(R.id.parentPanel);
        int i2 = R.id.topPanel;
        View findViewById4 = findViewById3.findViewById(i2);
        int i4 = R.id.contentPanel;
        View findViewById5 = findViewById3.findViewById(i4);
        int i5 = R.id.buttonPanel;
        View findViewById6 = findViewById3.findViewById(i5);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(R.id.customPanel);
        i(viewGroup);
        View findViewById7 = viewGroup.findViewById(i2);
        View findViewById8 = viewGroup.findViewById(i4);
        View findViewById9 = viewGroup.findViewById(i5);
        ViewGroup d4 = d(findViewById7, findViewById4);
        ViewGroup d5 = d(findViewById8, findViewById5);
        ViewGroup d6 = d(findViewById9, findViewById6);
        h(d5);
        g(d6);
        j(d4);
        boolean z3 = viewGroup.getVisibility() != 8;
        boolean z4 = (d4 == null || d4.getVisibility() == 8) ? 0 : 1;
        boolean z5 = (d6 == null || d6.getVisibility() == 8) ? false : true;
        if (!z5 && d5 != null && (findViewById2 = d5.findViewById(R.id.textSpacerNoButtons)) != null) {
            findViewById2.setVisibility(0);
        }
        if (z4) {
            NestedScrollView nestedScrollView = this.A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View view = null;
            if (this.f124f != null || this.f125g != null) {
                view = d4.findViewById(R.id.titleDividerNoCustom);
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else if (d5 != null && (findViewById = d5.findViewById(R.id.textSpacerNoTitle)) != null) {
            findViewById.setVisibility(0);
        }
        ListView listView = this.f125g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).setHasDecor(z4, z5);
        }
        if (!z3) {
            View view2 = this.f125g;
            if (view2 == null) {
                view2 = this.A;
            }
            if (view2 != null) {
                f(d5, view2, z4 | (z5 ? 2 : 0), 3);
            }
        }
        ListView listView2 = this.f125g;
        if (listView2 == null || (listAdapter = this.H) == null) {
            return;
        }
        listView2.setAdapter(listAdapter);
        int i6 = this.I;
        if (i6 > -1) {
            listView2.setItemChecked(i6, true);
            listView2.setSelection(i6);
        }
    }

    private static boolean l(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    public Button getButton(int i2) {
        if (i2 != -3) {
            if (i2 != -2) {
                if (i2 != -1) {
                    return null;
                }
                return this.f133o;
            }
            return this.f137s;
        }
        return this.f141w;
    }

    public int getIconAttributeResId(int i2) {
        TypedValue typedValue = new TypedValue();
        this.f119a.getTheme().resolveAttribute(i2, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView getListView() {
        return this.f125g;
    }

    public void installContent() {
        this.f120b.setContentView(e());
        k();
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent);
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent);
    }

    public void setButton(int i2, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.R.obtainMessage(i2, onClickListener);
        }
        if (i2 == -3) {
            this.f142x = charSequence;
            this.f143y = message;
            this.f144z = drawable;
        } else if (i2 == -2) {
            this.f138t = charSequence;
            this.f139u = message;
            this.f140v = drawable;
        } else if (i2 == -1) {
            this.f134p = charSequence;
            this.f135q = message;
            this.f136r = drawable;
        } else {
            throw new IllegalArgumentException("Button does not exist");
        }
    }

    public void setButtonPanelLayoutHint(int i2) {
        this.Q = i2;
    }

    public void setCustomTitle(View view) {
        this.G = view;
    }

    public void setIcon(int i2) {
        this.C = null;
        this.B = i2;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (i2 != 0) {
                imageView.setVisibility(0);
                this.D.setImageResource(this.B);
                return;
            }
            imageView.setVisibility(8);
        }
    }

    public void setMessage(CharSequence charSequence) {
        this.f124f = charSequence;
        TextView textView = this.F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.f123e = charSequence;
        TextView textView = this.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void setView(int i2) {
        this.f126h = null;
        this.f127i = i2;
        this.f132n = false;
    }

    public void setView(View view) {
        this.f126h = view;
        this.f127i = 0;
        this.f132n = false;
    }

    public void setIcon(Drawable drawable) {
        this.C = drawable;
        this.B = 0;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (drawable != null) {
                imageView.setVisibility(0);
                this.D.setImageDrawable(drawable);
                return;
            }
            imageView.setVisibility(8);
        }
    }

    public void setView(View view, int i2, int i4, int i5, int i6) {
        this.f126h = view;
        this.f127i = 0;
        this.f132n = true;
        this.f128j = i2;
        this.f129k = i4;
        this.f130l = i5;
        this.f131m = i6;
    }
}
