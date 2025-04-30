.class Lcom/join/mgps/activity/ShareGameActivity_$b;
.super Ljava/lang/Object;
.source "ShareGameActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareGameActivity_;->W0(Lcom/join/mgps/dto/GameShareData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameShareData;

.field final synthetic b:Lcom/join/mgps/activity/ShareGameActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareGameActivity_;Lcom/join/mgps/dto/GameShareData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity_$b;->b:Lcom/join/mgps/activity/ShareGameActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareGameActivity_$b;->a:Lcom/join/mgps/dto/GameShareData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity_$b;->b:Lcom/join/mgps/activity/ShareGameActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity_$b;->a:Lcom/join/mgps/dto/GameShareData;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ShareGameActivity_;->Z0(Lcom/join/mgps/activity/ShareGameActivity_;Lcom/join/mgps/dto/GameShareData;)V

    return-void
.end method
