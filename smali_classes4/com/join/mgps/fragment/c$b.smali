.class Lcom/join/mgps/fragment/c$b;
.super Ljava/lang/Object;
.source "ArenaGameListFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/c;->showLodingFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/c$b;->a:Lcom/join/mgps/fragment/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c$b;->a:Lcom/join/mgps/fragment/c;

    invoke-static {v0}, Lcom/join/mgps/fragment/c;->f0(Lcom/join/mgps/fragment/c;)V

    return-void
.end method
