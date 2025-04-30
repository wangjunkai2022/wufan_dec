.class Lcom/join/mgps/fragment/f0$l;
.super Ljava/lang/Object;
.source "DiscoveryFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/f0;->j0(Lcom/join/mgps/dto/DiscoveryMainDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/DiscoveryMainDataBean;

.field final synthetic b:Lcom/join/mgps/fragment/f0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f0;Lcom/join/mgps/dto/DiscoveryMainDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/f0$l;->b:Lcom/join/mgps/fragment/f0;

    iput-object p2, p0, Lcom/join/mgps/fragment/f0$l;->a:Lcom/join/mgps/dto/DiscoveryMainDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f0$l;->b:Lcom/join/mgps/fragment/f0;

    iget-object v1, p0, Lcom/join/mgps/fragment/f0$l;->a:Lcom/join/mgps/dto/DiscoveryMainDataBean;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/f0;->o0(Lcom/join/mgps/fragment/f0;Lcom/join/mgps/dto/DiscoveryMainDataBean;)V

    return-void
.end method
