.class public Lcom/join/mgps/customview/XListView4NewGame;
.super Lcom/join/mgps/customview/XListView2;
.source "XListView4NewGame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/XListView4NewGame$a;
    }
.end annotation


# static fields
.field public static final G:Ljava/lang/String; = "XListView4NewGame"


# instance fields
.field private E:I

.field private F:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/XListView2;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/XListView4NewGame;->E:I

    .line 3
    new-instance p1, Landroid/view/GestureDetector;

    new-instance v0, Lcom/join/mgps/customview/XListView4NewGame$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/XListView4NewGame$a;-><init>(Lcom/join/mgps/customview/XListView4NewGame;)V

    invoke-direct {p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/join/mgps/customview/XListView4NewGame;->F:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/XListView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/XListView4NewGame;->E:I

    .line 6
    new-instance p1, Landroid/view/GestureDetector;

    new-instance p2, Lcom/join/mgps/customview/XListView4NewGame$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/XListView4NewGame$a;-><init>(Lcom/join/mgps/customview/XListView4NewGame;)V

    invoke-direct {p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/join/mgps/customview/XListView4NewGame;->F:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/XListView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/XListView4NewGame;->E:I

    .line 9
    new-instance p1, Landroid/view/GestureDetector;

    new-instance p2, Lcom/join/mgps/customview/XListView4NewGame$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/XListView4NewGame$a;-><init>(Lcom/join/mgps/customview/XListView4NewGame;)V

    invoke-direct {p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/join/mgps/customview/XListView4NewGame;->F:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4NewGame;->F:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/XListView4NewGame;->E:I

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/XListView4NewGame;->E:I

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 5
    iput v1, p0, Lcom/join/mgps/customview/XListView4NewGame;->E:I

    .line 6
    :cond_1
    iput v1, p0, Lcom/join/mgps/customview/XListView4NewGame;->E:I

    .line 7
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListView2;->a:F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/XListView2;->b:F

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/XListView4NewGame;->F:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/join/mgps/customview/XListView2;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
