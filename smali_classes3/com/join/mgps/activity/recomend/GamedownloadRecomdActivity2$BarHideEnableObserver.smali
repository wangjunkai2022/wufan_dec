.class Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2$BarHideEnableObserver;
.super Landroid/database/ContentObserver;
.source "GamedownloadRecomdActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarHideEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2$BarHideEnableObserver;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
