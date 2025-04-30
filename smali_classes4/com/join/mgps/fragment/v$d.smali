.class Lcom/join/mgps/fragment/v$d;
.super Ljava/lang/Object;
.source "CollectionThreeSubFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/v;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v$d;->a:Lcom/join/mgps/fragment/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v$d;->a:Lcom/join/mgps/fragment/v;

    invoke-static {v0}, Lcom/join/mgps/fragment/v;->Q(Lcom/join/mgps/fragment/v;)V

    return-void
.end method
