.class Lcom/join/mgps/activity/CloudActivity_$e;
.super Ljava/lang/Object;
.source "CloudActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudActivity_;->K0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CloudActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudActivity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity_$e;->a:Lcom/join/mgps/activity/CloudActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity_$e;->a:Lcom/join/mgps/activity/CloudActivity_;

    invoke-static {v0}, Lcom/join/mgps/activity/CloudActivity_;->S0(Lcom/join/mgps/activity/CloudActivity_;)V

    return-void
.end method
