.class Lcom/join/mgps/activity/GameMainActivity3_$d;
.super Ljava/lang/Object;
.source "GameMainActivity3_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivity3_;->w2(Lcom/join/mgps/dto/GameMainV4DataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameMainV4DataBean;

.field final synthetic b:Lcom/join/mgps/activity/GameMainActivity3_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity3_;Lcom/join/mgps/dto/GameMainV4DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3_$d;->b:Lcom/join/mgps/activity/GameMainActivity3_;

    iput-object p2, p0, Lcom/join/mgps/activity/GameMainActivity3_$d;->a:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_$d;->b:Lcom/join/mgps/activity/GameMainActivity3_;

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3_$d;->a:Lcom/join/mgps/dto/GameMainV4DataBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameMainActivity3_;->f3(Lcom/join/mgps/activity/GameMainActivity3_;Lcom/join/mgps/dto/GameMainV4DataBean;)V

    return-void
.end method
