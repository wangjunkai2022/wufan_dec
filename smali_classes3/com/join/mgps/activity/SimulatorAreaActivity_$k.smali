.class Lcom/join/mgps/activity/SimulatorAreaActivity_$k;
.super Ljava/lang/Object;
.source "SimulatorAreaActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SimulatorAreaActivity_;->M0(Lcom/join/mgps/dto/SimulatorAreaDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/SimulatorAreaDataBean;

.field final synthetic b:Lcom/join/mgps/activity/SimulatorAreaActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SimulatorAreaActivity_;Lcom/join/mgps/dto/SimulatorAreaDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity_$k;->b:Lcom/join/mgps/activity/SimulatorAreaActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity_$k;->a:Lcom/join/mgps/dto/SimulatorAreaDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity_$k;->b:Lcom/join/mgps/activity/SimulatorAreaActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity_$k;->a:Lcom/join/mgps/dto/SimulatorAreaDataBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/SimulatorAreaActivity_;->R0(Lcom/join/mgps/activity/SimulatorAreaActivity_;Lcom/join/mgps/dto/SimulatorAreaDataBean;)V

    return-void
.end method
