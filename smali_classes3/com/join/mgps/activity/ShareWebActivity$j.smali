.class Lcom/join/mgps/activity/ShareWebActivity$j;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity;->startDown(Lcom/join/mgps/dto/DetailResultBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/DetailResultBean;

.field final synthetic b:Lcom/join/mgps/activity/ShareWebActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$j;->b:Lcom/join/mgps/activity/ShareWebActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$j;->a:Lcom/join/mgps/dto/DetailResultBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$j;->b:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$j;->a:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ShareWebActivity;->k2(Lcom/join/mgps/dto/DetailResultBean;)V

    return-void
.end method

.method public onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    return-void
.end method
