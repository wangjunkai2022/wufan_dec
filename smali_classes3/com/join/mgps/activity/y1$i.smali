.class Lcom/join/mgps/activity/y1$i;
.super Ljava/lang/Object;
.source "MyGamePapaFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/y1;->g1(Lcom/join/mgps/dto/SNKGameInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/SNKGameInfoBean;

.field final synthetic b:Lcom/join/mgps/activity/y1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/y1;Lcom/join/mgps/dto/SNKGameInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/y1$i;->b:Lcom/join/mgps/activity/y1;

    iput-object p2, p0, Lcom/join/mgps/activity/y1$i;->a:Lcom/join/mgps/dto/SNKGameInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/y1$i;->b:Lcom/join/mgps/activity/y1;

    iget-object v1, p0, Lcom/join/mgps/activity/y1$i;->a:Lcom/join/mgps/dto/SNKGameInfoBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/y1;->F1(Lcom/join/mgps/activity/y1;Lcom/join/mgps/dto/SNKGameInfoBean;)V

    return-void
.end method
