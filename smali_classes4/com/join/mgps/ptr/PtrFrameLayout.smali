.class public Lcom/join/mgps/ptr/PtrFrameLayout;
.super Landroid/view/ViewGroup;
.source "PtrFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ptr/PtrFrameLayout$c;,
        Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final E:B = 0x1t

.field public static final F:B = 0x2t

.field public static final G:B = 0x3t

.field public static final H:B = 0x4t

.field private static final I:Z = true

.field public static J:Z = false

.field private static K:I = 0x1

.field private static n0:B = 0x1t

.field private static o0:B = 0x2t

.field private static p0:B = 0x4t

.field private static q0:B = 0x8t

.field private static r0:B = 0x3t


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private a:B

.field protected final b:Ljava/lang/String;

.field protected c:Landroid/view/View;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Landroid/view/View;

.field private k:Lcom/join/mgps/ptr/d;

.field private l:Lcom/join/mgps/ptr/b;

.field private m:Lcom/join/mgps/ptr/PtrFrameLayout$c;

.field private n:I

.field private o:I

.field private p:Z

.field private q:I

.field private r:Z

.field private s:Landroid/view/MotionEvent;

.field private t:Lcom/join/mgps/ptr/e;

.field private u:I

.field private v:J

.field private w:Lcom/join/mgps/ptr/indicator/a;

.field private x:Z

.field private y:Ljava/lang/Runnable;

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 4
    iput-byte p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ptr-frame-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/join/mgps/ptr/PtrFrameLayout;->K:I

    add-int/2addr v1, p3

    sput v1, Lcom/join/mgps/ptr/PtrFrameLayout;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:I

    .line 7
    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->e:I

    const/16 v1, 0xc8

    .line 8
    iput v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->f:I

    const/16 v1, 0x190

    .line 9
    iput v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->g:I

    .line 10
    iput-boolean p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->h:Z

    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->i:Z

    .line 12
    invoke-static {}, Lcom/join/mgps/ptr/d;->h()Lcom/join/mgps/ptr/d;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Lcom/join/mgps/ptr/d;

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->p:Z

    .line 14
    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:Z

    const/16 v1, 0x1f4

    .line 16
    iput v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->u:I

    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->v:J

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Z

    .line 19
    new-instance v1, Lcom/join/mgps/ptr/PtrFrameLayout$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/ptr/PtrFrameLayout$a;-><init>(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    iput-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->y:Ljava/lang/Runnable;

    .line 20
    new-instance v1, Lcom/join/mgps/ptr/indicator/a;

    invoke-direct {v1}, Lcom/join/mgps/ptr/indicator/a;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    .line 21
    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->PtrFrameLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 22
    iget v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:I

    .line 23
    iget v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->e:I

    .line 24
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    const/16 v2, 0x8

    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/ptr/indicator/a;->m()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Lcom/join/mgps/ptr/indicator/a;->K(F)V

    .line 27
    iget v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->f:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->f:I

    .line 28
    iget p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->g:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->g:I

    .line 29
    iget-object p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {p3}, Lcom/join/mgps/ptr/indicator/a;->l()F

    move-result p3

    const/4 v1, 0x7

    .line 30
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 31
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v1, p3}, Lcom/join/mgps/ptr/indicator/a;->J(F)V

    const/4 p3, 0x5

    .line 32
    iget-boolean v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->h:Z

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->h:Z

    const/4 p3, 0x6

    .line 33
    iget-boolean v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->i:Z

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->i:Z

    const/4 p3, 0x4

    .line 34
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->z:I

    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    :cond_0
    new-instance p1, Lcom/join/mgps/ptr/PtrFrameLayout$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;-><init>(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->m:Lcom/join/mgps/ptr/PtrFrameLayout$c;

    .line 37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->n:I

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->v:J

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Lcom/join/mgps/ptr/d;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Lcom/join/mgps/ptr/d;

    invoke-virtual {v0, p0}, Lcom/join/mgps/ptr/d;->e(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 4
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "PtrUIHandler: onUIRefreshBegin"

    invoke-static {v0, v1}, Lcom/join/mgps/ptr/util/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/b;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p0}, Lcom/join/mgps/ptr/b;->b(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    :cond_1
    return-void
.end method

.method private B()V
    .locals 4

    const/4 v0, 0x4

    .line 1
    iput-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->m:Lcom/join/mgps/ptr/PtrFrameLayout$c;

    invoke-static {v0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c(Lcom/join/mgps/ptr/PtrFrameLayout$c;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->m:Lcom/join/mgps/ptr/PtrFrameLayout$c;

    .line 5
    invoke-static {v3}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->c(Lcom/join/mgps/ptr/PtrFrameLayout$c;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "performRefreshComplete do nothing, scrolling: %s, auto refresh: %s"

    .line 6
    invoke-static {v0, v1, v2}, Lcom/join/mgps/ptr/util/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 7
    :cond_1
    invoke-direct {p0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->u(Z)V

    return-void
.end method

.method private E()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "send cancel event"

    invoke-static {v0, v1}, Lcom/join/mgps/ptr/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->s:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private F()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "send down event"

    invoke-static {v0, v1}, Lcom/join/mgps/ptr/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->s:Landroid/view/MotionEvent;

    .line 4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->m:Lcom/join/mgps/ptr/PtrFrameLayout$c;

    const/4 v1, 0x0

    iget v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g(II)V

    :cond_0
    return-void
.end method

.method private H()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->G()V

    return-void
.end method

.method private I()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->G()V

    return-void
.end method

.method private J()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->G()V

    return-void
.end method

.method private K()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Lcom/join/mgps/ptr/d;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Lcom/join/mgps/ptr/d;

    invoke-virtual {v0, p0}, Lcom/join/mgps/ptr/d;->c(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 4
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "PtrUIHandler: onUIReset"

    invoke-static {v0, v1}, Lcom/join/mgps/ptr/util/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->i()V

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private L()Z
    .locals 3

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->l()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x3

    .line 3
    iput-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->A()V

    :cond_3
    return v1
.end method

.method private M(I)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->x()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    iput-boolean v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Z

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->E()V

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->p()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    iget-byte v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    if-eq v2, v1, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->n()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-byte v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    if-ne v2, v4, :cond_4

    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7
    :cond_3
    iput-byte v5, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    .line 8
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Lcom/join/mgps/ptr/d;

    invoke-virtual {v2, p0}, Lcom/join/mgps/ptr/d;->d(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 9
    sget-boolean v2, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v2, :cond_4

    .line 10
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Object;

    iget v7, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "PtrUIHandler: onUIRefreshPrepare, mFlag %s"

    invoke-static {v2, v7, v6}, Lcom/join/mgps/ptr/util/a;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->o()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->K()Z

    if-eqz v0, :cond_5

    .line 13
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->F()V

    .line 14
    :cond_5
    iget-byte v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    if-ne v2, v5, :cond_7

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->l()Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->i:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    .line 16
    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 17
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->L()Z

    .line 18
    :cond_6
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->z()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->q()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 19
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->L()Z

    .line 20
    :cond_7
    sget-boolean v2, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v2, :cond_8

    .line 21
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v3}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v1}, Lcom/join/mgps/ptr/indicator/a;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    iget v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v4

    const-string v1, "updatePos: change: %s, current: %s last: %s, top: %s, headerHeight: %s"

    .line 23
    invoke-static {v2, v1, v6}, Lcom/join/mgps/ptr/util/a;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_8
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->o()Z

    move-result v1

    if-nez v1, :cond_9

    .line 26
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 27
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Lcom/join/mgps/ptr/d;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/d;->j()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 29
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Lcom/join/mgps/ptr/d;

    iget-byte v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/join/mgps/ptr/d;->b(Lcom/join/mgps/ptr/PtrFrameLayout;ZBLcom/join/mgps/ptr/indicator/a;)V

    .line 30
    :cond_a
    iget-byte p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {p0, v0, p1, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->v(ZBLcom/join/mgps/ptr/indicator/a;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->B()V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/ptr/PtrFrameLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->u(Z)V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/ptr/PtrFrameLayout;)Lcom/join/mgps/ptr/indicator/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/ptr/PtrFrameLayout;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->t(F)V

    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    sget-byte v1, Lcom/join/mgps/ptr/PtrFrameLayout;->r0:B

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    return-void
.end method

.method private r()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v1

    .line 7
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    iget v10, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->o:I

    sub-int/2addr v3, v10

    .line 8
    iget-object v10, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v9

    .line 9
    iget-object v11, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v3

    .line 10
    iget-object v12, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    invoke-virtual {v12, v9, v3, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 11
    sget-boolean v12, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v12, :cond_0

    .line 12
    iget-object v12, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    new-array v13, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v13, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v4

    const-string v3, "onLayout header: %s %s %s %s"

    invoke-static {v12, v3, v13}, Lcom/join/mgps/ptr/util/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->o()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 15
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 16
    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v9

    .line 17
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 18
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v1

    .line 19
    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 20
    sget-boolean v9, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v9, :cond_2

    .line 21
    iget-object v9, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    const-string v4, "onLayout content: %s %s %s %s"

    invoke-static {v9, v4, v7}, Lcom/join/mgps/ptr/util/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/view/View;->layout(IIII)V

    :cond_3
    return-void
.end method

.method private s(Landroid/view/View;II)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 3
    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 5
    invoke-static {p3, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private t(F)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v1}, Lcom/join/mgps/ptr/indicator/a;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    sget-boolean p1, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "has reached the top"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/ptr/util/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v1}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result v1

    float-to-int p1, p1

    add-int/2addr v1, p1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {p1, v1}, Lcom/join/mgps/ptr/indicator/a;->M(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    sget-boolean p1, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "over top"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/join/mgps/ptr/util/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 8
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/indicator/a;->E(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/indicator/a;->g()I

    move-result p1

    sub-int/2addr v0, p1

    .line 10
    invoke-direct {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->M(I)V

    return-void
.end method

.method private u(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->t:Lcom/join/mgps/ptr/e;

    if-eqz p1, :cond_1

    .line 2
    sget-boolean p1, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v0, "notifyUIRefreshComplete mRefreshCompleteHook run."

    invoke-static {p1, v0}, Lcom/join/mgps/ptr/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->t:Lcom/join/mgps/ptr/e;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/e;->d()V

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Lcom/join/mgps/ptr/d;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/d;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    sget-boolean p1, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v0, "PtrUIHandler: onUIRefreshComplete"

    invoke-static {p1, v0}, Lcom/join/mgps/ptr/util/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Lcom/join/mgps/ptr/d;

    invoke-virtual {p1, p0}, Lcom/join/mgps/ptr/d;->a(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/indicator/a;->B()V

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->I()V

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->K()Z

    return-void
.end method

.method private y(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->L()Z

    .line 2
    iget-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->h:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->m:Lcom/join/mgps/ptr/PtrFrameLayout$c;

    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->h()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g(II)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->J()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->u(Z)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->H()V

    :cond_3
    :goto_0
    return-void
.end method

.method private z()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    sget-byte v1, Lcom/join/mgps/ptr/PtrFrameLayout;->r0:B

    and-int/2addr v0, v1

    sget-byte v1, Lcom/join/mgps/ptr/PtrFrameLayout;->o0:B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final C()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "refreshComplete"

    invoke-static {v0, v1}, Lcom/join/mgps/ptr/util/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->t:Lcom/join/mgps/ptr/e;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/ptr/e;->a()V

    .line 5
    :cond_1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->u:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->v:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v1, v0

    if-gtz v1, :cond_3

    .line 6
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "performRefreshComplete at once"

    invoke-static {v0, v1}, Lcom/join/mgps/ptr/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->B()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->y:Ljava/lang/Runnable;

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "performRefreshComplete after delay: %s"

    invoke-static {v0, v1, v2}, Lcom/join/mgps/ptr/util/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public D(Lcom/join/mgps/ptr/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Lcom/join/mgps/ptr/d;

    invoke-static {v0, p1}, Lcom/join/mgps/ptr/d;->k(Lcom/join/mgps/ptr/d;Lcom/join/mgps/ptr/c;)Lcom/join/mgps/ptr/d;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Lcom/join/mgps/ptr/d;

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    instance-of p1, p1, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_f

    if-eq v0, v3, :cond_b

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_b

    goto/16 :goto_2

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->s:Landroid/view/MotionEvent;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/join/mgps/ptr/indicator/a;->y(FF)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->j()F

    .line 6
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->k()F

    move-result v0

    .line 7
    iget-boolean v6, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->p:Z

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 10
    iget v8, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->A:F

    iget v9, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->C:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->A:F

    .line 11
    iget v8, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->B:F

    iget v9, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->D:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->B:F

    .line 12
    iput v6, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->C:F

    .line 13
    iput v7, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->D:F

    .line 14
    iget v6, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->A:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_2

    .line 15
    iget-object v6, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v6}, Lcom/join/mgps/ptr/indicator/a;->u()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 16
    iput-boolean v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:Z

    .line 17
    :cond_2
    iget-boolean v6, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:Z

    if-eqz v6, :cond_3

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    xor-int/lit8 v6, v1, 0x1

    .line 19
    iget-object v7, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v7}, Lcom/join/mgps/ptr/indicator/a;->r()Z

    move-result v7

    .line 20
    sget-boolean v8, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v8, :cond_6

    .line 21
    iget-object v8, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/b;

    if-eqz v8, :cond_5

    iget-object v9, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    iget-object v10, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    invoke-interface {v8, p0, v9, v10}, Lcom/join/mgps/ptr/b;->a(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    .line 22
    :goto_1
    iget-object v9, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v10, v2

    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v10, v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v10, v4

    const/4 v2, 0x4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v10, v2

    const/4 v2, 0x5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v10, v2

    const-string v2, "ACTION_MOVE: offsetY:%s, currentPos: %s, moveUp: %s, canMoveUp: %s, moveDown: %s: canMoveDown: %s"

    invoke-static {v9, v2, v10}, Lcom/join/mgps/ptr/util/a;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    if-eqz v1, :cond_7

    .line 23
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/b;

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    iget-object v5, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    invoke-interface {v2, p0, v4, v5}, Lcom/join/mgps/ptr/b;->a(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 24
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_7
    if-eqz v6, :cond_8

    if-nez v7, :cond_9

    :cond_8
    if-eqz v1, :cond_a

    .line 25
    :cond_9
    invoke-direct {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->t(F)V

    return v3

    .line 26
    :cond_a
    :goto_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 27
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->A()V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 29
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v0, :cond_c

    .line 30
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "call onRelease when user release"

    invoke-static {v0, v1}, Lcom/join/mgps/ptr/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_c
    invoke-direct {p0, v2}, Lcom/join/mgps/ptr/PtrFrameLayout;->y(Z)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->s()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 33
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->E()V

    return v3

    .line 34
    :cond_d
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 35
    :cond_e
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 36
    :cond_f
    iput v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->B:F

    iput v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->A:F

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->C:F

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->D:F

    .line 39
    iput-boolean v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->x:Z

    .line 40
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/join/mgps/ptr/indicator/a;->z(FF)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->m:Lcom/join/mgps/ptr/PtrFrameLayout$c;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->a()V

    .line 42
    iput-boolean v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->r:Z

    .line 43
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    return v3

    .line 44
    :cond_10
    :goto_3
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->k(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public e(Lcom/join/mgps/ptr/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Lcom/join/mgps/ptr/d;

    invoke-static {v0, p1}, Lcom/join/mgps/ptr/d;->f(Lcom/join/mgps/ptr/d;Lcom/join/mgps/ptr/c;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->g:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->h(ZI)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->g:I

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->h(ZI)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    return-object v0
.end method

.method public getDurationToClose()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->f:I

    int-to-float v0, v0

    return v0
.end method

.method public getDurationToCloseHeader()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->g:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->o:I

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    return-object v0
.end method

.method public getOffsetToKeepHeaderWhileLoading()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->h()I

    move-result v0

    return v0
.end method

.method public getOffsetToRefresh()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->i()I

    move-result v0

    return v0
.end method

.method public getRatioOfHeaderToHeightRefresh()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->l()F

    move-result v0

    return v0
.end method

.method public getResistance()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->m()F

    move-result v0

    return v0
.end method

.method public h(ZI)V
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    if-eqz p1, :cond_1

    sget-byte v2, Lcom/join/mgps/ptr/PtrFrameLayout;->n0:B

    goto :goto_0

    :cond_1
    sget-byte v2, Lcom/join/mgps/ptr/PtrFrameLayout;->o0:B

    :goto_0
    or-int/2addr v0, v2

    iput v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    const/4 v0, 0x2

    .line 3
    iput-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Lcom/join/mgps/ptr/d;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/d;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->k:Lcom/join/mgps/ptr/d;

    invoke-virtual {v0, p0}, Lcom/join/mgps/ptr/d;->d(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 6
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "PtrUIHandler: onUIRefreshPrepare, mFlag %s"

    invoke-static {v0, v2, v1}, Lcom/join/mgps/ptr/util/a;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->m:Lcom/join/mgps/ptr/PtrFrameLayout$c;

    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v1}, Lcom/join/mgps/ptr/indicator/a;->i()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->g(II)V

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    .line 9
    iput-byte p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->A()V

    :cond_3
    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->p:Z

    return-void
.end method

.method public k(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public l()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    sget-byte v1, Lcom/join/mgps/ptr/PtrFrameLayout;->r0:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    sget-byte v1, Lcom/join/mgps/ptr/PtrFrameLayout;->p0:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->h:Z

    return v0
.end method

.method public o()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    sget-byte v1, Lcom/join/mgps/ptr/PtrFrameLayout;->q0:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->m:Lcom/join/mgps/ptr/PtrFrameLayout$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/join/mgps/ptr/PtrFrameLayout$c;->b(Lcom/join/mgps/ptr/PtrFrameLayout$c;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->y:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_9

    .line 2
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->d:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    .line 4
    :cond_0
    iget v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->e:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    if-nez v0, :cond_b

    .line 7
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9
    instance-of v2, v0, Lcom/join/mgps/ptr/c;

    if-eqz v2, :cond_3

    .line 10
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    .line 11
    iput-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    goto :goto_0

    .line 12
    :cond_3
    instance-of v2, v1, Lcom/join/mgps/ptr/c;

    if-eqz v2, :cond_4

    .line 13
    iput-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    .line 14
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    goto :goto_0

    .line 15
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-nez v2, :cond_5

    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    if-nez v3, :cond_5

    .line 16
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    .line 17
    iput-object v1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    goto :goto_0

    .line 18
    :cond_5
    iget-object v3, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    if-nez v3, :cond_7

    if-ne v2, v0, :cond_6

    move-object v0, v1

    .line 19
    :cond_6
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    goto :goto_0

    :cond_7
    if-ne v3, v0, :cond_8

    move-object v0, v1

    .line 20
    :cond_8
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    goto :goto_0

    :cond_9
    if-ne v0, v3, :cond_a

    .line 21
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    goto :goto_0

    .line 22
    :cond_a
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    const v1, -0x9a00

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v1, "The content view in PtrFrameLayout is empty. Do you forget to specify its id in xml layout file?"

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iput-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 32
    :cond_c
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    return-void

    .line 33
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PtrFrameLayout only can host 2 elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->r()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 14

    move-object v6, p0

    .line 1
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x6

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "onMeasure frame: width: %s, h eight: %s, padding: %s %s %s %s"

    .line 6
    invoke-static {v0, v2, v1}, Lcom/join/mgps/ptr/util/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_0
    iget-object v1, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 9
    iget-object v0, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    iget-object v1, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iput v1, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->o:I

    .line 11
    iget-object v0, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/indicator/a;->F(I)V

    .line 12
    :cond_1
    iget-object v0, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    move v1, p1

    move/from16 v2, p2

    .line 13
    invoke-direct {p0, v0, p1, v2}, Lcom/join/mgps/ptr/PtrFrameLayout;->s(Landroid/view/View;II)V

    .line 14
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 16
    iget-object v1, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    const-string v0, "onMeasure content, width: %s, height: %s, margin: %s %s %s %s"

    .line 19
    invoke-static {v1, v0, v2}, Lcom/join/mgps/ptr/util/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v0, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    .line 21
    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    iget-object v2, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v2}, Lcom/join/mgps/ptr/indicator/a;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    iget-object v2, v6, Lcom/join/mgps/ptr/PtrFrameLayout;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "onMeasure, currentPos: %s, lastPos: %s, top: %s"

    .line 22
    invoke-static {v0, v2, v1}, Lcom/join/mgps/ptr/util/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->i:Z

    return v0
.end method

.method public q()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->a:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDurationToClose(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->f:I

    return-void
.end method

.method public setDurationToCloseHeader(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->g:I

    return-void
.end method

.method public setEnabledNextPtrAtOnce(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    sget-byte v0, Lcom/join/mgps/ptr/PtrFrameLayout;->p0:B

    or-int/2addr p1, v0

    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    sget-byte v0, Lcom/join/mgps/ptr/PtrFrameLayout;->p0:B

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    :goto_0
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->j:Landroid/view/View;

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setInterceptEventWhileWorking(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setKeepHeaderWhenRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->h:Z

    return-void
.end method

.method public setLoadingMinTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->u:I

    return-void
.end method

.method public setOffsetToKeepHeaderWhileLoading(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/indicator/a;->H(I)V

    return-void
.end method

.method public setOffsetToRefresh(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/indicator/a;->I(I)V

    return-void
.end method

.method public setPinContent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    sget-byte v0, Lcom/join/mgps/ptr/PtrFrameLayout;->q0:B

    or-int/2addr p1, v0

    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    sget-byte v0, Lcom/join/mgps/ptr/PtrFrameLayout;->q0:B

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->q:I

    :goto_0
    return-void
.end method

.method public setPtrHandler(Lcom/join/mgps/ptr/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->l:Lcom/join/mgps/ptr/b;

    return-void
.end method

.method public setPtrIndicator(Lcom/join/mgps/ptr/indicator/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/indicator/a;->a(Lcom/join/mgps/ptr/indicator/a;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    return-void
.end method

.method public setPullToRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->i:Z

    return-void
.end method

.method public setRatioOfHeaderHeightToRefresh(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/indicator/a;->J(F)V

    return-void
.end method

.method public setRefreshCompleteHook(Lcom/join/mgps/ptr/e;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->t:Lcom/join/mgps/ptr/e;

    .line 2
    new-instance v0, Lcom/join/mgps/ptr/PtrFrameLayout$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/ptr/PtrFrameLayout$b;-><init>(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/e;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setResistance(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/indicator/a;->K(F)V

    return-void
.end method

.method protected v(ZBLcom/join/mgps/ptr/indicator/a;)V
    .locals 0

    return-void
.end method

.method protected w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "call onRelease after scroll abort"

    invoke-static {v0, v1}, Lcom/join/mgps/ptr/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->y(Z)V

    :cond_1
    return-void
.end method

.method protected x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->w:Lcom/join/mgps/ptr/indicator/a;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/indicator/a;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrFrameLayout;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/join/mgps/ptr/PtrFrameLayout;->J:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "call onRelease after scroll finish"

    invoke-static {v0, v1}, Lcom/join/mgps/ptr/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->y(Z)V

    :cond_1
    return-void
.end method
