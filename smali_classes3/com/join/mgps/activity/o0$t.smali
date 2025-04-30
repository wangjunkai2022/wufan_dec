.class Lcom/join/mgps/activity/o0$t;
.super Ljava/lang/Object;
.source "GamedetialModleFourFragemnt_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/o0;->u0(Lcom/join/mgps/activity/n0$v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/n0$v;

.field final synthetic b:Lcom/join/mgps/activity/o0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/o0;Lcom/join/mgps/activity/n0$v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/o0$t;->b:Lcom/join/mgps/activity/o0;

    iput-object p2, p0, Lcom/join/mgps/activity/o0$t;->a:Lcom/join/mgps/activity/n0$v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o0$t;->b:Lcom/join/mgps/activity/o0;

    iget-object v1, p0, Lcom/join/mgps/activity/o0$t;->a:Lcom/join/mgps/activity/n0$v;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/o0;->P0(Lcom/join/mgps/activity/o0;Lcom/join/mgps/activity/n0$v;)V

    return-void
.end method
