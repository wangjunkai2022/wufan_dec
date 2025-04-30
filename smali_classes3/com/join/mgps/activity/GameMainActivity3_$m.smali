.class Lcom/join/mgps/activity/GameMainActivity3_$m;
.super Ljava/lang/Object;
.source "GameMainActivity3_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivity3_;->H2(Lcom/join/mgps/dto/CloudListDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CloudListDataBean;

.field final synthetic b:Lcom/join/mgps/activity/GameMainActivity3_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity3_;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3_$m;->b:Lcom/join/mgps/activity/GameMainActivity3_;

    iput-object p2, p0, Lcom/join/mgps/activity/GameMainActivity3_$m;->a:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3_$m;->b:Lcom/join/mgps/activity/GameMainActivity3_;

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3_$m;->a:Lcom/join/mgps/dto/CloudListDataBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameMainActivity3_;->O2(Lcom/join/mgps/activity/GameMainActivity3_;Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method
