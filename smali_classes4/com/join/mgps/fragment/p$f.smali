.class Lcom/join/mgps/fragment/p$f;
.super Ljava/lang/Object;
.source "CodesBoxFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/p;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/fragment/p;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/p;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/p$f;->b:Lcom/join/mgps/fragment/p;

    iput-object p2, p0, Lcom/join/mgps/fragment/p$f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p$f;->b:Lcom/join/mgps/fragment/p;

    iget-object v1, p0, Lcom/join/mgps/fragment/p$f;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/p;->c0(Lcom/join/mgps/fragment/p;Ljava/lang/String;)V

    return-void
.end method
