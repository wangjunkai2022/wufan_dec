.class Lcom/join/mgps/activity/SimulatorAreaActivity$b;
.super Ljava/lang/Object;
.source "SimulatorAreaActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SimulatorAreaActivity;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SimulatorAreaActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SimulatorAreaActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$b;->a:Lcom/join/mgps/activity/SimulatorAreaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$b;->a:Lcom/join/mgps/activity/SimulatorAreaActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->D0(Lcom/join/mgps/activity/SimulatorAreaActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$b;->a:Lcom/join/mgps/activity/SimulatorAreaActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->H0(Lcom/join/mgps/activity/SimulatorAreaActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$b;->a:Lcom/join/mgps/activity/SimulatorAreaActivity;

    const-string v2, "m1"

    invoke-static {v0, v2}, Lcom/join/mgps/activity/SimulatorAreaActivity;->F0(Lcom/join/mgps/activity/SimulatorAreaActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$b;->a:Lcom/join/mgps/activity/SimulatorAreaActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->E0(Lcom/join/mgps/activity/SimulatorAreaActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->I0(Ljava/lang/String;I)V

    return-void
.end method
