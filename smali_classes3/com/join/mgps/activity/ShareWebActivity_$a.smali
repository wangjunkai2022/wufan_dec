.class Lcom/join/mgps/activity/ShareWebActivity_$a;
.super Ljava/lang/Object;
.source "ShareWebActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity_;->showLoding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ShareWebActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity_$a;->a:Lcom/join/mgps/activity/ShareWebActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_$a;->a:Lcom/join/mgps/activity/ShareWebActivity_;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity_;->t2(Lcom/join/mgps/activity/ShareWebActivity_;)V

    return-void
.end method
