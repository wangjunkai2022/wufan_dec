.class Lcom/join/mgps/activity/h0$q;
.super Ljava/lang/Object;
.source "GamedetialModleBtFragemnt_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/h0;->W(Lcom/join/mgps/dto/GameFromPopoWinBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameFromPopoWinBean;

.field final synthetic b:Lcom/join/mgps/activity/h0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/h0;Lcom/join/mgps/dto/GameFromPopoWinBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/h0$q;->b:Lcom/join/mgps/activity/h0;

    iput-object p2, p0, Lcom/join/mgps/activity/h0$q;->a:Lcom/join/mgps/dto/GameFromPopoWinBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/h0$q;->b:Lcom/join/mgps/activity/h0;

    iget-object v1, p0, Lcom/join/mgps/activity/h0$q;->a:Lcom/join/mgps/dto/GameFromPopoWinBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/h0;->u1(Lcom/join/mgps/activity/h0;Lcom/join/mgps/dto/GameFromPopoWinBean;)V

    return-void
.end method
