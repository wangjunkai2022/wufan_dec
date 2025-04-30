.class Lcom/join/mgps/activity/MGMainActivity_$b0;
.super Ljava/lang/Object;
.source "MGMainActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity_;->showInstallAppDialogActivity(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/join/mgps/activity/MGMainActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity_;ILjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity_$b0;->c:Lcom/join/mgps/activity/MGMainActivity_;

    iput p2, p0, Lcom/join/mgps/activity/MGMainActivity_$b0;->a:I

    iput-object p3, p0, Lcom/join/mgps/activity/MGMainActivity_$b0;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity_$b0;->c:Lcom/join/mgps/activity/MGMainActivity_;

    iget v1, p0, Lcom/join/mgps/activity/MGMainActivity_$b0;->a:I

    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity_$b0;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/MGMainActivity_;->V0(Lcom/join/mgps/activity/MGMainActivity_;ILjava/util/List;)V

    return-void
.end method
