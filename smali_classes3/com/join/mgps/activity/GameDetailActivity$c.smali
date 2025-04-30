.class Lcom/join/mgps/activity/GameDetailActivity$c;
.super Ljava/lang/Object;
.source "GameDetailActivity.java"

# interfaces
.implements Lcom/dingmouren/layoutmanagergroup/viewpager/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$c;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZI)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onPageSelected  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$c;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-static {p2, p1}, Lcom/join/mgps/activity/GameDetailActivity;->N0(Lcom/join/mgps/activity/GameDetailActivity;I)V

    return-void
.end method
