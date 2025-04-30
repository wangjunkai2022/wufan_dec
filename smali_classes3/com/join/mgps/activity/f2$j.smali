.class Lcom/join/mgps/activity/f2$j;
.super Ljava/lang/Object;
.source "PapaMainFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/f2;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/f2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/f2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/f2$j;->a:Lcom/join/mgps/activity/f2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/f2$j;->a:Lcom/join/mgps/activity/f2;

    iget-object p1, p1, Lcom/join/mgps/activity/f2;->T0:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
