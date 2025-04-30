.class Lcom/join/mgps/fragment/p$h;
.super Ljava/lang/Object;
.source "CodesBoxFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/p;->showMain(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/fragment/p;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/p;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/p$h;->b:Lcom/join/mgps/fragment/p;

    iput-object p2, p0, Lcom/join/mgps/fragment/p$h;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p$h;->b:Lcom/join/mgps/fragment/p;

    iget-object v1, p0, Lcom/join/mgps/fragment/p$h;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/p;->e0(Lcom/join/mgps/fragment/p;Ljava/util/List;)V

    return-void
.end method
