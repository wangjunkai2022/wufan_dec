.class Lcom/join/mgps/activity/MGMainActivity_$s;
.super Ljava/lang/Object;
.source "MGMainActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity_;->checkShowOldUserRecom(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/join/mgps/activity/MGMainActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity_;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_$s;->b:Lcom/join/mgps/activity/MGMainActivity_;

    iput-boolean p2, p0, Lcom/join/mgps/activity/MGMainActivity_$s;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_$s;->b:Lcom/join/mgps/activity/MGMainActivity_;

    iget-boolean v1, p0, Lcom/join/mgps/activity/MGMainActivity_$s;->a:Z

    invoke-static {v0, v1}, Lcom/join/mgps/activity/MGMainActivity_;->A1(Lcom/join/mgps/activity/MGMainActivity_;Z)V

    return-void
.end method
