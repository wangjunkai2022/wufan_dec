.class Lcom/join/mgps/fragment/r4$k;
.super Ljava/lang/Object;
.source "SearchGameListFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/r4;->j0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/join/mgps/fragment/r4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/r4;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/r4$k;->b:Lcom/join/mgps/fragment/r4;

    iput-boolean p2, p0, Lcom/join/mgps/fragment/r4$k;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/r4$k;->b:Lcom/join/mgps/fragment/r4;

    iget-boolean v1, p0, Lcom/join/mgps/fragment/r4$k;->a:Z

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/r4;->w0(Lcom/join/mgps/fragment/r4;Z)V

    return-void
.end method
