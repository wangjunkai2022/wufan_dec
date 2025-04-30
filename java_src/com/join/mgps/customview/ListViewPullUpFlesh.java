package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes3.dex */
public class ListViewPullUpFlesh extends ListView {

    /* renamed from: u  reason: collision with root package name */
    private static final int f45722u = 0;

    /* renamed from: v  reason: collision with root package name */
    private static final int f45723v = 1;

    /* renamed from: w  reason: collision with root package name */
    private static final int f45724w = 2;

    /* renamed from: x  reason: collision with root package name */
    private static final int f45725x = 3;

    /* renamed from: y  reason: collision with root package name */
    private static final float f45726y = 3.0f;

    /* renamed from: z  reason: collision with root package name */
    private static boolean f45727z;

    /* renamed from: a  reason: collision with root package name */
    int f45728a;

    /* renamed from: b  reason: collision with root package name */
    int f45729b;

    /* renamed from: c  reason: collision with root package name */
    private View f45730c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f45731d;

    /* renamed from: e  reason: collision with root package name */
    private ProgressBar f45732e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f45733f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f45734g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f45735h;

    /* renamed from: i  reason: collision with root package name */
    private int f45736i;

    /* renamed from: j  reason: collision with root package name */
    private int f45737j;

    /* renamed from: k  reason: collision with root package name */
    private int f45738k;

    /* renamed from: l  reason: collision with root package name */
    private Animation f45739l;

    /* renamed from: m  reason: collision with root package name */
    private Animation f45740m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f45741n;

    /* renamed from: o  reason: collision with root package name */
    private int f45742o;

    /* renamed from: p  reason: collision with root package name */
    boolean f45743p;

    /* renamed from: q  reason: collision with root package name */
    float f45744q;

    /* renamed from: r  reason: collision with root package name */
    float f45745r;

    /* renamed from: s  reason: collision with root package name */
    float f45746s;

    /* renamed from: t  reason: collision with root package name */
    a f45747t;

    /* loaded from: classes3.dex */
    public interface a {
        void a();

        void b();
    }

    public ListViewPullUpFlesh(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45745r = 0.0f;
        this.f45746s = 0.0f;
        a(context);
    }

    private void a(Context context) {
        RotateAnimation rotateAnimation = new RotateAnimation(-180.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        this.f45739l = rotateAnimation;
        rotateAnimation.setDuration(150L);
        this.f45739l.setFillAfter(true);
        this.f45739l.setInterpolator(new LinearInterpolator());
        RotateAnimation rotateAnimation2 = new RotateAnimation(0.0f, -180.0f, 1, 0.5f, 1, 0.5f);
        this.f45740m = rotateAnimation2;
        rotateAnimation2.setDuration(150L);
        this.f45740m.setFillAfter(true);
        this.f45740m.setInterpolator(new LinearInterpolator());
        View inflate = LayoutInflater.from(context).inflate(R.layout.listviewpullheader, (ViewGroup) null);
        this.f45730c = inflate;
        ImageView imageView = (ImageView) inflate.findViewById(R.id.arrow);
        this.f45731d = imageView;
        imageView.startAnimation(this.f45740m);
        this.f45732e = (ProgressBar) this.f45730c.findViewById(R.id.progerssbar);
        this.f45733f = (TextView) this.f45730c.findViewById(R.id.title);
        this.f45735h = (TextView) this.f45730c.findViewById(R.id.noMore);
        this.f45734g = (TextView) this.f45730c.findViewById(R.id.updated);
        this.f45733f.setText("上拉刷新");
        this.f45734g.setText("上拉刷新");
        this.f45731d.setMinimumWidth(70);
        this.f45731d.setMaxHeight(50);
        b(this.f45730c);
        int measuredHeight = this.f45730c.getMeasuredHeight();
        this.f45738k = measuredHeight;
        this.f45730c.setPadding(0, measuredHeight * (-1), 0, 0);
        this.f45730c.invalidate();
        addFooterView(this.f45730c);
        this.f45742o = 3;
        this.f45741n = false;
    }

    private void b(View view) {
        int makeMeasureSpec;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(0, 0, layoutParams.width);
        int i2 = layoutParams.height;
        if (i2 > 0) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i2, 0);
        }
        view.measure(childMeasureSpec, makeMeasureSpec);
    }

    private void d() {
        int i2 = this.f45742o;
        if (i2 == 0) {
            this.f45732e.setVisibility(8);
            if (f45727z) {
                f45727z = false;
            }
        } else if (i2 == 1) {
            this.f45732e.setVisibility(8);
        } else if (i2 == 2) {
            this.f45732e.setVisibility(0);
            this.f45730c.setPadding(0, 0, 0, 0);
        } else if (i2 != 3) {
        } else {
            this.f45732e.setVisibility(8);
            this.f45730c.setPadding(0, this.f45738k * (-5), 0, 0);
        }
    }

    private void e() {
        a aVar = this.f45747t;
        if (aVar != null) {
            aVar.a();
        }
    }

    private void f() {
        a aVar = this.f45747t;
        if (aVar != null) {
            aVar.b();
        }
    }

    public void c() {
        this.f45732e.setVisibility(8);
        this.f45735h.setVisibility(0);
    }

    public void g() {
        this.f45742o = 3;
        d();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        TextView textView = this.f45734g;
        textView.setText("最后刷新时间：" + simpleDateFormat.format(new Date()));
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            this.f45729b = getLastVisiblePosition() - 1;
            getCount();
            if (this.f45741n) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.f45745r = motionEvent.getY();
                    this.f45743p = false;
                    if (getFirstVisiblePosition() == 0 && !this.f45743p) {
                        this.f45744q = motionEvent.getY();
                        this.f45743p = true;
                    }
                } else if (action != 1) {
                    if (action == 2 && (getLastVisiblePosition() == getCount() - 2 || getLastVisiblePosition() == getCount() - 1)) {
                        this.f45745r = this.f45746s;
                        float y3 = motionEvent.getY();
                        this.f45746s = y3;
                        if (!this.f45743p) {
                            this.f45744q = y3;
                            this.f45743p = true;
                        }
                        int i2 = this.f45742o;
                        if (i2 != 2) {
                            if (i2 == 3 && this.f45744q - y3 > 0.0f) {
                                this.f45742o = 0;
                                d();
                            }
                            if (this.f45742o == 0) {
                                float f4 = this.f45744q;
                                float f5 = this.f45746s;
                                if ((f4 - f5) / 3.0f > this.f45738k && this.f45745r - f5 >= 9.0f) {
                                    this.f45742o = 1;
                                    d();
                                } else if (f4 - f5 <= 0.0f) {
                                    this.f45742o = 3;
                                    d();
                                }
                            }
                            if (this.f45742o == 1) {
                                float f6 = this.f45745r;
                                float f7 = this.f45746s;
                                if (f6 - f7 < -5.0f) {
                                    this.f45742o = 0;
                                    f45727z = true;
                                    d();
                                } else if (f7 - this.f45744q >= 0.0f) {
                                    this.f45742o = 3;
                                    d();
                                }
                            }
                            int i4 = this.f45742o;
                            if (i4 == 0 || i4 == 1) {
                                float f8 = this.f45746s;
                                float f9 = this.f45744q;
                                if (f8 < f9) {
                                    this.f45730c.setPadding(0, 0, 0, (int) (((f9 - f8) / 3.0f) - this.f45738k));
                                }
                            }
                        }
                    }
                } else {
                    PrintStream printStream = System.out;
                    printStream.println("state=" + this.f45742o);
                    int i5 = this.f45742o;
                    if (i5 != 2) {
                        if (i5 == 0) {
                            this.f45742o = 3;
                            if (getLastVisiblePosition() == getCount() - 1 || getLastVisiblePosition() == getCount() - 1) {
                                d();
                            }
                        }
                        if (this.f45742o == 1) {
                            this.f45742o = 2;
                            if (getLastVisiblePosition() == getCount() - 1 || getLastVisiblePosition() == getCount() - 0) {
                                d();
                                f();
                            }
                        }
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setRefreshListener(a aVar) {
        this.f45747t = aVar;
        this.f45741n = true;
    }

    public ListViewPullUpFlesh(Context context) {
        super(context);
        this.f45745r = 0.0f;
        this.f45746s = 0.0f;
        a(context);
    }
}
