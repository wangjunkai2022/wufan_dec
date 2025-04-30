.class Lcom/join/mgps/activity/MGGameDetailActivity_$j;
.super Ljava/lang/Object;
.source "MGGameDetailActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity_;->r2(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

.field final synthetic b:Lcom/join/mgps/activity/MGGameDetailActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$j;->b:Lcom/join/mgps/activity/MGGameDetailActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$j;->a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$j;->b:Lcom/join/mgps/activity/MGGameDetailActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity_$j;->a:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/MGGameDetailActivity_;->V2(Lcom/join/mgps/activity/MGGameDetailActivity_;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    return-void
.end method
