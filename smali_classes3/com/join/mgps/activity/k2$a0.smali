.class Lcom/join/mgps/activity/k2$a0;
.super Ljava/lang/Object;
.source "PapaMainV2Fragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/k2;->x1(Lcom/join/mgps/dto/HomeFloatData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/HomeFloatData;

.field final synthetic b:Lcom/join/mgps/activity/k2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/k2;Lcom/join/mgps/dto/HomeFloatData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/k2$a0;->b:Lcom/join/mgps/activity/k2;

    iput-object p2, p0, Lcom/join/mgps/activity/k2$a0;->a:Lcom/join/mgps/dto/HomeFloatData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/k2$a0;->b:Lcom/join/mgps/activity/k2;

    iget-object v1, p0, Lcom/join/mgps/activity/k2$a0;->a:Lcom/join/mgps/dto/HomeFloatData;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/k2;->c2(Lcom/join/mgps/activity/k2;Lcom/join/mgps/dto/HomeFloatData;)V

    return-void
.end method
