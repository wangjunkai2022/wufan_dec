.class Lcom/join/mgps/activity/GameMainActivity3_$g0;
.super Ljava/lang/Object;
.source "GameMainActivity3_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivity3_;->I2(Lcom/join/mgps/dto/GameMainV4DataBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameMainV4DataBean;

.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/activity/GameMainActivity3_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity3_;Lcom/join/mgps/dto/GameMainV4DataBean;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3_$g0;->c:Lcom/join/mgps/activity/GameMainActivity3_;

    iput-object p2, p0, Lcom/join/mgps/activity/GameMainActivity3_$g0;->a:Lcom/join/mgps/dto/GameMainV4DataBean;

    iput-boolean p3, p0, Lcom/join/mgps/activity/GameMainActivity3_$g0;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_$g0;->c:Lcom/join/mgps/activity/GameMainActivity3_;

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3_$g0;->a:Lcom/join/mgps/dto/GameMainV4DataBean;

    iget-boolean v2, p0, Lcom/join/mgps/activity/GameMainActivity3_$g0;->b:Z

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/GameMainActivity3_;->J2(Lcom/join/mgps/activity/GameMainActivity3_;Lcom/join/mgps/dto/GameMainV4DataBean;Z)V

    return-void
.end method
