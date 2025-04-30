.class Lcom/join/mgps/activity/message/e$b;
.super Ljava/lang/Object;
.source "NoticeFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/e;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/message/e;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/e$b;->a:Lcom/join/mgps/activity/message/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$b;->a:Lcom/join/mgps/activity/message/e;

    invoke-virtual {v0}, Lcom/join/mgps/activity/message/e;->M()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$b;->a:Lcom/join/mgps/activity/message/e;

    iget-boolean v1, v0, Lcom/join/mgps/activity/message/e;->l:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/message/e;->Q()V

    :cond_0
    return-void
.end method
