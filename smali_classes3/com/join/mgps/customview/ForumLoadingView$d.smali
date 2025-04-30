.class Lcom/join/mgps/customview/ForumLoadingView$d;
.super Landroid/os/Handler;
.source "ForumLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ForumLoadingView;->k(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ForumLoadingView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ForumLoadingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->LOADING:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-static {p1}, Lcom/join/mgps/customview/ForumLoadingView;->b(Lcom/join/mgps/customview/ForumLoadingView;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->LOADING_FAILED:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-static {p1}, Lcom/join/mgps/customview/ForumLoadingView;->c(Lcom/join/mgps/customview/ForumLoadingView;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->LOADING_SUCCESS:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->d(Lcom/join/mgps/customview/ForumLoadingView;Z)V

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_FAILED_IMG_VISIBILITY:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 9
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->e(Lcom/join/mgps/customview/ForumLoadingView;I)V

    goto :goto_0

    .line 11
    :cond_3
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_RELOADING_VISIBILITY:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 12
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->f(Lcom/join/mgps/customview/ForumLoadingView;I)V

    goto :goto_0

    .line 14
    :cond_4
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_FAILED_IMG_RES:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->g(Lcom/join/mgps/customview/ForumLoadingView;I)V

    goto :goto_0

    .line 16
    :cond_5
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_FAILED_RELOADING_RES:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->h(Lcom/join/mgps/customview/ForumLoadingView;I)V

    goto :goto_0

    .line 18
    :cond_6
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_FAILED_MSG:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->i(Lcom/join/mgps/customview/ForumLoadingView;Ljava/lang/String;)V

    .line 21
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
