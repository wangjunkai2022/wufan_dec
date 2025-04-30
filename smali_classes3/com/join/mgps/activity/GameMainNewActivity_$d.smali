.class Lcom/join/mgps/activity/GameMainNewActivity_$d;
.super Ljava/lang/Object;
.source "GameMainNewActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainNewActivity_;->Q(Lcom/join/mgps/dto/GameMainV3DataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameMainV3DataBean;

.field final synthetic b:Lcom/join/mgps/activity/GameMainNewActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainNewActivity_;Lcom/join/mgps/dto/GameMainV3DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity_$d;->b:Lcom/join/mgps/activity/GameMainNewActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/GameMainNewActivity_$d;->a:Lcom/join/mgps/dto/GameMainV3DataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity_$d;->b:Lcom/join/mgps/activity/GameMainNewActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity_$d;->a:Lcom/join/mgps/dto/GameMainV3DataBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameMainNewActivity_;->m0(Lcom/join/mgps/activity/GameMainNewActivity_;Lcom/join/mgps/dto/GameMainV3DataBean;)V

    return-void
.end method
