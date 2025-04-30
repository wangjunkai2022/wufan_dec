.class Lcom/join/mgps/fragment/r4$i;
.super Ljava/lang/Object;
.source "SearchGameListFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/r4;->i0(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/fragment/r4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/r4;Ljava/util/List;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/r4$i;->c:Lcom/join/mgps/fragment/r4;

    iput-object p2, p0, Lcom/join/mgps/fragment/r4$i;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/join/mgps/fragment/r4$i;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/r4$i;->c:Lcom/join/mgps/fragment/r4;

    iget-object v1, p0, Lcom/join/mgps/fragment/r4$i;->a:Ljava/util/List;

    iget-boolean v2, p0, Lcom/join/mgps/fragment/r4$i;->b:Z

    invoke-static {v0, v1, v2}, Lcom/join/mgps/fragment/r4;->u0(Lcom/join/mgps/fragment/r4;Ljava/util/List;Z)V

    return-void
.end method
