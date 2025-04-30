.class Lcom/join/mgps/activity/ShareGameActivity_$a;
.super Ljava/lang/Object;
.source "ShareGameActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareGameActivity_;->M0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ShareGameActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareGameActivity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity_$a;->a:Lcom/join/mgps/activity/ShareGameActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_$a;->a:Lcom/join/mgps/activity/ShareGameActivity_;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareGameActivity_;->Y0(Lcom/join/mgps/activity/ShareGameActivity_;)V

    return-void
.end method
