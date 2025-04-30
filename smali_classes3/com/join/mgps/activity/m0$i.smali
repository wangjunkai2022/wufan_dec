.class Lcom/join/mgps/activity/m0$i;
.super Ljava/lang/Object;
.source "GamedetialModleFiveFragemnt_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/m0;->b1(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field final synthetic b:Lcom/join/mgps/activity/m0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/m0;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/m0$i;->b:Lcom/join/mgps/activity/m0;

    iput-object p2, p0, Lcom/join/mgps/activity/m0$i;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/m0$i;->b:Lcom/join/mgps/activity/m0;

    iget-object v1, p0, Lcom/join/mgps/activity/m0$i;->a:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/m0;->q1(Lcom/join/mgps/activity/m0;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    return-void
.end method
