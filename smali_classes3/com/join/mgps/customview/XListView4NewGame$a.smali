.class Lcom/join/mgps/customview/XListView4NewGame$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "XListView4NewGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/XListView4NewGame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/XListView4NewGame;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/XListView4NewGame;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListView4NewGame$a;->a:Lcom/join/mgps/customview/XListView4NewGame;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float p2, p2, p3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
