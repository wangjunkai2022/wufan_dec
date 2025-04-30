.class Lcom/join/mgps/activity/message/e$a;
.super Ljava/lang/Object;
.source "NoticeFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


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
    iput-object p1, p0, Lcom/join/mgps/activity/message/e$a;->a:Lcom/join/mgps/activity/message/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$a;->a:Lcom/join/mgps/activity/message/e;

    const/4 v1, 0x1

    iput v1, v0, Lcom/join/mgps/activity/message/e;->j:I

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/activity/message/e;->M()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$a;->a:Lcom/join/mgps/activity/message/e;

    iget-boolean v1, v0, Lcom/join/mgps/activity/message/e;->l:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/activity/message/e;->Q()V

    :cond_0
    return-void
.end method
