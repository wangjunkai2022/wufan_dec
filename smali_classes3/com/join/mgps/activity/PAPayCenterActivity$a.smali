.class Lcom/join/mgps/activity/PAPayCenterActivity$a;
.super Ljava/lang/Object;
.source "PAPayCenterActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PAPayCenterActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PAPayCenterActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PAPayCenterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity$a;->a:Lcom/join/mgps/activity/PAPayCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity$a;->a:Lcom/join/mgps/activity/PAPayCenterActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/PAPayCenterActivity;->F0(Lcom/join/mgps/activity/PAPayCenterActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity$a;->a:Lcom/join/mgps/activity/PAPayCenterActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/PAPayCenterActivity;->G0(Lcom/join/mgps/activity/PAPayCenterActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/PAPayCenterActivity$a;->a:Lcom/join/mgps/activity/PAPayCenterActivity;

    iget v2, v2, Lcom/join/mgps/activity/PAPayCenterActivity;->q:I

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/PAPayCenterActivity;->I0(Lcom/join/mgps/dto/AccountBean;I)V

    return-void
.end method
