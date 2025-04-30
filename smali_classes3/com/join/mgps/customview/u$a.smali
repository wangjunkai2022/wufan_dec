.class Lcom/join/mgps/customview/u$a;
.super Ljava/lang/Object;
.source "MyGameBasePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/u;->setupAttrs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/u;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/u$a;->a:Lcom/join/mgps/customview/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/u$a;->a:Lcom/join/mgps/customview/u;

    invoke-virtual {p1}, Lcom/join/mgps/customview/u;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
