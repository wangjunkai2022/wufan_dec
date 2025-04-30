.class Lcom/join/mgps/fragment/v4$n;
.super Ljava/lang/Object;
.source "UserCenterFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v4;->updateAdapterByNewMsgCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/fragment/v4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v4;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v4$n;->b:Lcom/join/mgps/fragment/v4;

    iput p2, p0, Lcom/join/mgps/fragment/v4$n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v4$n;->b:Lcom/join/mgps/fragment/v4;

    iget v1, p0, Lcom/join/mgps/fragment/v4$n;->a:I

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/v4;->a0(Lcom/join/mgps/fragment/v4;I)V

    return-void
.end method
