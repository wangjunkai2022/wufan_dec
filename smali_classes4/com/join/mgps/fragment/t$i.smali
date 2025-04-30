.class Lcom/join/mgps/fragment/t$i;
.super Ljava/lang/Object;
.source "CollectionModuleTwoFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/t;->showMain(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/fragment/t;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/t;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/t$i;->b:Lcom/join/mgps/fragment/t;

    iput-object p2, p0, Lcom/join/mgps/fragment/t$i;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t$i;->b:Lcom/join/mgps/fragment/t;

    iget-object v1, p0, Lcom/join/mgps/fragment/t$i;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/t;->k0(Lcom/join/mgps/fragment/t;Ljava/util/List;)V

    return-void
.end method
