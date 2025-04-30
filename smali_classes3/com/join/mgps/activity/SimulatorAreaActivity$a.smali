.class Lcom/join/mgps/activity/SimulatorAreaActivity$a;
.super Ljava/lang/Object;
.source "SimulatorAreaActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


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
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$a;->a:Lcom/join/mgps/activity/SimulatorAreaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$a;->a:Lcom/join/mgps/activity/SimulatorAreaActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->D0(Lcom/join/mgps/activity/SimulatorAreaActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$a;->a:Lcom/join/mgps/activity/SimulatorAreaActivity;

    const-string v1, "m2"

    invoke-static {v0, v1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->F0(Lcom/join/mgps/activity/SimulatorAreaActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$a;->a:Lcom/join/mgps/activity/SimulatorAreaActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->E0(Lcom/join/mgps/activity/SimulatorAreaActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity$a;->a:Lcom/join/mgps/activity/SimulatorAreaActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/SimulatorAreaActivity;->G0(Lcom/join/mgps/activity/SimulatorAreaActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/SimulatorAreaActivity;->I0(Ljava/lang/String;I)V

    return-void
.end method
