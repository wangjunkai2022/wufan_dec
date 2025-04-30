.class Lcom/join/mgps/activity/GameMainActivityv2_$a;
.super Ljava/lang/Object;
.source "GameMainActivityv2_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivityv2_;->r(Lcom/join/mgps/dto/GameMainDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameMainDataBean;

.field final synthetic b:Lcom/join/mgps/activity/GameMainActivityv2_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivityv2_;Lcom/join/mgps/dto/GameMainDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2_$a;->b:Lcom/join/mgps/activity/GameMainActivityv2_;

    iput-object p2, p0, Lcom/join/mgps/activity/GameMainActivityv2_$a;->a:Lcom/join/mgps/dto/GameMainDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2_$a;->b:Lcom/join/mgps/activity/GameMainActivityv2_;

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2_$a;->a:Lcom/join/mgps/dto/GameMainDataBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameMainActivityv2_;->s(Lcom/join/mgps/activity/GameMainActivityv2_;Lcom/join/mgps/dto/GameMainDataBean;)V

    return-void
.end method
