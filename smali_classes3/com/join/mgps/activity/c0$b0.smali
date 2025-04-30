.class Lcom/join/mgps/activity/c0$b0;
.super Ljava/lang/Object;
.source "GameDetialModleThreeActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/c0;->E0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GiftPackageDataOperationBean;

.field final synthetic b:Lcom/join/mgps/activity/c0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/c0;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/c0$b0;->b:Lcom/join/mgps/activity/c0;

    iput-object p2, p0, Lcom/join/mgps/activity/c0$b0;->a:Lcom/join/mgps/dto/GiftPackageDataOperationBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/c0$b0;->b:Lcom/join/mgps/activity/c0;

    iget-object v1, p0, Lcom/join/mgps/activity/c0$b0;->a:Lcom/join/mgps/dto/GiftPackageDataOperationBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/c0;->b1(Lcom/join/mgps/activity/c0;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    return-void
.end method
