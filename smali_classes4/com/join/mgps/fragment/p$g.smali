.class Lcom/join/mgps/fragment/p$g;
.super Ljava/lang/Object;
.source "CodesBoxFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/p;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/p;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/p$g;->a:Lcom/join/mgps/fragment/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p$g;->a:Lcom/join/mgps/fragment/p;

    invoke-static {v0}, Lcom/join/mgps/fragment/p;->d0(Lcom/join/mgps/fragment/p;)V

    return-void
.end method
