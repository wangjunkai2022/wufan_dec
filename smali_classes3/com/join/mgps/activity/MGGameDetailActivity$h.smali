.class Lcom/join/mgps/activity/MGGameDetailActivity$h;
.super Ljava/lang/Object;
.source "MGGameDetailActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity;->p1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGGameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$h;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$h;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    const/4 v1, 0x1

    iput v1, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->h1:I

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->G0()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$h;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->h1()V

    return-void
.end method
