.class Lcom/join/mgps/customview/ScrollTextViewLayout$a;
.super Landroid/os/Handler;
.source "ScrollTextViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ScrollTextViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ScrollTextViewLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ScrollTextViewLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->k()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->l()V

    :goto_0
    return-void
.end method
