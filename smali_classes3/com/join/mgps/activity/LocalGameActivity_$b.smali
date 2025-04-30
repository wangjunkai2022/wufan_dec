.class Lcom/join/mgps/activity/LocalGameActivity_$b;
.super Ljava/lang/Object;
.source "LocalGameActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/LocalGameActivity_;->M0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/LocalGameActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/LocalGameActivity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/LocalGameActivity_$b;->a:Lcom/join/mgps/activity/LocalGameActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/LocalGameActivity_$b;->a:Lcom/join/mgps/activity/LocalGameActivity_;

    invoke-static {v0}, Lcom/join/mgps/activity/LocalGameActivity_;->O0(Lcom/join/mgps/activity/LocalGameActivity_;)V

    return-void
.end method
