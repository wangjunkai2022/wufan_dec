.class Lcom/join/mgps/activity/GivePraiceActivity$b;
.super Ljava/lang/Object;
.source "GivePraiceActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GivePraiceActivity;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GivePraiceActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GivePraiceActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity$b;->a:Lcom/join/mgps/activity/GivePraiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$b;->a:Lcom/join/mgps/activity/GivePraiceActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GivePraiceActivity;->E0()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$b;->a:Lcom/join/mgps/activity/GivePraiceActivity;

    iget v1, v0, Lcom/join/mgps/activity/GivePraiceActivity;->q:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/GivePraiceActivity;->K0()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/activity/GivePraiceActivity;->L0()V

    :cond_1
    :goto_0
    return-void
.end method
