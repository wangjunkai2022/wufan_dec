.class Lcom/tbruyelle/rxpermissions2/c$a;
.super Ljava/lang/Object;
.source "RxPermissions.java"

# interfaces
.implements Lcom/tbruyelle/rxpermissions2/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/c;->h(Landroidx/fragment/app/FragmentManager;)Lcom/tbruyelle/rxpermissions2/c$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tbruyelle/rxpermissions2/c$f<",
        "Lcom/tbruyelle/rxpermissions2/d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tbruyelle/rxpermissions2/d;

.field final synthetic b:Landroidx/fragment/app/FragmentManager;

.field final synthetic c:Lcom/tbruyelle/rxpermissions2/c;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions2/c;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/c$a;->c:Lcom/tbruyelle/rxpermissions2/c;

    iput-object p2, p0, Lcom/tbruyelle/rxpermissions2/c$a;->b:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/tbruyelle/rxpermissions2/d;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/c$a;->a:Lcom/tbruyelle/rxpermissions2/d;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/c$a;->c:Lcom/tbruyelle/rxpermissions2/c;

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions2/c$a;->b:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, v1}, Lcom/tbruyelle/rxpermissions2/c;->a(Lcom/tbruyelle/rxpermissions2/c;Landroidx/fragment/app/FragmentManager;)Lcom/tbruyelle/rxpermissions2/d;

    move-result-object v0

    iput-object v0, p0, Lcom/tbruyelle/rxpermissions2/c$a;->a:Lcom/tbruyelle/rxpermissions2/d;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/c$a;->a:Lcom/tbruyelle/rxpermissions2/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tbruyelle/rxpermissions2/c$a;->a()Lcom/tbruyelle/rxpermissions2/d;

    move-result-object v0

    return-object v0
.end method
