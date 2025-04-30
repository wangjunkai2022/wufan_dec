.class Lcom/join/mgps/activity/HandShankBaseActivity$a;
.super Ljava/lang/Object;
.source "HandShankBaseActivity.java"

# interfaces
.implements Lcom/papa/controller/core/ControllerManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HandShankBaseActivity;->O0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HandShankBaseActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HandShankBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankBaseActivity$a;->a:Lcom/join/mgps/activity/HandShankBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankBaseActivity$a;->a:Lcom/join/mgps/activity/HandShankBaseActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/HandShankBaseActivity;->b:Lcom/papa/controller/core/d;

    invoke-virtual {v0}, Lcom/papa/controller/core/d;->q()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/activity/HandShankBaseActivity;->K0(ILjava/util/List;)V

    return-void
.end method

.method public b(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankBaseActivity$a;->a:Lcom/join/mgps/activity/HandShankBaseActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/HandShankBaseActivity;->b:Lcom/papa/controller/core/d;

    invoke-virtual {v0}, Lcom/papa/controller/core/d;->q()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/activity/HandShankBaseActivity;->K0(ILjava/util/List;)V

    return-void
.end method
