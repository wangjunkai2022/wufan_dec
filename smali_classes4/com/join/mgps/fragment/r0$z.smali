.class Lcom/join/mgps/fragment/r0$z;
.super Ljava/lang/Object;
.source "ForumIndexFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/r0;->A0(ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/join/mgps/fragment/r0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/r0;ZLjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/r0$z;->c:Lcom/join/mgps/fragment/r0;

    iput-boolean p2, p0, Lcom/join/mgps/fragment/r0$z;->a:Z

    iput-object p3, p0, Lcom/join/mgps/fragment/r0$z;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/r0$z;->c:Lcom/join/mgps/fragment/r0;

    iget-boolean v1, p0, Lcom/join/mgps/fragment/r0$z;->a:Z

    iget-object v2, p0, Lcom/join/mgps/fragment/r0$z;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/fragment/r0;->Z0(Lcom/join/mgps/fragment/r0;ZLjava/util/List;)V

    return-void
.end method
