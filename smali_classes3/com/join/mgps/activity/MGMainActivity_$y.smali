.class Lcom/join/mgps/activity/MGMainActivity_$y;
.super Ljava/lang/Object;
.source "MGMainActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity_;->startIntentOldUserRecom(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/join/mgps/activity/MGMainActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity_;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_$y;->b:Lcom/join/mgps/activity/MGMainActivity_;

    iput-wide p2, p0, Lcom/join/mgps/activity/MGMainActivity_$y;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_$y;->b:Lcom/join/mgps/activity/MGMainActivity_;

    iget-wide v1, p0, Lcom/join/mgps/activity/MGMainActivity_$y;->a:J

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/MGMainActivity_;->S0(Lcom/join/mgps/activity/MGMainActivity_;J)V

    return-void
.end method
