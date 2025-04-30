.class Lcom/join/mgps/activity/t0$a;
.super Ljava/lang/Object;
.source "MGFightFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/t0;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/t0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/t0$a;->a:Lcom/join/mgps/activity/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t0$a;->a:Lcom/join/mgps/activity/t0;

    invoke-static {v0}, Lcom/join/mgps/activity/t0;->W(Lcom/join/mgps/activity/t0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/t0$a;->a:Lcom/join/mgps/activity/t0;

    invoke-virtual {v0}, Lcom/join/mgps/activity/t0;->b0()V

    return-void
.end method
