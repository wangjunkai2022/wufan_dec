.class Lcom/join/mgps/fragment/j3$e;
.super Ljava/lang/Object;
.source "MyArchiveFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/j3;->u0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/join/mgps/fragment/j3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/j3;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/j3$e;->b:Lcom/join/mgps/fragment/j3;

    iput-boolean p2, p0, Lcom/join/mgps/fragment/j3$e;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j3$e;->b:Lcom/join/mgps/fragment/j3;

    iget-boolean v1, p0, Lcom/join/mgps/fragment/j3$e;->a:Z

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/j3;->O0(Lcom/join/mgps/fragment/j3;Z)V

    return-void
.end method
