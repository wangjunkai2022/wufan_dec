.class Lcom/join/mgps/adapter/j2$d;
.super Ljava/lang/Object;
.source "GameTransferListAdapter_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/j2;->a(Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/SparseArray;

.field final synthetic b:Lcom/join/mgps/adapter/j2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/j2;Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/j2$d;->b:Lcom/join/mgps/adapter/j2;

    iput-object p2, p0, Lcom/join/mgps/adapter/j2$d;->a:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/j2$d;->b:Lcom/join/mgps/adapter/j2;

    iget-object v1, p0, Lcom/join/mgps/adapter/j2$d;->a:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Lcom/join/mgps/adapter/j2;->t(Lcom/join/mgps/adapter/j2;Landroid/util/SparseArray;)V

    return-void
.end method
