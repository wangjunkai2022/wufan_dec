.class Lcom/join/mgps/activity/message/c$f;
.super Ljava/lang/Object;
.source "MessagePriaceFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/c;->b0(Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/join/mgps/activity/message/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/c;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/c$f;->b:Lcom/join/mgps/activity/message/c;

    iput-object p2, p0, Lcom/join/mgps/activity/message/c$f;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/message/c$f;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/message/c$f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-le v1, v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/message/c$f;->b:Lcom/join/mgps/activity/message/c;

    iget-boolean v1, v0, Lcom/join/mgps/activity/message/c;->v:Z

    if-ne v1, v2, :cond_1

    .line 7
    iget-object v0, v0, Lcom/join/mgps/activity/message/c;->t:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/message/c$f;->b:Lcom/join/mgps/activity/message/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/join/mgps/activity/message/c;->v:Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/c$f;->b:Lcom/join/mgps/activity/message/c;

    iput-boolean v2, v0, Lcom/join/mgps/activity/message/c;->v:Z

    :cond_1
    :goto_0
    return-void
.end method
