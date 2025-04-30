.class Lcom/join/mgps/activity/MGGameDetailActivity_$m;
.super Ljava/lang/Object;
.source "MGGameDetailActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity_;->E1(Ljava/lang/String;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/activity/MGGameDetailActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;ZII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$m;->e:Lcom/join/mgps/activity/MGGameDetailActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$m;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$m;->b:Z

    iput p4, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$m;->c:I

    iput p5, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$m;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$m;->e:Lcom/join/mgps/activity/MGGameDetailActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$m;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$m;->b:Z

    iget v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$m;->c:I

    iget v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$m;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/activity/MGGameDetailActivity_;->r3(Lcom/join/mgps/activity/MGGameDetailActivity_;Ljava/lang/String;ZII)V

    return-void
.end method
