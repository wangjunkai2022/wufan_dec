.class Lcom/join/mgps/adapter/h2$b;
.super Ljava/lang/Object;
.source "GameTransferHistoryAdapter_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/h2;->g(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/h2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h2;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h2$b;->b:Lcom/join/mgps/adapter/h2;

    iput p2, p0, Lcom/join/mgps/adapter/h2$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h2$b;->b:Lcom/join/mgps/adapter/h2;

    iget v1, p0, Lcom/join/mgps/adapter/h2$b;->a:I

    invoke-static {v0, v1}, Lcom/join/mgps/adapter/h2;->o(Lcom/join/mgps/adapter/h2;I)V

    return-void
.end method
