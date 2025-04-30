.class Lcom/join/mgps/fragment/m2$l;
.super Ljava/lang/Object;
.source "GameFromBuildFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/m2;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/fragment/m2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/m2;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/m2$l;->b:Lcom/join/mgps/fragment/m2;

    iput-object p2, p0, Lcom/join/mgps/fragment/m2$l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m2$l;->b:Lcom/join/mgps/fragment/m2;

    iget-object v1, p0, Lcom/join/mgps/fragment/m2$l;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/m2;->m0(Lcom/join/mgps/fragment/m2;Ljava/lang/String;)V

    return-void
.end method
