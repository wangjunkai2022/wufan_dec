.class Lcom/join/mgps/fragment/n4$l;
.super Ljava/lang/Object;
.source "RankingItemV2Fragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/n4;->l0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/join/mgps/fragment/n4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/n4;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/n4$l;->b:Lcom/join/mgps/fragment/n4;

    iput-boolean p2, p0, Lcom/join/mgps/fragment/n4$l;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/n4$l;->b:Lcom/join/mgps/fragment/n4;

    iget-boolean v1, p0, Lcom/join/mgps/fragment/n4$l;->a:Z

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/n4;->r0(Lcom/join/mgps/fragment/n4;Z)V

    return-void
.end method
